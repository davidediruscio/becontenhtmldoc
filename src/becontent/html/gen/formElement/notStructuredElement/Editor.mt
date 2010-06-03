<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
import becontent.html.gen.services.FileService
%>


<%script type="becontent.Editor" name="generate" post="trim()"%>
<%if helper != null {%>
	<% generateDetailDiv("helper", helper ) %>
<%}else{%>
	<% generateDetailDiv("helper", "..." ) %>
<%}%>
<% generateDetailDiv("columns", columns ) %>
<% generateDetailDiv("isMandatory", isMandatory ) %>
<% generateDetailDiv("label", label ) %>
<%if (name != null && name != ""){%>
	<% generateDetailDiv("name", name ) %>
<%}else{%>
	<% generateDetailDiv("name", "..." ) %>
<%}%>
<% generateDetailDiv("rows", rows ) %>

<%script type="becontent.Editor" name="generateFormHTML" post="trim()"%>
<img src="file:///<% current().getGeneratedFilesPath(false) %>img/editor.png" style="padding: 0px 0px 0px 2px;">	

<%script type="becontent.Editor" name="Editor" file="<%cleaner(generateFilename())%>"%>
<%if (name != null && name != ""){%>
	<%generateHTML(name.toUpperCase(), current().generate())%>
<%}else{%>
	<%generateHTML("...", current().generate())%>
<%}%>