<%
metamodel http://becontent.metamodel
%>

<%script type="becontent.BeContentModel" name="Index" file="index.html"%>
<html>
<head>
<title>Index</title>
</head>
<body>

<a href="http://www.youtube.com/watch?v=QgS252XT_Ts">The model!</a><br />
<br />
<br />
EntityManagerPage<br />
<br />
<%for (eAllContents("EntityManagerPage")) {%>
	<%if current().fileName != null {%>
<a href="<%current().eClass().name%>_<%current().fileName%>.html"><%current().fileName%></a><br />
	<%}else{%>
<a href="<%current().eClass().name%>_.html">...</a><br />
	<%}%>
<%}%>
</html>