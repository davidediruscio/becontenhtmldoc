<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>

<%script type="becontent.SelectFromReference" name="generate" post="trim()"%>
<%if helper != null {%>
	<% generateDetailDiv("helper", helper ) %>
<%}else{%>
	<% generateDetailDiv("helper", "..." ) %>
<%}%>
<% generateDetailDiv("isMandatory", isMandatory ) %>
<% generateDetailDiv("label", label ) %>
<% generateDetailDiv("name", name ) %>
<%for (referredEntity) {%> 
	<% generateReferenceDetailDiv("referredEntity", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
<%}%>
<% generateDetailDiv("restrictCondition", restrictCondition ) %>

<%script type="becontent.SelectFromReference" name="SelectFromReference" file="<%cleaner(generateFilename())%>"%>
<% generateHTML( name.toUpperCase(), current().generate() ) %>