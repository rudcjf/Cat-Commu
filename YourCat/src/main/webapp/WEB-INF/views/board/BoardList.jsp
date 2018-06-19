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
					<th>조회수</th>
					<th>공감수</th>
				</thead>

				<tr>
					<td>10</td>
					<td><a href="<c:url value='/board/BoardRead'/>"> 우리집 고양이 &nbsp;</a> <span class="badge badge_new">new</span></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>

				<tr>
					<td>9</td>
					<td><a href="<c:url value='/board/BoardRead'/>"> 너네집 고양이 &nbsp;</a><span class="badge">12</span></td>
					<td>Ã¬ÂÂ´Ã«ÂÂÃ¬ÂÂ°</td>
					<td>2018.05.17</td>
					<td>20</td>
					<td>-1</td>
				</tr>

				<tr>
					<td>8</td>
					<td>먀옹</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>7</td>
					<td>야옹</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>6</td>
					<td>냐옹´</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>5</td>
					<td>애옹</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>4</td>
					<td>야옹</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>3</td>
					<td>귀여운고양이 </td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>2</td>
					<td>귀여운길냥이 </td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>1</td>
					<td>귀여운냥냥이</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
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
				<a class="btn btn-default" href="<c:url value='/board/BoardEdit'/>">글쓰기</a>
			</div>

		</div>
	</div>


	<!-- main end -->


	