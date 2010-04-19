<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.StringService
%>

<%script type="becontent.BeContentModel" name="getCompleteName" post="trim()"%>

<%-- EntityManagerPage --%>
<%script type="becontent.EntityManagerPage" name="generateFilename" post="trim()"%>
<%for (ancestor().nReverse()) {%>
	<%if !current().eClass().name().equalsIgnoreCase("BeContentModel") {%>
		<%current().getCompleteName().trim()+"/"%>
	<%}%>
<%}%>
<%current().getCompleteName().trim()+".html"%>
<%script type="becontent.EntityManagerPage" name="getCompleteName" post="trim()"%>
<%current().eClass().name+"_"+fileName%>

<%-- Form --%>
<%script type="becontent.Form" name="generateFilename" post="trim()"%>
<%for (ancestor().nReverse()) {%>
	<%if !current().eClass().name().equalsIgnoreCase("BeContentModel") {%>
		<%current().getCompleteName().trim()+"/"%>
	<%}%>
<%}%>
<%current().getCompleteName().trim()+".html"%>
<%script type="becontent.Form" name="getCompleteName" post="trim()"%>
<%current().eClass().name+"_"+name%>

<%-- Text --%>
<%script type="becontent.Text" name="generateFilename" post="trim()"%>
<%for (ancestor().nReverse()) {%>
	<%if !current().eClass().name().equalsIgnoreCase("BeContentModel") {%>
		<%current().getCompleteName().trim()+"/"%>
	<%}%>
<%}%>
<%current().getCompleteName().trim()+".html"%>
<%script type="becontent.Text" name="getCompleteName" post="trim()"%>
<%Cleaner(current().eClass().name+"_"+current().name)%>

<%-- Checkbox --%>
<%script type="becontent.Checkbox" name="generateFilename" post="trim()"%>
<%for (ancestor().nReverse()) {%>
	<%if !current().eClass().name().equalsIgnoreCase("BeContentModel") {%>
		<%current().getCompleteName().trim()+"/"%>
	<%}%>
<%}%>
<%current().getCompleteName().trim()+".html"%>
<%script type="becontent.Checkbox" name="getCompleteName" post="trim()"%>
<%Cleaner(current().eClass().name+"_"+current().name)%>

<%-- Color --%>
<%script type="becontent.Color" name="generateFilename" post="trim()"%>
<%for (ancestor().nReverse()) {%>
	<%if !current().eClass().name().equalsIgnoreCase("BeContentModel") {%>
		<%current().getCompleteName().trim()+"/"%>
	<%}%>
<%}%>
<%current().getCompleteName().trim()+".html"%>
<%script type="becontent.Color" name="getCompleteName" post="trim()"%>
<%Cleaner(current().eClass().name+"_"+current().name)%>

<%-- Date --%>
<%script type="becontent.Date" name="generateFilename" post="trim()"%>
<%for (ancestor().nReverse()) {%>
	<%if !current().eClass().name().equalsIgnoreCase("BeContentModel") {%>
		<%current().getCompleteName().trim()+"/"%>
	<%}%>
<%}%>
<%current().getCompleteName().trim()+".html"%>
<%script type="becontent.Date" name="getCompleteName" post="trim()"%>
<%Cleaner(current().eClass().name+"_"+current().name)%>

<%-- Editor --%>
<%script type="becontent.Editor" name="generateFilename" post="trim()"%>
<%for (ancestor().nReverse()) {%>
	<%if !current().eClass().name().equalsIgnoreCase("BeContentModel") {%>
		<%current().getCompleteName().trim()+"/"%>
	<%}%>
<%}%>
<%current().getCompleteName().trim()+".html"%>
<%script type="becontent.Editor" name="getCompleteName" post="trim()"%>
<%Cleaner(current().eClass().name+"_"+current().name)%>

<%-- File --%>
<%script type="becontent.File" name="generateFilename" post="trim()"%>
<%for (ancestor().nReverse()) {%>
	<%if !current().eClass().name().equalsIgnoreCase("BeContentModel") {%>
		<%current().getCompleteName().trim()+"/"%>
	<%}%>
<%}%>
<%current().getCompleteName().trim()+".html"%>
<%script type="becontent.File" name="getCompleteName" post="trim()"%>
<%Cleaner(current().eClass().name+"_"+current().name)%>

<%-- FileToFolder --%>
<%script type="becontent.FileToFolder" name="generateFilename" post="trim()"%>
<%for (ancestor().nReverse()) {%>
	<%if !current().eClass().name().equalsIgnoreCase("BeContentModel") {%>
		<%current().getCompleteName().trim()+"/"%>
	<%}%>
<%}%>
<%current().getCompleteName().trim()+".html"%>
<%script type="becontent.FileToFolder" name="getCompleteName" post="trim()"%>
<%Cleaner(current().eClass().name+"_"+current().name)%>

<%-- Hidden --%>
<%script type="becontent.Hidden" name="generateFilename" post="trim()"%>
<%for (ancestor().nReverse()) {%>
	<%if !current().eClass().name().equalsIgnoreCase("BeContentModel") {%>
		<%current().getCompleteName().trim()+"/"%>
	<%}%>
<%}%>
<%current().getCompleteName().trim()+".html"%>
<%script type="becontent.Hidden" name="getCompleteName" post="trim()"%>
<%Cleaner(current().eClass().name+"_"+current().name)%>

<%-- HierarchicalPosition --%>
<%script type="becontent.HierarchicalPosition" name="generateFilename" post="trim()"%>
<%for (ancestor().nReverse()) {%>
	<%if !current().eClass().name().equalsIgnoreCase("BeContentModel") {%>
		<%current().getCompleteName().trim()+"/"%>
	<%}%>
<%}%>
<%current().getCompleteName().trim()+".html"%>
<%script type="becontent.HierarchicalPosition" name="getCompleteName" post="trim()"%>
<%Cleaner(current().eClass().name+"_"+current().name)%>

<%-- SelectFromReference --%>
<%script type="becontent.SelectFromReference" name="generateFilename" post="trim()"%>
<%for (ancestor().nReverse()) {%>
	<%if !current().eClass().name().equalsIgnoreCase("BeContentModel") {%>
		<%current().getCompleteName().trim()+"/"%>
	<%}%>
<%}%>
<%current().getCompleteName().trim()+".html"%>
<%script type="becontent.SelectFromReference" name="getCompleteName" post="trim()"%>
<%Cleaner(current().eClass().name+"_"+current().name)%>

<%-- CustomEntity --%>
<%script type="becontent.CustomEntity" name="generateFilename" post="trim()"%>
<%for (ancestor().nReverse()) {%>
	<%if !current().eClass().name().equalsIgnoreCase("BeContentModel") {%>
		<%current().getCompleteName().trim()+"/"%>
	<%}%>
<%}%>
<%current().getCompleteName().trim()+".html"%>
<%script type="becontent.CustomEntity" name="getCompleteName" post="trim()"%>
<%Cleaner(current().eClass().name+"_"+current().name)%>

<%-- CustomPager --%>
<%script type="becontent.CustomPager" name="generateFilename" post="trim()"%>
<%for (ancestor().nReverse()) {%>
	<%if !current().eClass().name().equalsIgnoreCase("BeContentModel") {%>
		<%current().getCompleteName().trim()+"/"%>
	<%}%>
<%}%>
<%current().getCompleteName().trim()+".html"%>
<%script type="becontent.CustomPager" name="getCompleteName" post="trim()"%>
<%Cleaner(current().eClass().name+"_"+current()._id_model)%>

<%-- Validation --%>
<%script type="becontent.Validation" name="generateFilename" post="trim()"%>
<%for (ancestor().nReverse()) {%>
	<%if !current().eClass().name().equalsIgnoreCase("BeContentModel") {%>
		<%current().getCompleteName().trim()+"/"%>
	<%}%>
<%}%>
<%current().getCompleteName().trim()+".html"%>
<%script type="becontent.Validation" name="getCompleteName" post="trim()"%>
<%Cleaner(current().eClass().name+"_"+current()._id_model)%>

