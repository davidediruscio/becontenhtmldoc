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
<%if (name != null && name != ""){%>
	<% generateDetailDiv("name", name ) %>
<%}else{%>
	<% generateDetailDiv("name", "..." ) %>
<%}%>
<%for (referredEntity) {%>
<%if (current().name != null && current().name != ""){%>
	<%generateInnerDetailDiv("referredEntity", current().eClass().name + ": " + current().name, current().generate() )%>
<%}else{%>
	<%generateInnerDetailDiv("referredEntity", current().eClass().name + ": ...", current().generate() )%>
<%}%>
<%}%>
<% generateDetailDiv("restrictCondition", restrictCondition ) %>

<%script type="becontent.RadioFromReference" name="generateFormHTML" post="trim()"%>
<input value="" name="<% name %>" type="radio"></input>

<%script type="becontent.RadioFromReference" name="RadioFromReference" file="<%cleaner(generateFilename())%>"%>
<%if (name != null && name != ""){%>
	<%generateHTML(name.toUpperCase(), current().generate())%>
<%}else{%>
	<%generateHTML("...", current().generate())%>
<%}%>