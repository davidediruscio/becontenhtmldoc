<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>

<%-- AttributeColor --%>
<%script type="becontent.BeContentModel" name="generateAttributeColor" post="trim()"%>
<%for (eAllContents("AttributeColor")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- AttributeDate --%>
<%script type="becontent.BeContentModel" name="generateAttributeDate" post="trim()"%>
<%for (eAllContents("AttributeDate")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- AttributeFile --%>
<%script type="becontent.BeContentModel" name="generateAttributeFile" post="trim()"%>
<%for (eAllContents("AttributeFile")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- AttributeFileToFolder --%>
<%script type="becontent.BeContentModel" name="generateAttributeFileToFolder" post="trim()"%>
<%for (eAllContents("AttributeFileToFolder")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- AttributeImage --%>
<%script type="becontent.BeContentModel" name="generateAttributeImage" post="trim()"%>
<%for (eAllContents("AttributeImage")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- AttributeInteger --%>
<%script type="becontent.BeContentModel" name="generateAttributeInteger" post="trim()"%>
<%for (eAllContents("AttributeInteger")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- AttributeLongDate --%>
<%script type="becontent.BeContentModel" name="generateAttributeLongDate" post="trim()"%>
<%for (eAllContents("AttributeLongDate")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- AttributePassword --%>
<%script type="becontent.BeContentModel" name="generateAttributePassword" post="trim()"%>
<%for (eAllContents("AttributePassword")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- AttributePosition --%>
<%script type="becontent.BeContentModel" name="generateAttributePosition" post="trim()"%>
<%for (eAllContents("AttributePosition")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- AttributeText --%>
<%script type="becontent.BeContentModel" name="generateAttributeText" post="trim()"%>
<%for (eAllContents("AttributeText")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- AttributeVarchar --%>
<%script type="becontent.BeContentModel" name="generateAttributeVarchar" post="trim()"%>
<%for (eAllContents("AttributeVarchar")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- Channel --%>
<%script type="becontent.BeContentModel" name="generateChannel" post="trim()"%>
<%for (eAllContents("Channel")) {%>
	<%generateIndexLink(current()._id_model, current().generateFilename())%>
<%}%>

<%-- CustomEntity --%>
<%script type="becontent.BeContentModel" name="generateCustomEntity" post="trim()"%>
<%for (eAllContents("CustomEntity")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- CustomRelation --%>
<%script type="becontent.BeContentModel" name="generateCustomRelation" post="trim()"%>
<%for (eAllContents("CustomRelation")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- EntityManagerPage --%>
<%script type="becontent.BeContentModel" name="generateEntityManagerPage" post="trim()"%>
<%for (eAllContents("EntityManagerPage")) {%>
	<%generateIndexLink(current().fileName, current().generateFilename())%>
<%}%>

<%-- FileToFolderExtension --%>
<%script type="becontent.BeContentModel" name="generateFileToFolderExtension" post="trim()"%>
<%for (eAllContents("FileToFolderExtension")){%>
	<%generateIndexLink(current()._id_model, current().generateFilename())%>
<%}%>

<%-- Handler --%>
<%script type="becontent.BeContentModel" name="generateHandler" post="trim()"%>
<%for (eAllContents("Handler")){%>
	<%generateIndexLink(current().fileName, current().generateFilename())%>
<%}%>

<%-- Reference --%>
<%script type="becontent.BeContentModel" name="generateReference" post="trim()"%>
<%for (eAllContents("Reference")){%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- SystemAttributeColor --%>
<%script type="becontent.BeContentModel" name="generateSystemAttributeColor" post="trim()"%>
<%for (eAllContents("SystemAttributeColor")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- SystemAttributeDate --%>
<%script type="becontent.BeContentModel" name="generateSystemAttributeDate" post="trim()"%>
<%for (eAllContents("SystemAttributeDate")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- SystemEntity --%>
<%script type="becontent.BeContentModel" name="generateSystemEntity" post="trim()"%>
<%for (eAllContents("SystemEntity")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- SystemReference --%>
<%script type="becontent.BeContentModel" name="generateSystemReference" post="trim()"%>
<%for (eAllContents("SystemReference")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- SystemRelation --%>
<%script type="becontent.BeContentModel" name="generateSystemRelation" post="trim()"%>
<%for (eAllContents("SystemRelation")) {%>
	<%generateIndexLink(current().variableName, current().generateFilename())%>
<%}%>

<%-- Text --%>
<%script type="becontent.BeContentModel" name="generateText" post="trim()"%>
<%for (eAllContents("Text")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>


<%script type="becontent.BeContentModel" name="Index" file="index.html"%>
<%generateHeader("BeContent Model")%>
	<body>
		AttributeColor
		<ul>
		<%generateAttributeColor()%> 
		</ul>
		AttributeDate
		<ul>
		<%generateAttributeDate()%> 
		</ul>
		AttributeFile
		<ul>
		<%generateAttributeFile()%> 
		</ul>
		AttributeFileToFolder
		<ul>
		<%generateAttributeFileToFolder()%> 
		</ul>
		AttributeImage
		<ul>
		<%generateAttributeImage()%> 
		</ul>
		AttributeInteger
		<ul>
		<%generateAttributeInteger()%> 
		</ul>
		AttributeLongDate
		<ul>
		<%generateAttributeLongDate()%> 
		</ul>
		AttributePassword
		<ul>
		<%generateAttributePassword()%> 
		</ul>
		AttributePosition
		<ul>
		<%generateAttributePosition()%> 
		</ul>
		AttributeText
		<ul>
		<%generateAttributeText()%> 
		</ul>
		AttributeVarchar
		<ul>
		<%generateAttributeVarchar()%> 
		</ul>
		Channel
		<ul>
		<%generateChannel()%> 
		</ul>
		CustomEntity
		<ul>
		<%generateCustomEntity()%> 
		</ul>
		CustomRelation
		<ul>
		<%generateCustomRelation()%> 
		</ul>
		EntityManagerPage	
		<ul>
		<%generateEntityManagerPage()%> 
		</ul>
		Handler
		<ul>
		<%generateHandler()%>
		</ul>		
		FileToFolderExtension
		<ul>
		<%generateFileToFolderExtension()%>
		</ul>
		Reference
		<ul>
		<%generateReference()%>
		</ul>
		SystemAttributeColor
		<ul>
		<%generateSystemAttributeColor()%> 
		</ul>
		SystemAttributeDate
		<ul>
		<%generateSystemAttributeDate()%> 
		</ul>
		SystemEntity
		<ul>
		<%generateSystemEntity()%> 
		</ul>	
		SystemReference
		<ul>
		<%generateSystemReference()%> 
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