<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


<div class="jumbotron">
	<div class="container text-center">
		<h1>Online Store</h1>
		<p>For Your Cats</p>
	</div>
</div>

<!-- Main Start -->
<div class="main">
	<!-- 탭 -->
	<ul class="nav nav-tabs">
		<li class="active"><a data-toggle="tab" href="#menu1">사료</a></li>
		<li><a data-toggle="tab" href="#menu2">장난감</a></li>
		<li><a data-toggle="tab" href="#menu3">화장실</a></li>
		<li><a data-toggle="tab" href="#menu4">캣타워</a></li>
		<li><a data-toggle="tab" href="#menu5">하우스</a></li>
		<li><a data-toggle="tab" href="#menu6">기타</a></li>
	</ul>
	<!-- /탭 -->

	<div class="tab-content">
		<div id="menu1" class="tab-pane fade in active">
			<h3>사료</h3>
			<!-- 상품목록 -->
				<div class="container container_items">
					<div class="container">
						<div class="row">
							<c:forEach items="${resultList}" var="resultData" varStatus="loop">
							<c:choose>
     			 				 <c:when test="${resultData.ITEM_CATE_NAME == '사료'}">
							
									<div class="col-sm-4">
										<div class="panel panel-default">
											<div class="panel-heading">
												${resultData.ITEM_NAME} &nbsp; <span class="badge badge_new">new</span>
											</div>
											<div class="panel-body">
												<a href="<c:url value="/shop/ShopRead?ITEM_SEQ=${resultData.ITEM_SEQ}" />"> <img
													src="<c:url value='/resources/image/${resultData.ITEM_IMG_NAME}.jpg' />"
													class="img-responsive" style="width: 100%" alt="Image"></a>
											</div>
											<div class="panel-footer">${resultData.ITEM_PRICE}</div>
										</div>
									</div>
								
								</c:when>
							</c:choose>
							</c:forEach>
						</div>
					</div>
				</div>
			<!-- /상품목록 -->
		</div>
		
		
		
		<div id="menu2" class="tab-pane fade">
			<h3>장난감</h3>
				<!-- 상품목록 -->
				<div class="container container_items">
					<div class="container">
						<div class="row">
							<c:forEach items="${resultList}" var="resultData" varStatus="loop">
							<c:choose>
     			 				 <c:when test="${resultData.ITEM_CATE_NAME == '사료'}">
							
									<div class="col-sm-4">
										<div class="panel panel-default">
											<div class="panel-heading">
												${resultData.ITEM_NAME} &nbsp; <span class="badge badge_new">new</span>
											</div>
											<div class="panel-body">
												<a href="<c:url value="/shop/ShopRead?ITEM_SEQ=${resultData.ITEM_SEQ}" />"> <img
													src="<c:url value='/resources/image/${resultData.ITEM_IMG_NAME}.jpg' />"
													class="img-responsive" style="width: 100%" alt="Image"></a>
											</div>
											<div class="panel-footer">${resultData.ITEM_PRICE}</div>
										</div>
									</div>
								
								</c:when>
							</c:choose>
							</c:forEach>
						</div>
					</div>
				</div>
			<!-- /상품목록 -->
		</div>
		<div id="menu3" class="tab-pane fade">
			<h3>화장실</h3>
				<!-- 상품목록 -->
				<div class="container container_items">
					<div class="container">
						<div class="row">
							<c:forEach items="${resultList}" var="resultData" varStatus="loop">
							<c:choose>
     			 				 <c:when test="${resultData.ITEM_CATE_NAME == '사료'}">
							
									<div class="col-sm-4">
										<div class="panel panel-default">
											<div class="panel-heading">
												${resultData.ITEM_NAME} &nbsp; <span class="badge badge_new">new</span>
											</div>
											<div class="panel-body">
												<a href="<c:url value="/shop/ShopRead?ITEM_SEQ=${resultData.ITEM_SEQ}" />"> <img
													src="<c:url value='/resources/image/${resultData.ITEM_IMG_NAME}.jpg' />"
													class="img-responsive" style="width: 100%" alt="Image"></a>
											</div>
											<div class="panel-footer">${resultData.ITEM_PRICE}</div>
										</div>
									</div>
								
								</c:when>
							</c:choose>
							</c:forEach>
						</div>
					</div>
				</div>
			<!-- /상품목록 -->
		</div>
		<div id="menu4" class="tab-pane fade">
			<h3>캣타워</h3>
				<!-- 상품목록 -->
				<div class="container container_items">
					<div class="container">
						<div class="row">
							<c:forEach items="${resultList}" var="resultData" varStatus="loop">
							<c:choose>
     			 				 <c:when test="${resultData.ITEM_CATE_NAME == '사료'}">
							
									<div class="col-sm-4">
										<div class="panel panel-default">
											<div class="panel-heading">
												${resultData.ITEM_NAME} &nbsp; <span class="badge badge_new">new</span>
											</div>
											<div class="panel-body">
												<a href="<c:url value="/shop/ShopRead?ITEM_SEQ=${resultData.ITEM_SEQ}" />"> <img
													src="<c:url value='/resources/image/${resultData.ITEM_IMG_NAME}.jpg' />"
													class="img-responsive" style="width: 100%" alt="Image"></a>
											</div>
											<div class="panel-footer">${resultData.ITEM_PRICE}</div>
										</div>
									</div>
								
								</c:when>
							</c:choose>
							</c:forEach>
						</div>
					</div>
				</div>
			<!-- /상품목록 -->
		</div>
		<div id="menu5" class="tab-pane fade">
			<h3>하우스</h3>
				<!-- 상품목록 -->
				<div class="container container_items">
					<div class="container">
						<div class="row">
							<c:forEach items="${resultList}" var="resultData" varStatus="loop">
							<c:choose>
     			 				 <c:when test="${resultData.ITEM_CATE_NAME == '사료'}">
							
									<div class="col-sm-4">
										<div class="panel panel-default">
											<div class="panel-heading">
												${resultData.ITEM_NAME} &nbsp; <span class="badge badge_new">new</span>
											</div>
											<div class="panel-body">
												<a href="<c:url value="/shop/ShopRead?ITEM_SEQ=${resultData.ITEM_SEQ}" />"> <img
													src="<c:url value='/resources/image/${resultData.ITEM_IMG_NAME}.jpg' />"
													class="img-responsive" style="width: 100%" alt="Image"></a>
											</div>
											<div class="panel-footer">${resultData.ITEM_PRICE}</div>
										</div>
									</div>
								
								</c:when>
							</c:choose>
							</c:forEach>
						</div>
					</div>
				</div>
			<!-- /상품목록 -->
		</div>
		<div id="menu6" class="tab-pane fade">
			<h3>기타</h3>
				<!-- 상품목록 -->
				<div class="container container_items">
					<div class="container">
						<div class="row">
							<c:forEach items="${resultList}" var="resultData" varStatus="loop">
							<c:choose>
     			 				 <c:when test="${resultData.ITEM_CATE_NAME == '사료'}">
							
									<div class="col-sm-4">
										<div class="panel panel-default">
											<div class="panel-heading">
												${resultData.ITEM_NAME} &nbsp; <span class="badge badge_new">new</span>
											</div>
											<div class="panel-body">
												<a href="<c:url value="/shop/ShopRead?ITEM_SEQ=${resultData.ITEM_SEQ}" />"> <img
													src="<c:url value='/resources/image/${resultData.ITEM_IMG_NAME}.jpg' />"
													class="img-responsive" style="width: 100%" alt="Image"></a>
											</div>
											<div class="panel-footer">${resultData.ITEM_PRICE}</div>
										</div>
									</div>
								
								</c:when>
							</c:choose>
							</c:forEach>
						</div>
					</div>
				</div>
			<!-- /상품목록 -->
		</div>
	</div>




	<!-- 페이지네이션 -->
	<div class="container text-center">
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

</div>

<!-- Main End -->

