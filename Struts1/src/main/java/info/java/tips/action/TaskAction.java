package info.java.tips.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import info.java.tips.form.TaskForm;
import info.java.tips.DataBase;

public class TaskAction extends Action {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		TaskForm task = (TaskForm) form;
		ActionForward fw = mapping.getInputForward();
		fw = mapping.findForward("success");
//		TaskForm taskX = new TaskForm();
//		taskX.setType(task.getType());
//		taskX.setName(task.getName());
//		taskX.setDescription(task.getDescription());
//		taskX.setEstimatedTime(task.getEstimatedTime());
//		taskX.setManager(task.getManager());
//		taskX.setLiability(task.getLiability());
		DataBase.saveTask(task);

		return fw;
	}
}
