<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
import becontent.html.gen.beContentElement.Handler
%>

<%-- CustomEntity --%>
<%script type="becontent.BeContentModel" name="generateCustomEntity" post="trim()"%>
<%for (eAllContents("CustomEntity")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- EntityManagerPage --%>
<%script type="becontent.BeContentModel" name="generateEntityManagerPage" post="trim()"%>
<%for (eAllContents("EntityManagerPage")) {%>
	<%generateIndexLink(current().fileName, current().generateFilename())%>
<%}%>

<%-- CustomRelation --%>
<%script type="becontent.BeContentModel" name="generateCustomRelation" post="trim()"%>
<%for (eAllContents("CustomRelation")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- SystemEntity --%>
<%script type="becontent.BeContentModel" name="generateSystemEntity" post="trim()"%>
<%for (eAllContents("SystemEntity")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- SystemRelation --%>
<%script type="becontent.BeContentModel" name="generateSystemRelation" post="trim()"%>
<%for (eAllContents("SystemRelation")) {%>
	<%generateIndexLink(current().variableName, current().generateFilename())%>
<%}%>

<%-- Handler --%>
<%script type="becontent.BeContentModel" name="generateHandler" post="trim()"%>
<%for (eAllContents("Handler")){%>
	<%generateIndexLink(current().fileName, current().generateFilename())%>
<%}%>

<%-- Text --%>
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
		Handler
		<ul>
		<%generateHandler()%>
		</ul>
		CustomRelation
		<ul>
		<%generateCustomRelation()%> 
		</ul>
		SystemEntity
		<ul>
		<%generateSystemEntity()%> 
		</ul>		
		SystemRelation
		<ul>
		<%generateSystemRelation()%> 
		</ul>	
		Text
		<ul>
		<%generateText()%>
		</ul>
	</body>
</html>