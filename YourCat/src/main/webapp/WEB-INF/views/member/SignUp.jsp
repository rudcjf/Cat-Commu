<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


<script>

$(function(){

	var CheckEmail = RegExp(/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/);

	$(".btn").click(function(){

		if($("#emailid").val() < 10){
			alert("ìì´ë 10ì ì´ì ìë ¥ ë°ë");
		}

		if($("#emailid").value.length < 10){
			alert("ìì´ë 10ì ì´ì ìë ¥ ë°ë");
		}


		if(!CheckEmail.test($("#emailid").val())){
			alert("ìì´ë íìì ë§ê² ìë ¥ ë°ë");
		}


	});
});

</script>




	<!-- Main Start -->

	<div class="container">
		<div class="row">
			<div class="col-md-8">
					<h1 class="entry-title">
						<span>Sign Up</span>
					</h1>
					<hr>
					<form class="form-horizontal" method="post" name="signup"
						id="signup" enctype="multipart/form-data" action="<c:url value='/member/SignUp' />">
						<div class="form-group">
							<label class="control-label col-sm-3">Email ID <span
								class="text-danger">*</span></label>
							<div class="col-md-8 col-sm-9">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-envelope"></i></span> <input type="email"
										class="form-control" name="emailid" id="emailid"
										placeholder="Enter your Email ID" value="">
								</div>
								<small> Your Email Id is being used for ensuring the
									security of your account, authorization and access recovery. </small>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-3">Set Password <span
								class="text-danger">*</span></label>
							<div class="col-md-5 col-sm-8">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-lock"></i></span> <input type="password"
										class="form-control" name="password" id="password"
										placeholder="Choose password (5-15 chars)" value="">
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3">Confirm Password <span
								class="text-danger">*</span></label>
							<div class="col-md-5 col-sm-8">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-lock"></i></span> <input type="password"
										class="form-control" name="cpassword" id="cpassword"
										placeholder="Confirm your password" value="">
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3">Full Name <span
								class="text-danger">*</span></label>
							<div class="col-md-8 col-sm-9">
								<input type="text" class="form-control" name="mem_name"
									id="mem_name"  value="">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-3">Contact No. <span
								class="text-danger">*</span></label>
							<div class="col-md-5 col-sm-8">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-phone"></i></span> <input type="text"
										class="form-control" name="contactnum" id="contactnum"
										 value="">
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-sm-3">Address <span
								class="text-danger">*</span></label>
							<div class="col-md-5 col-sm-8">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-home"></i></span> <input type="text"
										class="form-control" name="address" id="address"
										 value="">
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-sm-3">고양이 유무 </label>
							<div class="col-md-5 col-sm-8">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-home"></i></span> <input type="text"
										class="form-control" name="hasCat" id="hasCat"
										 value="">
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-sm-3">Hobby</label>
							<div class="col-md-5 col-sm-8">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-home"></i></span> <input type="text"
										class="form-control" name="hobby" id="hobby"
										 value="">
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="col-xs-offset-3 col-xs-10">
								<input name="Submit" type="submit" value="Sign Up" 
									class="btn btn-default">
							</div>
						</div>
					</form>
			</div>
		</div>
	</div>
	<!-- Main End -->





