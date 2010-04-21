<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
import becontent.html.gen.beContentElement.EntityManagerPage
import becontent.html.gen.formElement.notStructuredElement.Text
%>

<%script type="becontent.BeContentModel" name="generateCustomEntity" post="trim()"%>
<%for (eAllContents("CustomEntity")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%script type="becontent.BeContentModel" name="generateEntityManagerPage" post="trim()"%>
<%for (eAllContents("EntityManagerPage")) {%>
	<%generateIndexLink(current().fileName, current().generateFilename())%>
<%}%>


<%script type="becontent.BeContentModel" name="generateText" post="trim()"%>
<%for (eAllContents("Text")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>


<%script type="becontent.BeContentModel" name="Index" file="index.html"%>
<%generateHeader("BeContent Model")%>
	<body>
		CustomEntity	
		<ul>
		<%generateCustomEntity()%> 
		</ul>
		EntityManagerPage	
		<ul>
		<%generateEntityManagerPage()%> 
		</ul>
		Text
		<ul>
		<%generateText()%>
		</ul>
	</body>
</html>