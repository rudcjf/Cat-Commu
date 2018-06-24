<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>







	<!-- Main Start -->

	<div class="container">
		<div class="row">
			<div class="col-md-8">
					<h1 class="entry-title">
						<span>Sign Up</span>
					</h1>
					<hr>
					<form class="form-horizontal" method="post" name="signup"
						id="signup"  action="<c:url value='/member/SignUp' />">
						<div class="form-group">
							<label class="control-label col-sm-3">Email ID <span
								class="text-danger">*</span></label>
							<div class="col-md-8 col-sm-9">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-envelope"></i></span> <input type="email"
										class="form-control" name="emilId" id="emilId"
										placeholder="Enter your Email ID" value="" required>
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
										placeholder="Choose password (5-15 chars)" value="" required onchange="checkPw()">
								
							</div></div><p style="color :red;" id="pwalert"></p>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3">Confirm Password <span
								class="text-danger">*</span></label>
							<div class="col-md-5 col-sm-8">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-lock"></i></span> <input type="password"
										class="form-control" name="cpassword" id="cpassword"
										placeholder="Confirm your password" value="" required onchange="comparePw()">
								</div>
							</div><p style="color :red;" id="pwalert2"></p>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3">Full Name <span
								class="text-danger">*</span></label>
							<div class="col-md-8 col-sm-9">
								<input type="text" class="form-control" name="name"
									id="name"  value="" required>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-3">Contact No. <span
								class="text-danger">*</span></label>
							<div class="col-md-5 col-sm-8">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-phone"></i></span> <input type="text"
										class="form-control" name="tel" id="tel"
										 value="" required>
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
										 value="" required>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-sm-3">고양이 유무 </label>
							<div class="col-md-5 col-sm-8">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-home"></i></span> 
										<select name="hasCat" id="hasCat">
											<option value="Y">예</option>
											<option value="N">아니요</option>
										</select>
										
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
									class="btn btn-default" onclick="loginchk()">
							</div>
						</div>
					</form>
			</div>
		</div>
	</div>
	<!-- Main End -->


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


function checkPw(){
	var pw = document.getElementById("password").value.length;
	if(pw<5 || pw>15){
		document.getElementById("pwalert").innerHTML="Choose password (5-15 chars)";
	}else{
		document.getElementById("pwalert").innerHTML="";
		
	}
}

function loginchk(){
	 var regx = /^[a-zA-Z0-9]*$/;
	 var pw = document.getElementById("password").value.length;
	var pwch = document.getElementById("cpassword").value;
	
	 if (pw < 5 || pw == null || pw >15) {
		  document.getElementById("password").focus();
		  return false;
	}
	 if(pw != pwch){
		 return false;
	 }
	 document.getElementById("signup").submit();
	}

function comparePw(){
	var pw = document.getElementById("password").value;
	var pwch = document.getElementById("cpassword").value;
	
	if(pw != pwch){
		document.getElementById("pwalert2").innerHTML="비밀번호가 일치하지 않습니다";
	}else{
		document.getElementById("pwalert2").innerHTML="";
		
	}
}





</script>


