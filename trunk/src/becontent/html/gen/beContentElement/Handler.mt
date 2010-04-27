<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.Handler" name="generate" post="trim"%>
	<% generateDetailDiv("fileName", fileName ) %>
	<% generateDetailDiv("mainSkinWithPager", mainSkinWithPager ) %>
	<% generateDetailDiv("mainSkinPagerLength", mainSkinPagerLength ) %>
	<% generateDetailDiv("mainSkinPlaceholder", mainSkinPlaceholder ) %>
	<%--<%for (viewItems) {%> 
		<% generateReferenceDetailDiv("ViewItems", Cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().fileName ) %>
	<%}%>--%>
	
<%script type="becontent.Handler" name="Handler" file="<%Cleaner(current().generateFilename())%>" %>
	<% generateHTML( fileName.toUpperCase(), current().generate() ) %>