<link href="css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="css/logIn.css" rel="stylesheet" id="bootstrap-css">
<%@taglib uri="http://struts.apache.org/tags-html" prefix="h"%>
<br>
<br>
<div class="container">
	<div class="card card-container">
		<img id="profile-img " class="profile-img-card"
			src="image/arkLogo.png" />
		<p id="profile-name" class="profile-name-card"></p>
		<h:form action="login.do" styleClass="form-signin">
		     Email:<br>
			<h:text name="logINForm" property="email" styleClass="form-control" />
			Passwoed:<br>
			<h:password name="logINForm" property="password"
				styleClass="form-control" />
			<h:submit styleClass="btn btn-lg btn-primary btn-block btn-signin"
				value="Log In" />
			<hr />
			<center>
				<h:errors />
			</center>
			
		</h:form>

	</div>
</div>


