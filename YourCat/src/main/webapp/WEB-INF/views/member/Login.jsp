<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<div class="main">
	<div class="container">
		<% String host = request.getContextPath(); %>
		<form action="<%=host%>/page_member/LoginStatus.jsp" method="post">
			<div class="row">
				<h2 style="text-align: center">Login with Social Media or
					Manually</h2>
				<div class="vl">
					<span class="vl-innertext">or</span>
				</div>

				<div class="col">
					<a href="#" class="fb btn"> <i class="fa fa-facebook fa-fw"></i>
						Login with Facebook
					</a> <a href="#" class="twitter btn"> <i
						class="fa fa-twitter fa-fw"></i> Login with Twitter
					</a> <a href="#" class="google btn"><i class="fa fa-google fa-fw">
					</i> Login with Google+ </a>
				</div>

				<div class="col">
					<div class="hide-md-lg">
						<p>Or sign in manually:</p>
					</div>

					<input type="text" name="username" placeholder="Username" required>
					<input type="password" name="password" placeholder="Password"
						required> <input type="submit" value="Login">
				</div>

			</div>
		</form>
	</div>

	<div class="bottom-container">
		<div class="row">
			<div class="col">
				<a href="<c:url value='/member/SignUp'/>" style="color: white"
					class="btn">Sign up</a>
			</div>

			<div class="col">
				<a href="#" style="color: white" class="btn">Forgot password?</a>
			</div>
		</div>
	</div>
</div>




