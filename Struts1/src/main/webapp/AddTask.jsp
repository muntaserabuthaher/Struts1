<%@taglib uri="http://struts.apache.org/tags-html" prefix="h"%>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/select.css" rel="stylesheet">

<%@include file='Nav.jsp'%>
<%@page import='info.java.tips.form.TaskForm'%>
<%@page import='info.java.tips.form.Users'%>
<%@page import='info.java.tips.DataBase'%>
<%@page import='java.sql.*'%>
<%@page import="java.util.*"%>

<%
List<Users> list = DataBase.getAllRecords();
%>

<div class="container">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">Add Task</h3>
		</div>


		<div class="panel-body">


			<h:form action="task.do">
		     Type:<br>
				<h:select name="TaskForm" property="type" styleClass="selectX">
					<h:option value="Software">Software</h:option>
					<h:option value="Hardware">Hardware</h:option>
				</h:select>
				<br>
		      Name:<br>
				<h:text name="TaskForm" property="name" styleClass="form-control" />
				<br>
			 Description:<br>
				<h:text name="TaskForm" property="description" styleClass="form-control" />
				<br>
			  EstimatedTime:<br>
				<h:text name="TaskForm" property="estimatedTime"
					styleClass="form-control" />
				<br>
			 Manager:<br>
				<h:select name="TaskForm" property="manager" styleClass="selectX">
					<%
					for (Users u : list) {
					%>
					<h:option value="<%=u.getName()%>"><%=u.getName()%></h:option>
					<%
					}
					%>
				</h:select>
				<br>
			 Liability:<br>
				<h:select name="TaskForm" property="liability" styleClass="selectX">
					<%
					for (Users u : list) {
					%>
					<h:option value="<%=u.getName()%>"><%=u.getName()%></h:option>
					<%
					}
					%>
				</h:select>



				<h:submit styleClass="btn btn-primary btn-lg pull-right"
					value="add Task" />
				<hr />
				<h:errors />
			</h:form>





			<!--  <form action="addTaskDone.jsp" method="post">  -->

		</div>
	</div>
</div>

