<%
metamodel http://becontent.metamodel
%>

<%script type="becontent.BeContentModel" name="generateEntityManagerPage" post="trim()"%>
<%for (eContents().filter("EntityManagerPage")) {%>
	<%if current().fileName != null {%>
<a href="<%current().eClass().name%>_<%current().fileName%>.html"><%current().fileName%></a><br />
	<%}else{%>
<a href="<%current().eClass().name%>_.html">...</a><br />
	<%}%>
<%}%>


<%script type="becontent.BeContentModel" name="Index" file="index.html"%>
<html>
<head>
<title>Index</title>
</head>
<body>
EntityManagerPage<br />
<br />
<%generateEntityManagerPage()%>
</html>