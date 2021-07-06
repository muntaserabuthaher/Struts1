package info.java.tips.form;
import org.apache.struts.action.ActionForm;

public class LogINForm extends ActionForm{
	
	public String email,password;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
