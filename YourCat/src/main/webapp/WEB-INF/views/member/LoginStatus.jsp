<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%-- <%@ page import = "javabean.MemberBean" %> --%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Bootstrap Core CSS -->
<link type="text/css" href="../css/bootstrap.min.css"
	rel="stylesheet" />

<title>Login Status</title>
</head>
<body>
	<div id="wrapper">
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Login Status</div>
					<div class="panel-body">
						<!-- /.row (nested) -->

						<fieldset>
						<div class="form-group">
							<%
								String userID = request.getParameter("username");
								String password = request.getParameter("password");
								/* MemberBean mb = new MemberBean(); */
								boolean rightAccount = true/* mb.getRightAccount(userID, password) */;
								/* 오류 없애려고 주석처리함 */
								if(rightAccount){
									session.setAttribute("userID", userID);
									session.setAttribute("password", password);
								} else { %>
								
								<% } %>
								Right Account : <%=rightAccount %>
							</div>
							<div class="form-group">
								Member ID :<%=session.getAttribute("userID") %>
								
								
							</div>
							<div class="form-group">
								Password :<%=session.getAttribute("password") %>
								
								
							</div>
							
							<% String host = request.getContextPath(); %>
							<a href="<%=host %>" class="btn btn-success" role="button">Home</a>
							
						</fieldset>
						<!-- /.row (nested) -->
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /#wrapper -->

</body>
</html>