<%
metamodel http://becontent.metamodel
%>

<%script type="becontent.BeContentModel" name="Index" file="index.html"%>
<%for (eAllContents()) {%>
	The name of the entity is: <%current().eClass().name%>.
<%}%>