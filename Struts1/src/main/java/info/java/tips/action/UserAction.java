package info.java.tips.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import info.java.tips.DataBase;
import info.java.tips.form.UserForm;

public class UserAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		UserForm user = (UserForm) form;
		ActionForward fw = mapping.getInputForward();
		fw = mapping.findForward("success");
		DataBase.save(user);
		return fw;
	}
}
