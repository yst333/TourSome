<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

		</div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="/resources/vendor_board/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/vendor_board/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/resources/vendor_board/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="/resources/vendor_board/datatables/js/jquery.dataTables.min.js"></script>
    <script src="/resources/vendor_board/datatables-plugins/dataTables.bootstrap.min.js"></script>
    <script src="/resources/vendor_board/datatables-responsive/dataTables.responsive.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/resources/dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->     
     
    <script>
    $(document).ready(function() {
        /*
    	$('#dataTables-example').DataTable({
            responsive: true
        });
        */
        
        // 모바일 반응형 웹 구현 시 '새로고침'할때 메뉴가 펼쳐지는 문제 해결을 위해
        // 아래와 같이 소스 코드를 추가해 줍니다.
        $(".sidebar-nav")
        .attr("class", "sidebar-nav navbar-collapse collapse")
        .attr("aria-expanded", 'false')
        .attr("style", "height:1px");
    });
    </script>
         

</body>

</html>
