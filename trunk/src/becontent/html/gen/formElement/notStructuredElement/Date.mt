<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>


<%script type="becontent.Date" name="generate" post="trim()"%>
<%if helper != null {%>
	<% generateDetailDiv("helper", helper ) %>
<%}else{%>
	<% generateDetailDiv("helper", "..." ) %>
<%}%>
<% generateDetailDiv("isMandatory", isMandatory ) %>
<% generateDetailDiv("label", label ) %>
<% generateDetailDiv("name", name ) %>

<%script type="becontent.Date" name="generateFormHTML" post="trim()"%>
<input value="" name="<% name %>"><img width=16 height=16 src="<% current().getGeneratedFilesPath %>img/calendar.ico" style="padding: 0px 0px 0px 2px;">	

<%script type="becontent.Date" name="Date" file="<%cleaner(generateFilename())%>"%>
<%generateHTML(name.toUpperCase(), current().generate())%>