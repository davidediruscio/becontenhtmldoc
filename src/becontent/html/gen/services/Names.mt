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

