import jakarta.annotation.ManagedBean;

/**
 * Managed bean.
 * @author w3spoint
 */
@ManagedBean(value="test")
public class Test {
	private String password;
 
	public String getPassword() {
		return password;
	}
 
	public void setPassword(String password) {
		this.password = password;
	}
 
}