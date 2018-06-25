<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!-- Main Start -->

	<div class="container">
		<div class="row">
			<div class="col-md-8">
					<h1 class="entry-title">
						<span>My Info</span>
					</h1>
					<hr>
					<form class="form-horizontal" method="post" name="signup"
						id="signup" action ="<c:url value='/member/MyInfoSave'/>">
						<div class="form-group">
							<label class="control-label col-sm-3">Email ID</label>
							<div class="col-md-8 col-sm-9">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-envelope"></i></span> <input type="email"
										class="form-control" name="emailId" id="emailId"
										 value="${resultMap.MEMBER_ID}" readonly>
								</div>
								<small> Your Email Id is being used for ensuring the
									security of your account, authorization and access recovery. </small>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-3">Set Password </label>
							<div class="col-md-5 col-sm-8">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-lock"></i></span> <input type="password"
										class="form-control" name="Pw" id="Pw"
										placeholder="Choose password (5-15 chars)" value="" required required onchange="checkPw()">
								</div>
							</div><p style="color :red;" id="pwalert"></p>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3">Confirm Password </label>
							<div class="col-md-5 col-sm-8">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-lock"></i></span> <input type="password"
										class="form-control" name="CheckPw" id="CheckPw"
										placeholder="Confirm your password" value="" required onchange="comparePw()">
								</div>
							</div><p style="color :red;" id="pwalert2"></p>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3">Full Name </label>
							<div class="col-md-8 col-sm-9">
								<input type="text" class="form-control" name="name"
									id="name"  value="${resultMap.MEMBER_NAME}" required>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-3">Contact No. </label>
							<div class="col-md-5 col-sm-8">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-phone"></i></span> <input type="text"
										class="form-control" name="tel" id="tel"
										 value="${resultMap.MEMBER_TEL}" required>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-sm-3">Address </label>
							<div class="col-md-8 col-sm-9">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="glyphicon glyphicon-home"></i></span> <input type="text"
										class="form-control" name="address" id="address"
										 value="${resultMap.MEMBER_RESIDENCE}" required>
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
							<c:set var="cat" value="${resultMap.MEMBER_HASCAT}" />
								<c:choose>
									<c:when test="${cat eq 'Y'}">
       									<option value="Y" selected>예</option>
       									<option value="N">아니요</option>
   									 </c:when>
									<c:when test="${cat eq 'N'}">
       									<option value="Y" >예</option>
       									<option value="N" selected>아니요</option>
   									 </c:when>
									
								</c:choose>

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
										 value="${resultMap.MEMBER_HOBBY}">
								</div>
							</div>
						</div>

						<!-- <div class="form-group">
							<label class="control-label col-sm-3">Profile Photo </label>
							<div class="col-md-5 col-sm-8">
								<div class="input-group">
									<span class="input-group-addon" id="file_upload"><i
										class="glyphicon glyphicon-upload"></i></span> <input type="file"
										name="file_nm" id="file_nm" class="form-control upload"
										placeholder="" aria-describedby="file_upload">
								</div>
							</div>
						</div> -->


						<div class="form-group">
							<div class="col-xs-offset-3 col-xs-10">
								<input name="Submit" type="submit" value="Edit"
									class="btn btn-default">
							</div>
						</div>
					</form>
			</div>
		</div>
	</div>
	<!-- Main End -->
	
<script type="text/javascript">
function checkPw(){
	var pw = document.getElementById("Pw").value.length;
	if(pw<5 || pw>15){
		document.getElementById("pwalert").innerHTML="Choose password (5-15 chars)";
	}else{
		document.getElementById("pwalert").innerHTML="";
		
	}
}

function loginchk(){
	 var regx = /^[a-zA-Z0-9]*$/;
	 var pw = document.getElementById("Pw").value;
	var pwch = document.getElementById("CheckPw").value;
	
	 if (pw.length < 5 || pw == null || pw.length >15) {
		  document.getElementById("Pw").focus();
		  return false;
	}
	 if(pw != pwch){
		 return false;
	 }
	 document.getElementById("signup").submit();
	}

function comparePw(){
	var pw = document.getElementById("Pw").value;
	var pwch = document.getElementById("CheckPw").value;
	
	if(pw != pwch){
		document.getElementById("pwalert2").innerHTML="비밀번호가 일치하지 않습니다";
	}else{
		document.getElementById("pwalert2").innerHTML="";
		
	}
}





</script>

	
	
</script>
