<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.CustomPager" name="generate" post="trim()"%>

<%script type="becontent.CustomPager" name="CustomPager" file="<%Cleaner(current().generateFilename())%>"%>
	<% generateHTML( _id_model.toUpperCase(), current().generate() ) %>

