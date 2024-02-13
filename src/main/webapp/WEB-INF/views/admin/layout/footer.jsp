<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="ft">
	<p>Copyright &copy; Jobhub. All rights reserved.</p>
</div>
<div id="ajax-loading">
	<img src="/common/img/ajax-loader.gif">
</div>
<div id="anc_header">
	<a href="#anc_hd"><span></span>TOP</a>
</div>
<script src="/admin/js/admin.js"></script>
<script src="/common/js/wrest.js"></script>
<script>
	document.addEventListener('DOMContentLoaded', function() {
		var chkAll = document.querySelector('input[name="chkall"]');
		chkAll.addEventListener('change', function() {
			var checkboxes = document.querySelectorAll('input[name="chk[]"]');
			checkboxes.forEach(function(checkbox) {
				checkbox.checked = chkAll.checked;
			});
		});

		var pageRowsSelect = document.getElementById('page_rows');
		pageRowsSelect.addEventListener('change', function() {
			var selectedRows = parseInt(pageRowsSelect.value);
			var tableRows = document.querySelectorAll('.list tr');

			tableRows.forEach(function(row, index) {
				if (index < selectedRows) {
					// 선택한 행 수 이하 노출
					row.style.display = '';
				} else {
					// 나머지 행은 숨기도록 설정
					row.style.display = 'none';
				}
			});
		});
	});
</script>
</body>
</html>