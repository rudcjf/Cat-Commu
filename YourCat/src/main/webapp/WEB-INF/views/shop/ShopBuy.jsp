<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<script type="text/javascript">


</script>



<!-- Main Start -->

   <div class="container">
      <div class="row">
         <div class="col-md-10">
            <!-- 결제페이지 -->
            
               <h3 class="entry-title">
                  <span>배송지 정보</span>
               </h3>
               <hr>
               <form class="form-horizontal" method="post" name="buyInfo" id="buyInfo"  action="<c:url value='/shop/insert' />">
                  <div class="form-group">
                     <label class="control-label col-sm-3">이름</label>
                     <div class="col-md-7 col-sm-9">
                        <div class="input-group">
                            <input type="text" class="form-control" name="buyName" id="buyName"  value="${resultMap2.MEMBER_NAME}" required>
                             <label for="buyName">이름을 적어 주세요</label>
                            <input type="hidden" class="form-control" name="userID" id = "userID" value= "${resultMap2.MEMBER_ID}">
                            <input type="hidden" class="form-control" name="itemSeq" id = "itemSeq" value= "${resultMap.ITEM_SEQ}">
                        </div>
                        
                     </div>
                  </div>

                  <div class="form-group">
                     <label class="control-label col-sm-3">연락처 </label>
                     <div class="col-md-7 col-sm-8">
                        <div class="input-group">
                            <input type="text" class="form-control" name="buyTel" id="buyTel" value="${resultMap2.MEMBER_TEL}" required>
                        </div>
                     </div>
                  </div>
                  <div class="form-group">
                     <label class="control-label col-sm-3">주소 </label>
                        <div class="col-md-8 col-sm-9">
                        <input type="text" class="form-control" name="buyDelivery" id="buyAddr" value="${resultMap2.MEMBER_RESIDENCE}" required>
                     </div>
                  </div>
                  <div class="form-group">
                     <label class="control-label col-sm-3">배송메모</label>
                     <div class="col-md-8 col-sm-9">
                        <input type="text" class="form-control" name="buyMemo" id="buyMemo" value="" >
                     </div>
                  </div>
               <h3 class="entry-title">
                  <span>주문상품 정보</span>
               </h3>
               <hr>
                  <div class="form-group">
                     <label class="control-label col-sm-3"><img alt="" src="<c:url value='/resources/image/${resultMap.ITEM_IMG_NAME}.jpg'/>" height="100" ></label>
                     <div class="col-md-7 col-sm-8">
                        <div class="input-group">
                           <input type="text" class="form-control" name="buyItem" id="buyItem"  value="${resultMap.ITEM_NAME}" readonly>
                        </div>
                     </div>
                  </div>
                  <div class="form-group">
                  <label class="control-label col-sm-3">수량</label>
                     <div class="col-md-7 col-sm-8">
                        <div class="input-group">
                           <input type="text" class="form-control" name="buyCount" id="buyCount" value="${paramMap.buyCount}" readonly>
                        </div>
                     </div>
                  </div>
                  
                  
                        <div class="form-group">
                     <label class="control-label col-sm-3">상품금액</label>
                     <div class="col-md-7 col-sm-8">
                        <div class="input-group">
                           <input type="text" class="form-control" name="buyPrice" id="buyPrice" value="${paramMap.totalPrice}" readonly>
                        </div>
                     </div>
                  </div>
                  <h3 class="entry-title">
                  <span>결제수단</span>
               </h3>
               <hr>
               <div class="form-group">
                     <label class="control-label col-sm-3">결제방법</label>
                     <div class="col-md-7 col-sm-8">
                        <div class="input-group">
                           <select name="buyMethod">
                             <option value="0">선택하시오</option>
                             <option value="1">신용카드</option>
                             <option value="2" >payco</option>
                             <option value="3" >실시간계좌이체</option>
                             <option value="4" >무통장입금</option>
                             <option value="5" >휴대폰결제</option>
                           </select>
                        </div>
                     </div>
                  </div>
                  <div class="form-group">
                     <div class="col-xs-offset-3 col-xs-10">
                        <input name="Submit" type="submit" id="submitBtn" value="결제" onclick="Cehckname();" class="btn btn-default">
                        
                     </div>
                  </div>
               </form>
         </div>
         
      </div>
   
   </div>
   <!-- Main End -->