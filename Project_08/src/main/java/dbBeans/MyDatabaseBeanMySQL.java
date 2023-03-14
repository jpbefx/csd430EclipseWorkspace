package dbBeans;
/*
 *
 * James Bailey
 * Bellevue University
 * Module 8 Professor Example
 *
 */

@SuppressWarnings("serial")
public class MyDatabaseBeanMySQL implements java.io.Serializable {
	java.sql.Connection connection = null;
	java.sql.Statement statement = null;
	java.sql.ResultSet resultSet = null;

	public MyDatabaseBeanMySQL() {

	}

	public java.sql.ResultSet getResults(String SQL) throws ClassNotFoundException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/baseball_01?";
			connection = java.sql.DriverManager.getConnection(url + "user=student1&password=pass");
		} catch (java.sql.SQLException e) {

		}

		try {
			resultSet = statement.executeQuery(SQL);
		} catch (java.sql.SQLException e) {
		}
		return resultSet;
	}
	public void closeConnection() {
		try {
			statement.close();

			connection.close();
		} catch (java.sql.SQLException e) {
		}
	}
}
