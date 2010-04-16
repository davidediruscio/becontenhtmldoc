<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>

<%script type="becontent.SelectFromReference" name="generate" post="trim()"%>
	<% generateDetailDiv("Name", name ) %>
	<% generateDetailDiv("Label", label ) %>
	<% generateDetailDiv("IsMandatory", isMandatory ) %>
	<% generateDetailDiv("RestrictCondition", restrictCondition ) %>
	<%for (referredEntity) {%> 
		<% generateReferenceDetailDiv("ReferredEntity", Cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
	<%}%>
	<%if ( helper != null ) {%>
		<% generateDetailDiv("Helper", helper ) %>
	<%}%>


<%script type="becontent.SelectFromReference" name="SelectFromReference" file="<%Cleaner(generateFilename())%>"%>
	<% generateHTML( name.toUpperCase(), current().generate() ) %>