<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>

<%-- Apply --%>
<%script type="becontent.BeContentModel" name="generateApply" post="trim()"%>
<%for (eAllContents("Apply")) {%>
	<%generateIndexLink(current()._id_model, current().generateFilename())%>
<%}%>

<%-- ApplyIndexed --%>
<%script type="becontent.BeContentModel" name="generateApplyIndexed" post="trim()"%>
<%for (eAllContents("ApplyIndexed")) {%>
	<%generateIndexLink(current()._id_model, current().generateFilename())%>
<%}%>

<%-- ApplyItem --%>
<%script type="becontent.BeContentModel" name="generateApplyItem" post="trim()"%>
<%for (eAllContents("ApplyItem")) {%>
	<%generateIndexLink(current()._id_model, current().generateFilename())%>
<%}%>

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

<%-- Checkbox --%>
<%script type="becontent.BeContentModel" name="generateCheckbox" post="trim()"%>
<%for (eAllContents("Checkbox")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- ConditionalTemplate --%>
<%script type="becontent.BeContentModel" name="generateConditionalTemplate" post="trim()"%>
<%for (eAllContents("ConditionalTemplate")) {%>
	<%generateIndexLink(current()._id_model, current().generateFilename())%>
<%}%>

<%-- Content --%>
<%script type="becontent.BeContentModel" name="generateContent" post="trim()"%>
<%for (eAllContents("Content")) {%>
	<%generateIndexLink(current()._id_model, current().generateFilename())%>
<%}%>

<%-- Copy --%>
<%script type="becontent.BeContentModel" name="generateCopy" post="trim()"%>
<%for (eAllContents("Copy")) {%>
	<%generateIndexLink(current()._id_model, current().generateFilename())%>
<%}%>

<%-- CustomEntity --%>
<%script type="becontent.BeContentModel" name="generateCustomEntity" post="trim()"%>
<%for (eAllContents("CustomEntity")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- CustomPager --%>
<%script type="becontent.BeContentModel" name="generateCustomPager" post="trim()"%>
<%for (eAllContents("CustomPager")) {%>
	<%generateIndexLink(current()._id_model, current().generateFilename())%>
<%}%>

<%-- CustomRelation --%>
<%script type="becontent.BeContentModel" name="generateCustomRelation" post="trim()"%>
<%for (eAllContents("CustomRelation")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- Editor --%>
<%script type="becontent.BeContentModel" name="generateEditor" post="trim()"%>
<%for (eAllContents("Editor")) {%>
	<%generateIndexLink(current().fileName, current().generateFilename())%>
<%}%>

<%-- EntityManagerPage --%>
<%script type="becontent.BeContentModel" name="generateEntityManagerPage" post="trim()"%>
<%for (eAllContents("EntityManagerPage")) {%>
	<%generateIndexLink(current().fileName, current().generateFilename())%>
<%}%>

<%-- ExtendedForm --%>
<%script type="becontent.BeContentModel" name="generateExtendedForm" post="trim()"%>
<%for (eAllContents("ExtendedForm")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- FileToFolderExtension --%>
<%script type="becontent.BeContentModel" name="generateFileToFolderExtension" post="trim()"%>
<%for (eAllContents("FileToFolderExtension")){%>
	<%generateIndexLink(current()._id_model, current().generateFilename())%>
<%}%>

<%-- Form --%>
<%script type="becontent.BeContentModel" name="generateForm" post="trim()"%>
<%for (eAllContents("Form")){%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- Handler --%>
<%script type="becontent.BeContentModel" name="generateHandler" post="trim()"%>
<%for (eAllContents("Handler")){%>
	<%generateIndexLink(current().fileName, current().generateFilename())%>
<%}%>

<%-- JoinEntity --%>
<%script type="becontent.BeContentModel" name="generateJoinEntity" post="trim()"%>
<%for (eAllContents("JoinEntity")){%>
	<%generateIndexLink(current()._id_model, current().generateFilename())%>
<%}%>

<%-- Parameter --%>
<%script type="becontent.BeContentModel" name="generateParameter" post="trim()"%>
<%for (eAllContents("Parameter")){%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- Propagate --%>
<%script type="becontent.BeContentModel" name="generatePropagate" post="trim()"%>
<%for (eAllContents("Propagate")){%>
	<%generateIndexLink(current()._id_model, current().generateFilename())%>
<%}%>

<%-- RadioButton --%>
<%script type="becontent.BeContentModel" name="generateRadioButton" post="trim()"%>
<%for (eAllContents("RadioButton")){%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- Reference --%>
<%script type="becontent.BeContentModel" name="generateReference" post="trim()"%>
<%for (eAllContents("Reference")){%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- Section --%>
<%script type="becontent.BeContentModel" name="generateSection" post="trim()"%>
<%for (eAllContents("Section")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- Select --%>
<%script type="becontent.BeContentModel" name="generateSelect" post="trim()"%>
<%for (eAllContents("Select")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- Skin --%>
<%script type="becontent.BeContentModel" name="generateSkin" post="trim()"%>
<%for (eAllContents("Skin")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- Skinlet --%>
<%script type="becontent.BeContentModel" name="generateSkinlet" post="trim()"%>
<%for (eAllContents("Skinlet")) {%>
	<%generateIndexLink(current()._id_model, current().generateFilename())%>
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

<%-- SystemAttributeFile --%>
<%script type="becontent.BeContentModel" name="generateSystemAttributeFile" post="trim()"%>
<%for (eAllContents("SystemAttributeFile")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- SystemAttributeFileToFolder --%>
<%script type="becontent.BeContentModel" name="generateSystemAttributeFileToFolder" post="trim()"%>
<%for (eAllContents("SystemAttributeFileToFolder")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- SystemAttributeImage --%>
<%script type="becontent.BeContentModel" name="generateSystemAttributeImage" post="trim()"%>
<%for (eAllContents("SystemAttributeImage")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- SystemAttributeInteger --%>
<%script type="becontent.BeContentModel" name="generateSystemAttributeInteger" post="trim()"%>
<%for (eAllContents("SystemAttributeInteger")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- SystemAttributeLongDate --%>
<%script type="becontent.BeContentModel" name="generateSystemAttributeLongDate" post="trim()"%>
<%for (eAllContents("SystemAttributeLongDate")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- SystemAttributePassword --%>
<%script type="becontent.BeContentModel" name="generateSystemAttributePassword" post="trim()"%>
<%for (eAllContents("SystemAttributePassword")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- SystemAttributePosition --%>
<%script type="becontent.BeContentModel" name="generateSystemAttributePosition" post="trim()"%>
<%for (eAllContents("SystemAttributePosition")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- SystemAttributeText --%>
<%script type="becontent.BeContentModel" name="generateSystemAttributeText" post="trim()"%>
<%for (eAllContents("SystemAttributeText")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- SystemAttributeVarchar --%>
<%script type="becontent.BeContentModel" name="generateSystemAttributeVarchar" post="trim()"%>
<%for (eAllContents("SystemAttributeVarchar")) {%>
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

<%-- Template --%>
<%script type="becontent.BeContentModel" name="generateTemplate" post="trim()"%>
<%for (eAllContents("Template")) {%>
	<%generateIndexLink(current()._id_model, current().generateFilename())%>
<%}%>

<%-- Text --%>
<%script type="becontent.BeContentModel" name="generateText" post="trim()"%>
<%for (eAllContents("Text")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- TextArea --%>
<%script type="becontent.BeContentModel" name="generateTextArea" post="trim()"%>
<%for (eAllContents("TextArea")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- Trigger --%>
<%script type="becontent.BeContentModel" name="generateTrigger" post="trim()"%>
<%for (eAllContents("Trigger")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- UnsetParameter --%>
<%script type="becontent.BeContentModel" name="generateUnsetParameter" post="trim()"%>
<%for (eAllContents("UnsetParameter")) {%>
	<%generateIndexLink(current().name, current().generateFilename())%>
<%}%>

<%-- Validation --%>
<%script type="becontent.BeContentModel" name="generateValidation" post="trim()"%>
<%for (eAllContents("Validation")) {%>
	<%generateIndexLink(current()._id_model, current().generateFilename())%>
<%}%>


<%script type="becontent.BeContentModel" name="Index" file="index.html"%>
<%generateHeader("BeContent Model")%>
	<body>
		Apply
		<ul>
		<%generateApply()%> 
		</ul>
		ApplyIndexed
		<ul>
		<%generateApplyIndexed()%> 
		</ul>
		ApplyItem
		<ul>
		<%generateApplyItem()%> 
		</ul>
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
		Checkbox
		<ul>
		<%generateCheckbox()%> 
		</ul>
		ConditionalTemplate
		<ul>
		<%generateConditionalTemplate()%> 
		</ul>
		Content
		<ul>
		<%generateContent()%> 
		</ul>
		Copy
		<ul>
		<%generateCopy()%> 
		</ul>
		CustomEntity
		<ul>
		<%generateCustomEntity()%> 
		</ul>
		CustomPager
		<ul>
		<%generateCustomPager()%> 
		</ul>
		CustomRelation
		<ul>
		<%generateCustomRelation()%> 
		</ul>
		Editor	
		<ul>
		<%generateEditor()%> 
		</ul>
		EntityManagerPage	
		<ul>
		<%generateEntityManagerPage()%> 
		</ul>
		ExtendedForm	
		<ul>
		<%generateExtendedForm()%> 
		</ul>
		FileToFolderExtension
		<ul>
		<%generateFileToFolderExtension()%>
		</ul>
		Form
		<ul>
		<%generateForm()%>
		</ul>
		Handler
		<ul>
		<%generateHandler()%>
		</ul>		
		JoinEntity
		<ul>
		<%generateJoinEntity()%>
		</ul>
		Parameter
		<ul>
		<%generateParameter()%>
		</ul>
		Propagate
		<ul>
		<%generatePropagate()%>
		</ul>
		RadioButton
		<ul>
		<%generateRadioButton()%>
		</ul>
		Reference
		<ul>
		<%generateReference()%>
		</ul>
		Section
		<ul>
		<%generateSection()%> 
		</ul>
		Select
		<ul>
		<%generateSelect()%> 
		</ul>
		Skin
		<ul>
		<%generateSkin()%> 
		</ul>
		Skinlet
		<ul>
		<%generateSkinlet()%> 
		</ul>
		SystemAttributeColor
		<ul>
		<%generateSystemAttributeColor()%> 
		</ul>
		SystemAttributeDate
		<ul>
		<%generateSystemAttributeDate()%> 
		</ul>
		SystemAttributeFile
		<ul>
		<%generateSystemAttributeFile()%> 
		</ul>
		SystemAttributeFileToFolder
		<ul>
		<%generateSystemAttributeFileToFolder()%> 
		</ul>
		SystemAttributeImage
		<ul>
		<%generateSystemAttributeImage()%> 
		</ul>
		SystemAttributeInteger
		<ul>
		<%generateSystemAttributeInteger()%> 
		</ul>
		SystemAttributeLongDate
		<ul>
		<%generateSystemAttributeLongDate()%> 
		</ul>
		SystemAttributePassword
		<ul>
		<%generateSystemAttributePassword()%> 
		</ul>
		SystemAttributePosition
		<ul>
		<%generateSystemAttributePosition()%> 
		</ul>
		SystemAttributeText
		<ul>
		<%generateSystemAttributeText()%> 
		</ul>
		SystemAttributeVarchar
		<ul>
		<%generateSystemAttributeVarchar()%> 
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
		Template
		<ul>
		<%generateTemplate()%>
		</ul>
		Text
		<ul>
		<%generateText()%>
		</ul>
		TextArea
		<ul>
		<%generateTextArea()%>
		</ul>
		Trigger
		<ul>
		<%generateTrigger()%>
		</ul>
		UnsetParameter
		<ul>
		<%generateUnsetParameter()%>
		</ul>
		Validation
		<ul>
		<%generateValidation()%>
		</ul>
	</body>
</html>