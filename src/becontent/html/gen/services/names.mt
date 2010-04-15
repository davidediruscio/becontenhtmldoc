<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.StringService
%>


<%script type="becontent.BeContentModel" name="getCompleteName" post="trim()"%>


<%script type="becontent.EntityManagerPage" name="getCompleteName" post="trim()"%>
<%Cleaner(current().eClass().name+"_"+fileName)%>


<%script type="becontent.Form" name="getCompleteName" post="trim()"%>
<%Cleaner(current().eClass().name+"_"+name)%>


<%script type="becontent.Text" name="getCompleteName" post="trim()"%>
<%Cleaner(current().eClass().name+"_"+current().name)%>

