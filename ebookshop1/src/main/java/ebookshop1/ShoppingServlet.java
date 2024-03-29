package ebookshop1;

import java.io.IOException;
import java.util.Vector;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class ShoppingServlet
 */
@SuppressWarnings({ "unchecked", "serial", "unused" })
public class ShoppingServlet extends HttpServlet {
	@Override
	public void init(ServletConfig conf) throws ServletException {
		super.init(conf);
	}

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doPost(req, res);
}

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession(true);
		Vector<Book> shoplist =
			(Vector<Book>)session.getAttribute("ebookshop1.cart");
		String do_this = req.getParameter("do_this");

		// if it is the first time, initialize the list of books, which in
		// real life would be stored in a database on disk
		if (do_this == null) {
			Vector<String> blist = new Vector<>();
			blist.addElement("Learn HTML5 and JavaScript for iOS. Scott Preston $39.99");
			blist.addElement("Beginning Android 4. Livinston $39.99");
			blist.addElement("Pro Spatial with SQL Server 2012. Alastair Aitchison %59.99");
			blist.addElement("Beginning Database Design. Clare Churcher $34.99");
			session.setAttribute("ebookshop.list",  blist);
			ServletContext sc = req.getSession().getServletContext();
			RequestDispatcher rd = sc.getRequestDispatcher("/");
			rd.forward(req, res);
		}
		else {
			// If it is not the first request, it can only be a checkout request
			// or a request to manipulate the list of books being ordered
			if (do_this.equals("checkout")) {
				float dollars = 0;
				int books = 0;
				for (Book aBook : shoplist) {
					float price = aBook.getPrice();
					int qty = aBook.getQuantity();
					dollars += price * qty;
					books += qty;
				}
				req.setAttribute("dollars", dollars+"");
				req.setAttribute("books",  books+"");
				ServletContext sc = req.getSession().getServletContext();
				RequestDispatcher rd = sc.getRequestDispatcher("/Checkout.jsp");
				rd.forward(req, res);
			}// if(..checkout..

			// Not a checkout request - Manipulate the list of books
			else {
				if (do_this.equals("remove")) {
					String pos = req.getParameter("position");
					shoplist.removeElementAt (Integer.parseInt(pos));
				}
				else if (do_this.equals("add")) {
					boolean found = false;
					Book aBook = getBook(req);
					if (shoplist == null) { // the shopping cart is empty
						shoplist = new Vector<>();
						shoplist.addElement(aBook);
					}
					else {  // update the #copies if the book is already there
						for (int i = 0; i < shoplist.size() && !found; i++) {
							Book b = shoplist.elementAt(i);
							if (b.getTitle().equals(aBook.getTitle())) {
								b.setQuantity(b.getQuantity() + aBook.getQuantity());
								shoplist.setElementAt(b, i);
								found = true;
							}
						} // for (i..
					if (!found) {  // if it is a new book => Add it to the shoplist
						shoplist.addElement(aBook);
					}
				}  // if (shoplist == null) .. else..
			}  // if (..add..

			// Save the updated list of books and return to the home page
			session.setAttribute("ebookshop1.cart",  shoplist);
			ServletContext sc = getServletContext();
			RequestDispatcher rd = sc.getRequestDispatcher("/");
			rd.forward(req, res);
			}  // if (..checkout..else
		}  // if (do_this..
		}//doPost

private Book getBook(HttpServletRequest req) {
	String myBook = req.getParameter("book");
	int n = myBook.indexOf('$');
	String title = myBook.substring(0, n);
	String price = myBook.substring(n+1);
	String qty = req.getParameter("qty");
	return new Book(title, Float.parseFloat(price), Integer.parseInt(qty));
  }  // getBook
}
