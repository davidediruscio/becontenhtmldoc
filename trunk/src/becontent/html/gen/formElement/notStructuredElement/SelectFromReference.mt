<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
%>

<%script type="becontent.SelectFromReference" name="generate" post="trim()"%>
	<% generateDetailDiv("Name", name ) %>
	<% generateDetailDiv("Label", label ) %>
	<% generateDetailDiv("IsMandatory", isMandatory ) %>
	<% generateDetailDiv("RestrictCondition", restrictCondition ) %>
	<%for (referredEntity) {%> 
		<% generateReferenceDetailDiv("ReferredEntity", current().name ) %>
	<%}%>
	<%if ( helper != null ) {%>
		<% generateDetailDiv("Helper", helper ) %>
	<%}%>


<%script type="becontent.SelectFromReference" name="SelectFromReference" file="<%current().eClass().name%>_<%name%>.html"%>
	<% generateHTML( name.toUpperCase(), current().generate() ) %>