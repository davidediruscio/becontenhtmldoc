<%
metamodel http://becontent.metamodel
%>


<%script type="becontent.BeContentModel" name="getCompleteName" post="trim()"%>


<%script type="becontent.EntityManagerPage" name="getCompleteName" post="trim()"%>
	<%current().eClass().name%>_<%fileName%>


<%script type="becontent.Form" name="getCompleteName" post="trim()"%>
	<%if (name != null) {%>
		<%current().eClass().name%>_<%name%>
	<%}else{%>
		<%current().eClass().name%>_
	<%}%>
	


<%script type="becontent.Text" name="getCompleteName" post="trim()"%>
	<%current().eClass().name%>_<%current().name%>

