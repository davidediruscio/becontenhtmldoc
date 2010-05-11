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
	<%if fileName != null && fileName != "" {%>
		<% generateDetailDiv("fileName", fileName ) %>
	<%}else{%>
		<% generateDetailDiv("fileName", "..." ) %>
	<%}%>
	<%for (mainSkin) {%> 
		<%if current().name != null && current().name != "" {%>
			<% generateInnerDetailDiv("mainSkin", current().eClass().name + ": " + current().name, current().generate() ) %>
		<%}else{%>
			<% generateInnerDetailDiv("mainSkin", current().eClass().name + ": ...", current().generate() ) %>
		<%}%>
	<%}%>
	<%for (mainSkinGetContent) {%> 
		<%if (current().eClass().name.trim().equalsIgnoreCase("Skin")) {%>
			<%if current().name != null && current().name != "" {%>
				<% generateReferenceDetailDiv("mainSkinGetContent", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
			<%}else{%>
				<% generateReferenceDetailDiv("mainSkinGetContent", cleaner(current().getGeneratedFilesPath+current().generateFilename()), "..." ) %>
			<%}%>
		<%}else{%>
			<%if current()._id_model != null && current()._id_model != "" {%>
				<% generateReferenceDetailDiv("mainSkinGetContent", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
			<%}else{%>
				<% generateReferenceDetailDiv("mainSkinGetContent", cleaner(current().getGeneratedFilesPath+current().generateFilename()), "..." ) %>
			<%}%>
		<%}%>
	<%}%>
	<% generateDetailDiv("mainSkinPagerLength", mainSkinPagerLength ) %>
	<% generateDetailDiv("mainSkinPlaceholder", mainSkinPlaceholder ) %>
	<% generateDetailDiv("mainSkinWithPager", mainSkinWithPager ) %>
	<%for (viewItems) {%> 
		<%if (current().eClass().name.trim().equalsIgnoreCase("Skin")) {%>
			<%if current().name != null && current().name != "" {%>
				<% generateReferenceDetailDiv("viewItems", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current().name ) %>
			<%}else{%>
				<% generateReferenceDetailDiv("viewItems", cleaner(current().getGeneratedFilesPath+current().generateFilename()), "..." ) %>
			<%}%>
		<%}else{%>
			<%if current()._id_model != null && current()._id_model != "" {%>
				<% generateReferenceDetailDiv("viewItems", cleaner(current().getGeneratedFilesPath+current().generateFilename()), current()._id_model ) %>
			<%}else{%>
				<% generateReferenceDetailDiv("viewItems", cleaner(current().getGeneratedFilesPath+current().generateFilename()), "..." ) %>
			<%}%>
		<%}%>
	<%}%>
	
<%script type="becontent.Handler" name="Handler" file="<%cleaner(current().generateFilename())%>" %>
<%if fileName != null && fileName != "" {%>
	<% generateHTML(fileName.toUpperCase(), current().generate() ) %>
<%}else{%>
	<% generateHTML( "...", current().generate() ) %>
<%}%>