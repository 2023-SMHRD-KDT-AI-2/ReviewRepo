<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Shoppers &mdash; Colorlib e-Commerce Template</title>
<meta charset="utf-8">
</head>
<body>

	<div class="site-wrap">
	
		<%@ include file="header.jsp" %>
		<div class="bg-light py-3">
			<div class="container">
				<div class="row">
					<div class="col-md-12 mb-0">
						<a href="index.jsp">Home</a> <span class="mx-2 mb-0">/</span> <a
							href="cart.jsp">Cart</a> <span class="mx-2 mb-0">/</span> <strong
							class="text-black">Checkout</strong>
					</div>
				</div>
			</div>
		</div>

		<div class="site-section">
			<div class="container">
				<div class="row mb-5">
					<div class="col-md-12">
						<div class="border p-4 rounded" role="alert">
							Returning customer? <a href="#">Click here</a> to login
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 mb-5 mb-md-0">
						<h2 class="h3 mb-3 text-black">배송지 주소</h2>
						<div class="p-3 p-lg-5 border">
							<div class="form-group">
								<label for="c_country" class="text-black">아이디<span
									class="text-danger">*</span></label> <input type="text"
									class="form-control" id="c_name" name="c_name"
									placeholder="아이디를 입력해주세요">
							</div>
							<div class="form-group row">
								<div class="col-md-6">
									<label for="c_fname" class="text-black">성<span
										class="text-danger">*</span></label> <input type="text"
										class="form-control" id="c_fname" name="c_fname">
								</div>
								<div class="col-md-6">
									<label for="c_lname" class="text-black">이름<span
										class="text-danger">*</span></label> <input type="text"
										class="form-control" id="c_lname" name="c_lname">
								</div>
							</div>

							<div class="form-group row">
								<div class="col-md-12">
									<label for="c_companyname" class="text-black">주소찾기</label>

									<p>
										<input type="text" id="zip-code" placeholder="우편번호" readonly>
										<input type="button" onclick="execDaumPostcode()"
											value="우편번호 찾기"> <input type="button"
											onclick="execDaumPostcodeReset()" value="초기화">
									<p></p>
									<div class="form-group">
										<input type="text" class="form-control" id="address-1"
											placeholder="도로명주소">
									</div>
									<p></p>
									<div class="form-group">
										<input type="text" class="form-control" id="address-1-1"
											placeholder="지번주소">
									</div>
									<p></p>
									<div class="form-group">
										<input type="text" class="form-control" id="address-2"
											placeholder="상세주소">
									</div>
									</p>
									<script
										src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
									<script>
				      function execDaumPostcode() {
				        new daum.Postcode( {
				          oncomplete: function( data ) {
				            document.getElementById( 'zip-code' ).value = data.zonecode;
				            document.getElementById( 'address-1' ).value = data.address;
				            document.getElementById( 'address-1-1' ).value = data.jibunAddress;
				            document.getElementById( 'address-2' ).focus();
				          }
				        } ).open();
				      }
				      function execDaumPostcodeReset() {
				        document.getElementById( 'zip-code' ).value = null;
				        document.getElementById( 'address-1' ).value = null;
				        document.getElementById( 'address-1-1' ).value = null;
				        document.getElementById( 'address-2' ).value = null;
				      }
				    </script>
								</div>
							</div>

							<div class="form-group row">
								<div class="col-md-6">
									<label for="c_eamil_address" class="text-black">이메일 주소<span
										class="text-danger"></span></label> <input type="text"
										class="form-control" id="c_email_address"
										name="c_email_address">
								</div>
								<div class="col-md-6">
									<label for="c_email_address2" class="text-black"><span
										class="text-danger">*</span></label> <input type="text"
										class="form-control" id="c_email_address"
										name="c_email_address2" placeholder="이메일을 입력해주세요">
								</div>
							</div>

							<div class="form-group row mb-5">
								<div class="col-md-12">
									<label for="c_phone_number" class="text-black">핸드폰 번호<span
										class="text-danger">*</span></label> <input type="text"
										class="form-control" id="c_email_address"
										name="c_email_address">
								</div>

							</div>




							<div class="form-group">
								<label for="c_ship_different_address" class="text-black"
									data-toggle="collapse" href="#ship_different_address"
									role="button" aria-expanded="false"
									aria-controls="ship_different_address"><input
									type="checkbox" value="1" id="c_ship_different_address">다른
									주소를 추가로 입력하시겠습니까?</label>
								<div class="collapse" id="ship_different_address">
									<div class="py-2">

										<div class="form-group">
											<label for="c_country" class="text-black">아이디<span
												class="text-danger">*</span></label> <input type="text"
												class="form-control" id="c_name" name="c_name"
												placeholder="아이디를 입력해주세요">
										</div>
										<div class="form-group row">
											<div class="col-md-6">
												<label for="c_fname" class="text-black">성<span
													class="text-danger">*</span></label> <input type="text"
													class="form-control" id="c_fname" name="c_fname">
											</div>
											<div class="col-md-6">
												<label for="c_lname" class="text-black">이름<span
													class="text-danger">*</span></label> <input type="text"
													class="form-control" id="c_lname" name="c_lname">
											</div>
										</div>

										<div class="form-group row">
											<div class="col-md-12">
												<label for="c_companyname" class="text-black">주소찾기</label>

												<p>
													<input type="text" id="zip-code" placeholder="우편번호"
														readonly> <input type="button"
														onclick="execDaumPostcode()" value="우편번호 찾기"> <input
														type="button" onclick="execDaumPostcodeReset()"
														value="초기화">
												<p></p>
												<div class="form-group">
													<input type="text" class="form-control" id="address-1"
														placeholder="도로명주소">
												</div>
												<p></p>
												<div class="form-group">
													<input type="text" class="form-control" id="address-1-1"
														placeholder="지번주소">
												</div>
												<p></p>
												<div class="form-group">
													<input type="text" class="form-control" id="address-2"
														placeholder="상세주소">
												</div>
												</p>
												<script
													src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
												<script>
				      function execDaumPostcode() {
				        new daum.Postcode( {
				          oncomplete: function( data ) {
				            document.getElementById( 'zip-code' ).value = data.zonecode;
				            document.getElementById( 'address-1' ).value = data.address;
				            document.getElementById( 'address-1-1' ).value = data.jibunAddress;
				            document.getElementById( 'address-2' ).focus();
				          }
				        } ).open();
				      }
				      function execDaumPostcodeReset() {
				        document.getElementById( 'zip-code' ).value = null;
				        document.getElementById( 'address-1' ).value = null;
				        document.getElementById( 'address-1-1' ).value = null;
				        document.getElementById( 'address-2' ).value = null;
				      }
				    </script>
											</div>
										</div>

										<div class="form-group row">
											<div class="col-md-6">
												<label for="c_eamil_address" class="text-black">이메일
													주소<span class="text-danger"></span>
												</label> <input type="text" class="form-control"
													id="c_email_address" name="c_email_address">
											</div>
											<div class="col-md-6">
												<label for="c_email_address2" class="text-black"><span
													class="text-danger">*</span></label> <input type="text"
													class="form-control" id="c_email_address"
													name="c_email_address2" placeholder="이메일을 입력해주세요">
											</div>
										</div>

										<div class="form-group row mb-5">
											<div class="col-md-12">
												<label for="c_phone_number" class="text-black">핸드폰
													번호<span class="text-danger">*</span>
												</label> <input type="text" class="form-control"
													id="c_email_address" name="c_email_address">
											</div>

										</div>

									</div>

								</div>
							</div>

							<div class="form-group">
								<label for="c_order_notes" class="text-black">배송시 주문사항을
									적어주세요</label>
								<textarea name="c_order_notes" id="c_order_notes" cols="30"
									rows="5" class="form-control" placeholder="배송시 적으실 주문사항"></textarea>
							</div>

						</div>
					</div>
					<div class="col-md-6">

						<div class="row mb-5">
							<div class="col-md-12">
								<h2 class="h3 mb-3 text-black">쿠폰 입력</h2>
								<div class="p-3 p-lg-5 border">

									<label for="c_code" class="text-black mb-3">쿠폰 입력해주세요?</label>
									<div class="input-group w-75">
										<input type="text" class="form-control" id="c_code"
											placeholder="Coupon Code" aria-label="Coupon Code"
											aria-describedby="button-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary btn-sm" type="button"
												id="button-addon2">Apply</button>
										</div>
									</div>

								</div>
							</div>
						</div>

						<div class="row mb-5">
							<div class="col-md-12">
								<h2 class="h3 mb-3 text-black">주문목록</h2>
								<div class="p-3 p-lg-5 border">
									<table class="table site-block-order-table mb-5">
										<thead>
											<th>상품</th>
											<th>가격</th>
										</thead>
										<tbody>
											<tr>
												<td>Top Up T-Shirt <strong class="mx-2">x</strong> 1
												</td>
												<td>$250.00</td>
											</tr>
											<tr>
												<td>Polo Shirt <strong class="mx-2">x</strong> 1
												</td>
												<td>$100.00</td>
											</tr>
											<tr>
												<td class="text-black font-weight-bold"><strong>Cart
														Subtotal</strong></td>
												<td class="text-black">$350.00</td>
											</tr>
											<tr>
												<td class="text-black font-weight-bold"><strong>Order
														Total</strong></td>
												<td class="text-black font-weight-bold"><strong>$350.00</strong></td>
											</tr>
										</tbody>
									</table>
									<div class="form-group">
										<button class="btn btn-primary btn-lg py-3 btn-block"
											onclick="requestPay()">주문하기</button>
										<script>
function requestPay() {
  IMP.init('imp05843826'); //iamport 대신 자신의 "가맹점 식별코드"를 사용
  IMP.request_pay({
    pg: "inicis",
    pay_method: "card",
    merchant_uid : 'merchant_'+new Date().getTime(),
    name : '결제테스트',
    amount : 14000,
    buyer_email : 'iamport@siot.do',
    buyer_name : '구매자',
    buyer_tel : '010-1234-5678',
    buyer_addr : '서울특별시 강남구 삼성동',
    buyer_postcode : '123-456'
  }, function (rsp) { // callback
      if (rsp.success) {
        ...,
        // 결제 성공 시 로직,
        console.log('결제가 성공했습니다.');
        ...
      } else {
        ...,
        // 결제 실패 시 로직,
        console.log('결제가 실패했습니다.');
        ...
      }
  });
}
</script>
									</div>

								</div>
							</div>
						</div>

					</div>
				</div>
				<!-- </form> -->
			</div>
		</div>

		<%@ include file="footer.jsp" %>
		
	</div>

</body>
</html>