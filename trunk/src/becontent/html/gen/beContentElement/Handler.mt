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
		<% generateReferenceDetailDiv("viewItems", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().fileName ) %>
	<%}%>--%>
	<%for (mainSkin) {%> 
		<% generateInnerDetailDiv(current().eClass().name, current().name, current().generate() ) %>
	<%}%>
	<%--<%for (mainSkinGetContent) {%> 
		<% generateReferenceDetailDiv("mainSkinGetContent", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().fileName ) %>
	<%}%>--%>
	
<%script type="becontent.Handler" name="Handler" file="<%cleaner(current().generateFilename())%>" %>
	<% generateHTML(fileName.toUpperCase(), current().generate() ) %>