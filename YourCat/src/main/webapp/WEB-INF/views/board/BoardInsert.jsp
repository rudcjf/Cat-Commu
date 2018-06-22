<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<div class="main container">
	<form action="<c:url value='/board/BoardInsert' />" method="post" encType="multiplart/form-data">
	<table class="table table-bordered">
		<thead>
		<h3 class="entry-title">
						<span>글쓰기</span>
					</h3>
		</thead>
		<tbody>
				<tr>
					<th>제목</th>
					<td><input type="text" placeholder="제목을 입력하세요. "
						name="boardTitle" class="form-control" value=""/></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea cols="10" rows="30" placeholder="내용을 입력하세요. "
							name="boardContents" class="form-control"></textarea></td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td><input type="file" placeholder="파일을 선택하세요. "
						name="filename" class="form-control" /></td>
				</tr>
				<!-- <tr>
					<th>비밀번호</th>
					<td><input type="password" placeholder="비밀번호를 입력하세요"
						class="form-control" /></td>
				</tr> -->
				<tr>
					<td colspan="2">
						<!-- <input type="button" value="등록" onclick="sendData()" class="pull-right"/>
                    <input type="button" value="reset" class="pull-left"/>
                    <input type="button" value="글 목록으로... " class="pull-right" onclick="javascript:location.href='BoardList.jsp'"/> -->
						<!-- <a class="btn btn-default" onclick="sendData()"> -->
						<button type="submit" class="btn btn-default" >저장 </button>
						<input type="reset" class="btn btn-default" value="reset">
						<a class="btn btn-default" href="<c:url value='/board/BoardList'/>">
							목록으로</a>
					</td>
				</tr>
		</tbody>
	</table>
	<input type="hidden" name ="memberId" value="${memberId}">
			</form>
</div>
