<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Bootstrap Core CSS -->
	<link type="text/css" href="../resources/css/bootstrap.min.css" rel="stylesheet" />

<title>SignUpStatus</title>
</head>
<body>
<form role="form" method="POST" action="<c:url value='/member/SignUpList' />">
    <div id="wrapper">
       <!-- /.row -->
       <div class="row">
           <div class="col-lg-12">
               <div class="panel panel-default">
                   <div class="panel-heading">
                       SignUp Status
                   </div>
                   <div class="panel-body">
                   <!-- /.row (nested) -->
                   <fieldset>
                       <div class="form-group">
                           Email ID : ${resultMap.emailid}
                       </div>
                       <div class="form-group">
                           Password : ${resultMap.password}
                       </div>
                       <div class="form-group">
                           CPassword : ${resultMap.cpassword}
                       </div>
                       <div class="form-group">
                           Name : ${resultMap.name}
                       </div>
                       <div class="form-group">
                           contactnum : ${resultMap.contactnum}
                       </div>
                       
                       <div class="form-group">
                           residence : ${resultMap.residence}
                       </div>
                        <div class="form-group">
                           hobby : ${resultMap.hobby}
                       </div>
                   </fieldset>
                   <button type="submit" class="btn btn-default">Add Button</button>
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
</form>
</body>
</html>