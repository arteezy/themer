<jsp:useBean id="myta" class="com.art.Themer" scope="page"/>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang='en'>
<head>
	<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
	<title>
		Определение тематики текста
	</title>
	<link href='css/custom.css' rel='stylesheet' />
</head>
<body>
	<div class='container'>
		<div class='row'>
			<div class='span8 offset2'>
				<div id='mytitle'>
					<h1 align='center'>Определение тематики текста</h1>
				</div>
				<div class='well'>
					<form action='index.jsp' align='center' method='POST'>
						<fieldset>
							<textarea id='myta' name='text' rows='9' type='text'><%
									if (request.getParameter("text") != null) {
										%><%= request.getParameter("text")%><%
									}
								%></textarea>
							<button class='btn btn-large btn-primary' id='mybtn' type='submit'>Отправить</button>
						</fieldset>
					</form>
				</div>
				<% 
					String text = null;
					if (request.getParameter("text") != null || request.getParameter("text") != "") {
						%>
						<div>
							<table class = "table table-striped">
								<thead>
									<tr>
										<th>Тема</th>
										<th id="ar">Вероятность</th>
									</tr>								
								</thead>
								<tbody>
								<%
									text = (String) request.getParameter("text");
									Iterator result = myta.getThemes(text);
									while(result.hasNext()) {
										Map.Entry me = (Map.Entry)result.next();
										%>
										<tr>
											<td>
												<%= me.getKey() %>
											</td>
											<td id = "ar">
												<%= String.format("%.2f", Double.valueOf(me.getValue().toString())*100)+"%" %>	
											</td>
										</tr>
										<%
									}									
								%>
								</tbody>
							</table>
						</div>
						<%
					}
				%>
			</div>
		</div>
	</div>
	<script src='js/jquery.min.js'></script>
	<script src='js/bootstrap.min.js'></script>
</body>
</html>