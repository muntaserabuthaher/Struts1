<%@taglib uri="http://struts.apache.org/tags-html" prefix="h"%>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/select.css" rel="stylesheet">

<%@include file ='Nav.jsp' %>




<div class="container">
<div class="panel panel-primary">
  <div class="panel-heading">
    <h3 class="panel-title"> Add User   </h3>
  </div>
  
  
  <div class="panel-body">

<h:form action="user.do">

      Name:<br>
				<h:text name="UserForm" property="name" styleClass="form-control" />
				<br>

  
  Email:<<br>
				<h:text name="UserForm" property="email" styleClass="form-control" />
				<br>
  
  Password:<br>
  <h:password name="UserForm" property="password" styleClass="form-control" /> 
  
  Gender:<br>
<h:radio name="UserForm" property="gender" value="male" /> Male
<h:radio name="UserForm" property="gender" value="female" /> Female

 <br> <br>
  
  location:<br>
			<h:select name="UserForm" property="location" styleClass="selectX">
				<h:option value="Qalqilya">Qalqilya</h:option>
				<h:option value="Nablus">Nablus</h:option>
				<h:option value="Ramallah">Ramallah</h:option>
				<h:option value="Tulkarm">Tulkarm</h:option>
				<h:option value="Jenin">Jenin</h:option>
				<h:option value="Hebron">Hebron</h:option>
			</h:select>
			<br>
  
 
  
    Position:<br>
           <h:select name="UserForm" property="position" styleClass="selectX">
				<h:option value="Developer">Developer</h:option>
				<h:option value="Manager">Manager</h:option>
			</h:select>
			<br><br>

 				<h:submit styleClass="btn btn-primary btn-lg pull-right"
					value="add User" />
             	<hr />
				<h:errors />

	
			</h:form>


  </div>
</div>
</div>








		
