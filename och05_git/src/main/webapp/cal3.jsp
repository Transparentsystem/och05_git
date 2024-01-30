<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>연산결과 오류시 Java Script이용 처리</h2>
<%
		try {
			int num1 = Integer.parseInt(request.getParameter("num1"));
			int num2 = Integer.parseInt(request.getParameter("num2"));	

			out.println(num1 + " + " + num2 + " = " + (num1+num2)+ "<p></p>");
			out.println(num1 + " - " + num2 + " = " + (num1-num2)+ "<p></p>");
			out.println(num1 + " * " + num2 + " = " + (num1*num2)+ "<p></p>");
			out.println(num1 + " / " + num2 + " = " + (num1/num2)+ "<p></p>");
		} catch (NumberFormatException e) {
%>
<!-- -1은 전페이지로 이동하라는 뜻 -->
<script type="text/javascript">
	alert("그게 숫자냐");
	history.go(-1);
</script>

<% } catch (ArithmeticException e) { %>
	<script type="text/javascript">
		alert("0으로 못나눠");
		history.back();
	</script>
<% } catch (Exception e) {
	out.println("error.."+e.getMessage());
%>
	<script type="text/javascript">
		alret("하여튼 에러야");
		location.href="nm2.jsp";
	</script>
<% } %>

</body>
</html>