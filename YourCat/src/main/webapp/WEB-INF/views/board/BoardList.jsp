<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<div class="jumbotron">
	<div class="container text-center">
		<h1>Online Community</h1>
		<p>Show Your Cats</p>
	</div>
</div>
<!-- main start -->
<div class="main container">
	<div class="div_table table-responsive">
		<table class="table table-hover">
			<thead>
				<th>글번호</th>
				<th>글제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
				<th>공감수</th>
			</thead>

			<tbody>
				<c:forEach items="${resultList}" var="resultData" varStatus="loop">
					<tr class="${(loop.index+1)%2 == 2 ? 'odd gradeX' : 'even gradeC'}">
						<td>${resultData.BOARD_SEQ}</td>
						<td><a href="<c:url value="/board/BoardRead?BOARD_SEQ=${resultData.BOARD_SEQ}" />">${resultData.BOARD_TITLE}</a></td>
						<td>${resultData.MEMBER_ID}</td>
						<td>${resultData.BOARD_DATE}</td>
						<td>${resultData.BOARD_VIEWS}</td>
						<td>${resultData.BOARD_LIKE}</td>	
					</tr>
				</c:forEach>
			</tbody>
		
		</table>
	</div>
	<div class="board_footer">
		<div class="col-sm-4"></div>
		<div class="col-sm-4">
			<ul class="pagination">
				<li><a href="#"><</a></li>
				<li class="active"><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">></a></li>
			</ul>
		</div>
		<div class="col-sm-3"></div>
		<div class="col-sm-1">
			<a class="btn btn-default" href="<c:url value='/board/insert'/>">글쓰기</a>
		</div>

	</div>
</div>


<!-- main end -->


