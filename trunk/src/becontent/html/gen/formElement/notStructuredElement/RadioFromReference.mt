<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>

<%script type="becontent.RadioFromReference" name="generate" post="trim()"%>
<% generateDetailDiv("name", name ) %>
<% generateDetailDiv("label", label ) %>
<% generateDetailDiv("isMandatory", isMandatory ) %>
<% generateDetailDiv("restrictCondition", restrictCondition ) %>
<%for (referredEntity) {%>
<%generateInnerDetailDiv(current().eClass().name, current().name, current().generate() )%>
<%}%>
<%if helper != null {%>
	<% generateDetailDiv("helper", helper ) %>
<%}%>

<%script type="becontent.RadioFromReference" name="RadioFromReference" file="<%cleaner(generateFilename())%>"%>
<%generateHTML(name.toUpperCase(), current().generate())%>