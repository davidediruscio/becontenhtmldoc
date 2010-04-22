<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.Handler" name="generate" post="trim"%>
	<% generateDetailDiv("FileName", fileName ) %>
	<% generateDetailDiv("MainSkinWithPager", mainSkinWithPager ) %>
	<% generateDetailDiv("MainSkinPagerLength", mainSkinPagerLength ) %>
	<% generateDetailDiv("MainSkinPlaceholder", mainSkinPlaceholder ) %>
	<%for (viewItems) {%> 
		<% generateReferenceDetailDiv("ViewItems", Cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
	<%}%>