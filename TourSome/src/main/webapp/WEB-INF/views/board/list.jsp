<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- c태그 쓸때 선언 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 날짜값 변환 태그 -->
<!DOCTYPE html>
<html lang="ko">
    <head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - SB Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="/resources/css/styles_board.css" rel="stylesheet" />
        <link rel="stylesheet" href="/resources/fonts/icomoon/style.css">
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        
        <style>
        	.site-nav{
        	background-color: black;}
        </style>
    </head>
    <body class="sb-nav-fixed">
    
    <div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close">
				<span class="icofont-close js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>
        
        <nav class="site-nav mt-3">


		<div class="container">

			<div class="site-navigation">
				<div class="row">
					<div class="col-6 col-lg-3">

						<a href="/main.jsp" class="logo m-0 float-start"><div
								style="height: inherit;">
								<img src="/resources/img/Group 42.png" alt="" class="logoimg"
									width="100%" style="float: left; height: 100%;">
							</div></a>
					</div>
					<div
						class="col-lg-6 d-none d-lg-inline-block text-center nav-center-wrap">
						<ul class="js-clone-nav  text-center site-menu p-0 m-0">
							<li class="active"><a>Free Board</a></li>
							<li><a href="/board/list">Community</a></li>
							<li><a>Q&AMP;A</a></li>

						</ul>
					</div>
					<div class="col-6 col-lg-3 text-lg-end">
						<ul class="js-clone-nav d-none d-lg-inline-block text-end site-menu ">
							<c:if test="${session.name != null}">
								<li class="cta-button" style="margin-top:-28px; padding:5px; font-size: 15px;font-family: 'ghanachoco';color: white;">
									<c:out value="${session.name}" /> Welcome!
									<form class="btn_resize" action="/membership/logout" method="post" role="form" style=" margin-bottom: 10px;">
										<input class="main_btn logout" class="logout" type="submit" value="Logout">
									</form>
									<form class="btn_resize" action="/membership/modify"  style="margin-bottom: 10px;">
										<input class="main_btn" type="submit" value="Edit">
									</form>
									<form class="btn_resize" action="/membership/remove_account" method="post"
										role="form" id="remove_acount"  style="margin-bottom: 10px;">
										<input type="hidden" value="${session.id}" name="id">
										<input class="main_btn remove_acount" type="submit" value="Withdrawal">
									</form>
								</li>
							</c:if>
							<c:if test="${session.name == '' || session.name == null}">
								<li class="cta-button1">
									<form action="/membership/login">
										<input class="main_btn" type="submit" value="Login">
									</form>
								</li>
							</c:if>
						</ul>

						<a href="#"
							class="burger ms-auto float-end site-menu-toggle js-menu-toggle d-inline-block d-lg-none light"
							data-toggle="collapse" data-target="#main-navbar"> <span></span>
						</a>
					</div>
				</div>
			</div>

		</div>
	</nav>
        
        <div id="layoutSidenav">
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
						
						<%@include file="../includes/header.jsp"%>
							<div class="row">
							   <div class="col-lg-10">
							      <h1 class="page-header">공지사항</h1>
							   </div>
							   <!-- /.col-lg-12 -->
							</div>
							<!-- /.row -->
							<div class="row">
							   <div class="col-lg-10">
							      <div class="panel panel-default">
							         <div class="panel-heading">
							            게시글 목록
							            <c:if test="${session.id != null }">
							        	    <button id="regBtn" type="button" class="btn btn-xs pull-right">
							               게시글 등록</button>
							            </c:if>
							         </div>
							         <!-- /.panel-heading -->
							         <div class="panel-body">
							            <table width="80%"
							               class="table table-striped table-bordered table-hover"
							               id="dataTables-example">
							               <thead>
							                  <tr>
							                     <th>번호</th>
							                     <th>제목</th>
							                     <th>작성자</th>
							                     <th>작성일</th>
							                     <th>수정일</th>
							                  </tr>
							               </thead>
							               <!-- Model에 담긴 데이터 출력 : '/board/list'를
							                                          실행했을 때 앞서 BoardController는 Model을 이용해서
							                             게시물의 목록을 'list'라는 이름으로 담아서 전달했으므로
							                    list.jsp에서는 이것을 출력합니다.
							                                          출력은 JSTL을 이용해서 처리합니다.-->
							               <c:forEach items="${list}" var="board">
							                  <tr>
							                     <td><c:out value="${board.bno}"></c:out></td>
							                     <!--  a 태그에 target="_blank" 속성을 적용하면 새창으로 글 상세내용을 보여줌 -->
							                     <!-- page314 소스 코딩할 때, 아래 2줄 소스는 주석 처리를 합니다! -->
							                     <!-- 
							                     <td><a href='/board/get?bno=<c:out value="${board.bno}" />'>
							                           <c:out value="${board.title}" />
							                     </a></td>
							                      -->
							                      <!-- page314 : 이벤트 처리를 위한 a 태그에 class 속성 move를 적용해 줍니다. -->
							                      
							                      <!-- Page486 views 폴더 내 board/list.jsp 파일의 일부에 댓글의 숫자 표시를 반영해 줍니다. -->
							                     <td><a class="move" href='<c:out value="${board.bno}" />'>
							                           <c:out value="${board.title}"/><b> [<c:out value="${board.replyCnt}"/>]</b>
							                     </a></td>
							                     <td><c:out value="${board.writer}"></c:out></td>
							                     <td><fmt:formatDate value="${board.regdate}"
							                           pattern="yyyy-MM-dd" /></td>
							                     <td><fmt:formatDate value="${board.updateDate}"
							                           pattern="yyyy-MM-dd" /></td>
							                  </tr>
							               </c:forEach>
							            </table>
							            <!-- /.table-responsive -->
							            
							         <div class="row">
							               <div class="col-lg-10">
							                  <form action="/board/list" id="searchForm" method="get">
							                     <select name="type">
							                        <option value="" <c:out value="${pageMaker.cri.type == null ?'selected':''}"/>>
							                           &lt;검색 조건 선택&gt;
							                        </option>
							                        <option value="T" <c:out value="${pageMaker.cri.type eq 'T' ?'selected':''}"/>>제목</option>
							                        <option value="C" <c:out value="${pageMaker.cri.type eq 'C' ?'selected':''}"/>>내용</option>
							                        <option value="W" <c:out value="${pageMaker.cri.type eq 'W' ?'selected':''}"/>>작성자</option>
							                        <option value="TC" <c:out value="${pageMaker.cri.type eq 'TC' ?'selected':''}"/>>제목 or 내용</option>
							                        <option value="TW" <c:out value="${pageMaker.cri.type eq 'TW' ?'selected':''}"/>>제목 or 작성자</option>
							                        <option value="TWC" <c:out value="${pageMaker.cri.type eq 'TWC' ?'selected':''}"/>>제목 or 내용 or 작성자</option>
							                     </select>
							                     <input type="text" name="keyword" value="${pageMaker.cri.keyword}" />
							                     <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
							                     <input type="hidden" name="amount" value="${pageMaker.cri.amount}">
							                     <button type="submit" class="btn btn-default">검색(Search)</button>                  
							                  </form>
							                  <button data-oper='list' class="btn btn-info" onclick="location.href='/board/list'">글목록보기(List)</button>
							               </div>
							            </div>
							
							            <!-- Page308 pagination 붙여넣기 적용 후에 Crtl + shift + f 클릭 적용해 줌-->
							            <div class='pull-right'>
							               <ul class="pagination">
							                  <c:if test="${pageMaker.prev}">
							                     <li class="paginate_button previous">
							                        <a href="${pageMaker.startPage - 1}">Previous</a>
							                     </li>
							                  </c:if>
							                  <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
							                     <li class="paginate_button">
							                        <a href="${num}">${num}</a>
							                     </li>
							                  </c:forEach>
							                  <c:if test="${pageMaker.next}">
							                     <li class="paginate_button next">
							                        <a href="${pageMaker.endPage + 1}">Next</a>
							                     </li>
							                  </c:if>
							               </ul>
							            </div>
							            <!-- end Pagination -->
							            
							            <!-- Page311 : 실제 페이지를 클릭하면 동작을 하는 별도의 form 태그를 이용해서 처리하도록 합니다! -->
							            <form action="/board/list" id="actionForm" method="get">
							               <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
							               <input type="hidden" name="amount" value="${pageMaker.cri.amount}">
							               <input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
							               <input type="hidden" name="type" value="${pageMaker.cri.type}">
							               
							            </form>
							            
							            <!-- modal 추가 -->
							            <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
							               aria-labelledby="myModalLabel" aria-hidden="true">
							               <div class="modal-dialog">
							                  <div class="modal-content">
							                     <div class="modal-header">
							                        <button type="button" class="close" data-dismiss="modal"
							                           aria-hidden="true">&times;</button>
							                        <h4 class="modal-title" id="myModalLabel">처리 알림!</h4>
							                     </div>
							                     <div class="modal-body">처리가 완료되었습니다!</div>
							                     <div class="modal-footer">
							                        <button type="button" class="btn btn-default"
							                           data-dismiss="modal">Close</button>
							                        <button type="button" class="btn btn-primary">Save
							                           changes</button>
							                     </div>
							                  </div>
							                  <!-- /.modal-content -->
							               </div>
							               <!-- /.modal-dialog -->
							            </div>
							            <!-- /.modal -->
							         </div>
							         <!-- /.panel-body -->
							      </div>
							      <!-- /.panel -->
							   </div>
							   <!-- /.col-lg-12 -->
							</div>
							<!-- /.row -->
							
							<script type="text/javascript">
							   // 새로운 게시물의 번호는 BoardController의 addFlashAttribute() 메서드로
							   // 저장되었기 때문에 한 번도 사용된 적이 없다면 사용자가 "/board/list"를 호출하거나,
							   // '새로고침'을 통해서 호출하는 경우 아무런 내용이 없게 됩니다.
							   // 또한, addFlashAttribute() 메서드를 이용해서 일회성으로만 데이터를 사용할 수 
							   // 있으므로 이를 이용하여 경고창이나 모달창 등을 보여주는 방식으로 처리할 수 있습니다.
							   $(document).ready(function() {
							      var result = '<c:out value = "${result}" />';
							      // 모달창 관련 자바스크립트 소스 코딩(시작)   
							      // checkModal() 함수는 파라미터에 따라서 모달창을 보여주거나 내용을 수정한 뒤
							      // 보이도록 처리합니다. checkModal()에서는 새로운 게시글이 작성되는 경우
							      // RedirectAttributes로 게시물의 번호가 전송되므로 이를 이용해서 모달창의 내용을
							      // 수정 처리합니다. $("#modal").modal('show')를 호출하면 모달창이 보이게 됩니다.
							      // 실행 확인은 웹 프로젝트 실행 후 '/board/register'를 이용해서 새로운 게시물을 작성하고
							      // 나면 자동으로 '/board/list'로 이동하면서 모달창이 보이게 됩니다.
							      checkModal(result);
							
							      history.replaceState({}, null, null);
							
							      function checkModal(result) {
							         if (result === '') { // == 은 값만 비교, === 은 타입까지 비교해서 true, false 출력
							            return;
							         }
							
							         if (parseInt(result) > 0) {
							            $(".modal-body").html("게시글" + parseInt(result) + "번이 등록되었습니다!")
							         }
							
							         $("#myModal").modal("show");
							      }
							      // 모달창 관련 자바스크립트 소스 코딩(종료)
							
							      // list.jsp에서  Register New Board 버튼 클릭하면
							      // 게시물의 등록 웹페이지로 이동 처리 합니다.
							      $("#regBtn").on("click", function() {
							         self.location = "/board/register";
							      });
							      
							      // Page312 a 태그가 원래의 동작을 못하도록 JavaScript 처리를 합니다.
							      var actionForm = $("#actionForm");
							      $(".paginate_button a").on("click",function(e){
							         e.preventDefault();
							         console.log('click');
							         
							         actionForm.find("input[name='pageNum']").val($(this).attr("href"));
							         actionForm.submit();
							         
							      });
							      
							      // Page315 : list.jsp 게시물 조회를 위한 이벤트 처리 추가
							      $(".move").on("click",function(e){
							         e.preventDefault();
							         actionForm.append("<input type = 'hidden' name = 'bno' value = '" + $(this).attr("href") + "'>");
							         actionForm.attr("action","/board/get");
							         actionForm.submit();
							      });
							      
							      //page342 자바스크립트 소스 코딩 시작
							
							      var searchForm = $('#searchForm')
							      
							      $('#searchForm button').on("click", function(e) {
							    	  if (!searchForm.find("option:selected").val()) {
										alert("검색종류를 선택해 주시기 바랍니다");
										return false;
									}
							    	  
							    	if (!searchForm.find("input[name='keyword']").val()){
							    		alert("키워드로 입력해 주시기 바랍니다");
							    		return false;
							    	} 
							    	  
							    	// 여러 종류들 중에서 검색 버튼을 클릭하면 
							    	// 기본 검색 결과 페이지는  1페이지를 하도록 수정 처리합니다
							    	searchFrom.find("input[name='pageNum']").val("1");
							    	//브라우저에서 검색 버튼을 클릭하면 form 태그의 전송은 막고,
							    	//페이지의 번호는 1이 되도록 처리합니다
							    	// 화면에서 키워드가 없다면 검색을 하지 않도록 제어합니다
							    	
							    	e.preventDefault();
							    	searchForm.submit();
							      });
							      
							      //page342 자바스크립트 소스 코딩 끝
							   });
							</script>
							<%@include file="../includes/footer.jsp"%>							
                    </div>
                </main>
                <div class="site-footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="widget">
						<h3>About Toursome.</h3>
						<p>Tour with someone, Too awesome!<br> Toursome will be with you for a perfect trip</p>
					</div> <!-- /.widget -->
					<div class="widget">
						<h3>Connect</h3>
						<ul class="list-unstyled social">
							<li><a href="#"><span class="icon-instagram"></span></a></li>
							<li><a href="#"><span class="icon-twitter"></span></a></li>
							<li><a href="#"><span class="icon-facebook"></span></a></li>
							<li><a href="#"><span class="icon-linkedin"></span></a></li>
							<li><a href="#"><span class="icon-pinterest"></span></a></li>
						</ul>
					</div> <!-- /.widget -->
				</div> <!-- /.col-lg-3 -->

				<div class="col-lg-2 ml-auto">
					<div class="widget">
						<h3>Members</h3>
						<ul class="list-unstyled float-left links">
							<li><a href="#">Yu Seung Tae</a></li>
							<li><a href="#">Kim Sung Woo</a></li>
							<li><a href="#">Lee Jae Bin</a></li>
						</ul>
						<ul class="list-unstyled float-left links order-lg-2">
							<li><a href="#">Kim Jee Eun</a></li>
							<li><a href="#">Jeong Dae Won</a></li>
							<li><a href="#">Jeong Ju I</a></li>
						</ul>
					</div> <!-- /.widget -->
				</div> <!-- /.col-lg-3 -->

				<div class="col-lg-3">
					<div class="widget">
						<h3>Contact</h3>
						<address>557, Gyeongin-ro, Guro-gu, Seoul. HiMedia Academy Guro</address>
						<ul class="list-unstyled links mb-4">
							<li><a href="tel://11234567890">010-3456-7890</a></li>
						</ul>
					</div> <!-- /.widget -->
				</div> <!-- /.col-lg-3 -->

			</div> <!-- /.row -->

			<div class="row mt-5">
				<div class="col-12 text-center">
					<p class="mb-0">Copyright &COPY;; 2023 All Rights Reserved.</p>
				</div>
			</div> <!-- /.container -->
		</div> <!-- /.site-footer -->
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/resources/js/scripts.js"></script>
        <!-- <script src="/resources/assets/demo/chart-area-demo.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="/resources/assets/demo/chart-bar-demo.js"></script>
        <script src="/resources/js/datatables-simple-demo.js"></script>
         -->
        <script src="/resources/js/navbar.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script type="text/javascript">
				var session_id = "<c:out value = "${session.id}" />";
				console.log(session_id);
				$(document).ready(function() {
					$(".logout").on("click", function() {
						alert("로그아웃이 완료되었습니다!");
					});

					$(".remove_acount").on("click", function() {
						alert("회원탈퇴가 완료되었습니다!");
						$("#remove_acount").submit();
					});

					
				});
			</script>
    </body>
</html>