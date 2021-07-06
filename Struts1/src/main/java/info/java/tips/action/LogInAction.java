package info.java.tips.action;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

import info.java.tips.form.LogINForm;
import info.java.tips.DataBase;

public class LogInAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		LogINForm login = (LogINForm) form;
		ActionForward fw = mapping.getInputForward();
	

		HttpSession session = request.getSession();
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String email = login.getEmail();
		String password = login.getPassword();
		
		try {
			
			Connection conn = (Connection) DataBase.getConnection();
			Statement stm = conn.createStatement();
			ResultSet rs = (ResultSet) stm.executeQuery("SELECT * FROM `users` WHERE email='" + email + "' and password= '" + password + "'");
			if (rs.next()) {
				fw = mapping.findForward("success");
				session.setAttribute("authorized", "true");
				String position = rs.getString("position");
				session.setAttribute("position", position);
				session.setAttribute("nameUser", rs.getString("name"));
				response.sendRedirect("Home.jsp");
			} else {
				fw = mapping.findForward("failure");
		    	ActionErrors errs = new ActionErrors();
		    	errs.add("",new ActionMessage("hello.msg.err"));
		    	saveErrors(request,errs);
			}
			conn.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());

		}
		return fw;
	}
}
