<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


<div class="main container">
<table class="table table-bordered">
    <thead>
        <h3 class="entry-title">
						<span>글읽기</span>
					</h3>
    </thead>
    <tbody>
            <tr>
                <th>작성자 </th>
                <td><input type="text"  name="boardWriter" class="form-control"/ value="${resultMap.MEMBER_ID}" readonly></td>
            </tr>
            <tr>
                <th>작성일 </th>
                <td><input type="text"  name="boardDate" class="form-control"/ value="${resultMap.BOARD_DATE}" readonly></td>
            </tr>
            <tr>
                <th>제목 </th>
                <td><input type="text" placeholder="제목을 입력하세요. "  name="subject" class="form-control"/ value="${resultMap.BOARD_TITLE}" readonly></td>
            </tr>
            <tr>
                <th>내용 </th>
                <td><textarea cols="10" rows="30" placeholder="내용을 입력하세요. " name="content" class="form-control" readonly>${resultMap.BOARD_CONTENTS}</textarea></td>
            </tr>
            <tr>
                <th>첨부파일 </th>
               <!--  <td><input type="file" placeholder="파일을 선택하세요. " name="filename" class="form-control"/></td> -->
            </tr>
          <!--   <tr>
                <th>비밀번호 </th>
                <td><input type="password" placeholder="비밀번호를 입력하세요" class="form-control"/></td>
            </tr> -->
            <tr>
                <td colspan="2">
                    <!-- <input type="button" value="등록" onclick="sendData()" class="pull-right"/>
                    <input type="button" value="reset" class="pull-left"/>
                    <input type="button" value="글 목록으로... " class="pull-right" onclick="javascript:location.href='BoardList.jsp'"/> -->
                    
                    <c:set var="id" value="${paramMap.memberId}" />
					<c:choose>
					    <c:when test="${id eq resultMap.MEMBER_ID}">
                    <a class="btn btn-default" href="<c:url value="/board/BoardEdit?BOARD_SEQ=${resultMap.BOARD_SEQ}" />"> 수정 </a>
                    <a class="btn btn-default" href="<c:url value="/board/BoardDelete?BOARD_SEQ=${resultMap.BOARD_SEQ}" />"> 삭제 </a>
                    <a class="btn btn-default" href="<c:url value='/board/BoardList'/>"> 좋아요</a> 
                    <a class="btn btn-default" href="<c:url value='/board/BoardList'/>"> 목록으로</a> 
					    </c:when>
					    <c:otherwise>
                    <a class="btn btn-default" href="<c:url value='/board/BoardList'/>"> 좋아요</a> 
                    <a class="btn btn-default" href="<c:url value='/board/BoardList'/>"> 목록으로</a> 
					    
					    </c:otherwise>
					</c:choose>
                    
                </td>
            </tr>
    </tbody>
</table>
</div>
