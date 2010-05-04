<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
import becontent.html.gen.viewItem.Skin
import becontent.html.gen.viewItem.Skinlet
import becontent.html.gen.viewItem.Template
import becontent.html.gen.viewItem.Content
%>

<%script type="becontent.Handler" name="generate" post="trim()"%>
	<% generateDetailDiv("fileName", fileName ) %>
	<%for (mainSkin) {%> 
		<% generateInnerDetailDiv(current().eClass().name, current().name, current().generate() ) %>
	<%}%>
	<%for (mainSkinGetContent) {%> 
		<%if (current().eClass().name.trim().equalsIgnoreCase("Skin")) {%>
			<% generateReferenceDetailDiv("mainSkinGetContent", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
		<%}else{%>
			<% generateReferenceDetailDiv("mainSkinGetContent", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
		<%}%>
	<%}%>
	<% generateDetailDiv("mainSkinPagerLength", mainSkinPagerLength ) %>
	<% generateDetailDiv("mainSkinPlaceholder", mainSkinPlaceholder ) %>
	<% generateDetailDiv("mainSkinWithPager", mainSkinWithPager ) %>
	<%for (viewItems) {%> 
		<%if (current().eClass().name.trim().equalsIgnoreCase("Skin")) {%>
			<% generateReferenceDetailDiv("viewItems", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
		<%}else{%>
			<% generateReferenceDetailDiv("viewItems", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
		<%}%>
	<%}%>
	
<%script type="becontent.Handler" name="Handler" file="<%cleaner(current().generateFilename())%>" %>
	<% generateHTML(fileName.toUpperCase(), current().generate() ) %>