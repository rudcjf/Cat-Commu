<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<script>
$(document).ready(function() {
	var totalPrice = $("#buyCount").val()*$("#itemPrice").val();
    $("#totalPrice").val(totalPrice);
	$("#buyCount").click(function(event){
        var totalPrice = $("#buyCount").val()*$("#itemPrice").val();
        $("#totalPrice").val(totalPrice);
       });
     });

</script>

<!-- Main Start -->

	<div class="container">
		<div class="row">
			<div class="col-md-10">
				<!-- 제품상세페이지 -->
				<h3 class="entry-title">
						<span>제품 상세</span>
					</h3>
				<div class="form-group">
					<img alt="" src="<c:url value='/resources/image/${resultMap.ITEM_IMG_NAME}.jpg'/>" height="370" >
				</div>
					<form class="form-horizontal" method="post" name="buyInfo" id="buyInfo" enctype="multipart/form-data" action="<c:url value='/shop/ShopBuy'/>">
						<div class="form-group">
							<label class="control-label col-sm-3">상품명</label>
							<div class="col-md-7 col-sm-9">
								<div class="input-group">
									 <input type="text" class="form-control" name="itemName" id="itemName"  value="${resultMap.ITEM_NAME}" readonly>
								</div>
								
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3">판매가격</label>
							<div class="col-md-7 col-sm-9">
								<div class="input-group">
									 <input type="text" class="form-control" name="itemPrice" id="itemPrice"  value="${resultMap.ITEM_PRICE}" readonly>
								</div>
								
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-3">배송정보 </label>
							<div class="col-md-7 col-sm-8">
								<div class="input-group">
									 <input type="text" class="form-control" name="deliveryInfo" id="deliveryInfo" value="무료배송" readonly>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3">상품정보 </label>
							<div class="col-md-7 col-sm-8">
								<div class="input-group">
									<textarea class="form-control" rows="5" cols="50" readonly>${resultMap.ITEM_DETAIL}</textarea>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3">수량</label>
							<div class="col-md-7 col-sm-8">
								<div class="input-group">
									 <input type="number" class="form-control" id="buyCount" value="1" min="1" max="5">
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-sm-3">총 상품 금액</label>
							<div class="col-md-7 col-sm-8">
								<div class="input-group">
									<input type="text" class="form-control" name="totalPrice" id="totalPrice"  readonly>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-xs-offset-3 col-xs-10">
								<input name="Submit" type="submit" value="구매" class="btn btn-default">
								<a class="btn btn-default" href="<c:url value='/shoplist'/>">목록으로</a>
							</div>
						</div>
					</form>
			</div>
			
		</div>
	
	</div>
	<!-- Main End -->
