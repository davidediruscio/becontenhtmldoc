<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>

<%script type="becontent.RadioFromReference" name="generate" post="trim()"%>
<%if helper != null {%>
	<% generateDetailDiv("helper", helper ) %>
<%}else{%>
	<% generateDetailDiv("helper", "..." ) %>
<%}%>
<% generateDetailDiv("isMandatory", isMandatory ) %>
<% generateDetailDiv("label", label ) %>
<% generateDetailDiv("name", name ) %>
<%for (referredEntity) {%>
<%generateInnerDetailDiv(current().eClass().name, current().name, current().generate() )%>
<%}%>
<% generateDetailDiv("restrictCondition", restrictCondition ) %>

<%script type="becontent.RadioFromReference" name="RadioFromReference" file="<%cleaner(generateFilename())%>"%>
<%generateHTML(name.toUpperCase(), current().generate())%>