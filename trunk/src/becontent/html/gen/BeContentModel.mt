<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.StringService
import becontent.html.gen.services.Names
%>

<%-- Apply --%>
<%script type="becontent.BeContentModel" name="generateApply" post="trim()"%>
<%for (eAllContents("Apply")) {%>
	<%if (current()._id_model.equalsIgnoreCase("") || current()._id_model == null){%>
	 	<%generateIndexLink("...", current().generateFilename())%>
	 <%}else{%>
	 	<%generateIndexLink(current()._id_model, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- ApplyIndexed --%>
<%script type="becontent.BeContentModel" name="generateApplyIndexed" post="trim()"%>
<%for (eAllContents("ApplyIndexed")) {%>
	<%if (current()._id_model.equalsIgnoreCase("") || current()._id_model == null){%>
	 	<%generateIndexLink("...", current().generateFilename())%>
	 <%}else{%>
	 	<%generateIndexLink(current()._id_model, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- ApplyItem --%>
<%script type="becontent.BeContentModel" name="generateApplyItem" post="trim()"%>
<%for (eAllContents("ApplyItem")) {%>
	 <%if (current()._id_model.equalsIgnoreCase("") || current()._id_model == null){%>
	 	<%generateIndexLink("...", current().generateFilename())%>
	 <%}else{%>
	 	<%generateIndexLink(current()._id_model, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- AttributeColor --%>
<%script type="becontent.BeContentModel" name="generateAttributeColor" post="trim()"%>
<%for (eAllContents("AttributeColor")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- AttributeDate --%>
<%script type="becontent.BeContentModel" name="generateAttributeDate" post="trim()"%>
<%for (eAllContents("AttributeDate")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- AttributeFile --%>
<%script type="becontent.BeContentModel" name="generateAttributeFile" post="trim()"%>
<%for (eAllContents("AttributeFile")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- AttributeFileToFolder --%>
<%script type="becontent.BeContentModel" name="generateAttributeFileToFolder" post="trim()"%>
<%for (eAllContents("AttributeFileToFolder")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- AttributeImage --%>
<%script type="becontent.BeContentModel" name="generateAttributeImage" post="trim()"%>
<%for (eAllContents("AttributeImage")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- AttributeInteger --%>
<%script type="becontent.BeContentModel" name="generateAttributeInteger" post="trim()"%>
<%for (eAllContents("AttributeInteger")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- AttributeLongDate --%>
<%script type="becontent.BeContentModel" name="generateAttributeLongDate" post="trim()"%>
<%for (eAllContents("AttributeLongDate")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- AttributePassword --%>
<%script type="becontent.BeContentModel" name="generateAttributePassword" post="trim()"%>
<%for (eAllContents("AttributePassword")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- AttributePosition --%>
<%script type="becontent.BeContentModel" name="generateAttributePosition" post="trim()"%>
<%for (eAllContents("AttributePosition")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- AttributeText --%>
<%script type="becontent.BeContentModel" name="generateAttributeText" post="trim()"%>
<%for (eAllContents("AttributeText")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- AttributeVarchar --%>
<%script type="becontent.BeContentModel" name="generateAttributeVarchar" post="trim()"%>
<%for (eAllContents("AttributeVarchar")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Channel --%>
<%script type="becontent.BeContentModel" name="generateChannel" post="trim()"%>
<%for (eAllContents("Channel")) {%>
	<%if (current()._id_model.equalsIgnoreCase("") || current()._id_model == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current()._id_model, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Checkbox --%>
<%script type="becontent.BeContentModel" name="generateCheckbox" post="trim()"%>
<%for (eAllContents("Checkbox")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- ConditionalTemplate --%>
<%script type="becontent.BeContentModel" name="generateConditionalTemplate" post="trim()"%>
<%for (eAllContents("ConditionalTemplate")) {%>
	<%if (current()._id_model.equalsIgnoreCase("") || current()._id_model == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current()._id_model, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Color --%>
<%script type="becontent.BeContentModel" name="generateColor" post="trim()"%>
<%for (eAllContents("Color")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Content --%>
<%script type="becontent.BeContentModel" name="generateContent" post="trim()"%>
<%for (eAllContents("Content")) {%>
	<%if (current()._id_model.equalsIgnoreCase("") || current()._id_model == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current()._id_model, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Copy --%>
<%script type="becontent.BeContentModel" name="generateCopy" post="trim()"%>
<%for (eAllContents("Copy")) {%>
	<%if (current()._id_model.equalsIgnoreCase("") || current()._id_model == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current()._id_model, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- CustomEntity --%>
<%script type="becontent.BeContentModel" name="generateCustomEntity" post="trim()"%>
<%for (eAllContents("CustomEntity")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- CustomPager --%>
<%script type="becontent.BeContentModel" name="generateCustomPager" post="trim()"%>
<%for (eAllContents("CustomPager")) {%>
	<%if (current()._id_model.equalsIgnoreCase("") || current()._id_model == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current()._id_model, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- CustomRelation --%>
<%script type="becontent.BeContentModel" name="generateCustomRelation" post="trim()"%>
<%for (eAllContents("CustomRelation")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Date --%>
<%script type="becontent.BeContentModel" name="generateDate" post="trim()"%>
<%for (eAllContents("Date")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Editor --%>
<%script type="becontent.BeContentModel" name="generateEditor" post="trim()"%>
<%for (eAllContents("Editor")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- EntityManagerPage --%>
<%script type="becontent.BeContentModel" name="generateEntityManagerPage" post="trim()"%>
<%for (eAllContents("EntityManagerPage")) {%>
	<%if (current().fileName.equalsIgnoreCase("") || current().fileName == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().fileName, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- ExtendedForm --%>
<%script type="becontent.BeContentModel" name="generateExtendedForm" post="trim()"%>
<%for (eAllContents("ExtendedForm")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- File --%>
<%script type="becontent.BeContentModel" name="generateFile" post="trim()"%>
<%for (eAllContents("File")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- FileToFolder --%>
<%script type="becontent.BeContentModel" name="generateFileToFolder" post="trim()"%>
<%for (eAllContents("FileToFolder")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- FileToFolderExtension --%>
<%script type="becontent.BeContentModel" name="generateFileToFolderExtension" post="trim()"%>
<%for (eAllContents("FileToFolderExtension")){%>
	<%if (current()._id_model.equalsIgnoreCase("") || current()._id_model == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current()._id_model, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Form --%>
<%script type="becontent.BeContentModel" name="generateForm" post="trim()"%>
<%for (eAllContents("Form")){%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Handler --%>
<%script type="becontent.BeContentModel" name="generateHandler" post="trim()"%>
<%for (eAllContents("Handler")){%>
	<%if (current().fileName.equalsIgnoreCase("") || current().fileName == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().fileName, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- HierarchicalPosition --%>
<%script type="becontent.BeContentModel" name="generateHierarchicalPosition" post="trim()"%>
<%for (eAllContents("HierarchicalPosition")){%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Hidden --%>
<%script type="becontent.BeContentModel" name="generateHidden" post="trim()"%>
<%for (eAllContents("Hidden")){%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Image --%>
<%script type="becontent.BeContentModel" name="generateImage" post="trim()"%>
<%for (eAllContents("Image")){%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- JoinEntity --%>
<%script type="becontent.BeContentModel" name="generateJoinEntity" post="trim()"%>
<%for (eAllContents("JoinEntity")){%>
	<%if (current()._id_model.equalsIgnoreCase("") || current()._id_model == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current()._id_model, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Link --%>
<%script type="becontent.BeContentModel" name="generateLink" post="trim()"%>
<%for (eAllContents("Link")){%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- LongDate --%>
<%script type="becontent.BeContentModel" name="generateLongDate" post="trim()"%>
<%for (eAllContents("LongDate")){%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Parameter --%>
<%script type="becontent.BeContentModel" name="generateParameter" post="trim()"%>
<%for (eAllContents("Parameter")){%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Password --%>
<%script type="becontent.BeContentModel" name="generatePassword" post="trim()"%>
<%for (eAllContents("Password")){%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Position --%>
<%script type="becontent.BeContentModel" name="generatePosition" post="trim()"%>
<%for (eAllContents("Position")){%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Propagate --%>
<%script type="becontent.BeContentModel" name="generatePropagate" post="trim()"%>
<%for (eAllContents("Propagate")){%>
	<%if (current()._id_model.equalsIgnoreCase("") || current()._id_model == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current()._id_model, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- RadioButton --%>
<%script type="becontent.BeContentModel" name="generateRadioButton" post="trim()"%>
<%for (eAllContents("RadioButton")){%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- RadioFromReference --%>
<%script type="becontent.BeContentModel" name="generateRadioFromReference" post="trim()"%>
<%for (eAllContents("RadioFromReference")){%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Reference --%>
<%script type="becontent.BeContentModel" name="generateReference" post="trim()"%>
<%for (eAllContents("Reference")){%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- RelationManager --%>
<%script type="becontent.BeContentModel" name="generateRelationManager" post="trim()"%>
<%for (eAllContents("RelationManager")){%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Section --%>
<%script type="becontent.BeContentModel" name="generateSection" post="trim()"%>
<%for (eAllContents("Section")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Select --%>
<%script type="becontent.BeContentModel" name="generateSelect" post="trim()"%>
<%for (eAllContents("Select")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- SelectFromReference --%>
<%script type="becontent.BeContentModel" name="generateSelectFromReference" post="trim()"%>
<%for (eAllContents("SelectFromReference")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Skin --%>
<%script type="becontent.BeContentModel" name="generateSkin" post="trim()"%>
<%for (eAllContents("Skin")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Skinlet --%>
<%script type="becontent.BeContentModel" name="generateSkinlet" post="trim()"%>
<%for (eAllContents("Skinlet")) {%>
	<%if (current()._id_model.equalsIgnoreCase("") || current()._id_model == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current()._id_model, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- SystemAttributeColor --%>
<%script type="becontent.BeContentModel" name="generateSystemAttributeColor" post="trim()"%>
<%for (eAllContents("SystemAttributeColor")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- SystemAttributeDate --%>
<%script type="becontent.BeContentModel" name="generateSystemAttributeDate" post="trim()"%>
<%for (eAllContents("SystemAttributeDate")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- SystemAttributeFile --%>
<%script type="becontent.BeContentModel" name="generateSystemAttributeFile" post="trim()"%>
<%for (eAllContents("SystemAttributeFile")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- SystemAttributeFileToFolder --%>
<%script type="becontent.BeContentModel" name="generateSystemAttributeFileToFolder" post="trim()"%>
<%for (eAllContents("SystemAttributeFileToFolder")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- SystemAttributeImage --%>
<%script type="becontent.BeContentModel" name="generateSystemAttributeImage" post="trim()"%>
<%for (eAllContents("SystemAttributeImage")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- SystemAttributeInteger --%>
<%script type="becontent.BeContentModel" name="generateSystemAttributeInteger" post="trim()"%>
<%for (eAllContents("SystemAttributeInteger")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- SystemAttributeLongDate --%>
<%script type="becontent.BeContentModel" name="generateSystemAttributeLongDate" post="trim()"%>
<%for (eAllContents("SystemAttributeLongDate")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- SystemAttributePassword --%>
<%script type="becontent.BeContentModel" name="generateSystemAttributePassword" post="trim()"%>
<%for (eAllContents("SystemAttributePassword")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- SystemAttributePosition --%>
<%script type="becontent.BeContentModel" name="generateSystemAttributePosition" post="trim()"%>
<%for (eAllContents("SystemAttributePosition")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- SystemAttributeText --%>
<%script type="becontent.BeContentModel" name="generateSystemAttributeText" post="trim()"%>
<%for (eAllContents("SystemAttributeText")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- SystemAttributeVarchar --%>
<%script type="becontent.BeContentModel" name="generateSystemAttributeVarchar" post="trim()"%>
<%for (eAllContents("SystemAttributeVarchar")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- SystemEntity --%>
<%script type="becontent.BeContentModel" name="generateSystemEntity" post="trim()"%>
<%for (eAllContents("SystemEntity")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- SystemReference --%>
<%script type="becontent.BeContentModel" name="generateSystemReference" post="trim()"%>
<%for (eAllContents("SystemReference")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- SystemRelation --%>
<%script type="becontent.BeContentModel" name="generateSystemRelation" post="trim()"%>
<%for (eAllContents("SystemRelation")) {%>
	<%if (current().variableName.equalsIgnoreCase("") || current().variableName == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().variableName, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Template --%>
<%script type="becontent.BeContentModel" name="generateTemplate" post="trim()"%>
<%for (eAllContents("Template")) {%>
	<%if (current()._id_model.equalsIgnoreCase("") || current()._id_model == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current()._id_model, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Text --%>
<%script type="becontent.BeContentModel" name="generateText" post="trim()"%>
<%for (eAllContents("Text")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- TextArea --%>
<%script type="becontent.BeContentModel" name="generateTextArea" post="trim()"%>
<%for (eAllContents("TextArea")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Trigger --%>
<%script type="becontent.BeContentModel" name="generateTrigger" post="trim()"%>
<%for (eAllContents("Trigger")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- UnsetParameter --%>
<%script type="becontent.BeContentModel" name="generateUnsetParameter" post="trim()"%>
<%for (eAllContents("UnsetParameter")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Validation --%>
<%script type="becontent.BeContentModel" name="generateValidation" post="trim()"%>
<%for (eAllContents("Validation")) {%>
	<%if (current()._id_model.equalsIgnoreCase("") || current()._id_model == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current()._id_model, current().generateFilename())%>
	 <%}%>
<%}%>

<%-- Year --%>
<%script type="becontent.BeContentModel" name="generateYear" post="trim()"%>
<%for (eAllContents("Year")) {%>
	<%if (current().name.equalsIgnoreCase("") || current().name == null){%>
		<%generateIndexLink("...", current().generateFilename())%>
	<%}else{%>
		<%generateIndexLink(current().name, current().generateFilename())%>
	 <%}%>
<%}%>


<%script type="becontent.BeContentModel" name="TypesFrame" file="Types_frame.html"%>
<%generateHeader("Types and Entities")%>
	<body>
		<ul>
		<%if (eAllContents("Apply") != null){%>
			<li><a href="#" onclick="toggle_visibility('apply')">Apply</a></li>
			<div id="div_apply" style="display : none;">
			<ul>
			<%generateApply()%>
			</ul>
			</div>
		<%}%>
		<%if (eAllContents("ApplyIndexed") != null){%>
			<li><a href="#" onclick="toggle_visibility('applyindexed')">ApplyIndexed</a></li>
			<div id="div_applyindexed" style="display : none;">
			<ul>
			<%generateApplyIndexed()%> 
			</ul>
			</div>
		<%}%>
		<%if (eAllContents("ApplyItem") != null){%>
			<li><a href="#" onclick="toggle_visibility('applyitem')">ApplyItem</a></li>
			<div id="div_applyitem" style="display : none;">
			<ul>
			<%generateApplyItem()%> 
			</ul>
			</div>
		<%}%>
		<%if (eAllContents("AttributeColor") != null){%>
			<li><a href="#" onclick="toggle_visibility('attributecolor')">AttributeColor</a></li>
			<div id="div_attributecolor" style="display : none;">
			<ul>
			<%generateAttributeColor()%> 
			</ul>
			</div>
		<%}%>
		<%if (eAllContents("AttributeDate") != null){%>
			<li><a href="#" onclick="toggle_visibility('attributedate')">AttributeDate</a></li>
			<div id="div_attributedate" style="display : none;">
			<ul>
			<%generateAttributeDate()%> 
			</ul>
			</div>
		<%}%>
		<%if (eAllContents("AttributeFile") != null){%>
			<li><a href="#" onclick="toggle_visibility('attributefile')">AttributeFile</a></li>
			<div id="div_attributefile" style="display : none;">
			<ul>
			<%generateAttributeFile()%> 
			</ul>
			</div>
		<%}%>
		<%if (eAllContents("AttributeFileToFolder") != null){%>
			<li><a href="#" onclick="toggle_visibility('attributefiletofolder')">AttributeFileToFolder</a></li>
			<div id="div_attributefiletofolder" style="display : none;">
			<ul>
			<%generateAttributeFileToFolder()%> 
			</ul>
			</div>
		<%}%>
		<%if (eAllContents("AttributeImage") != null){%>
			<li><a href="#" onclick="toggle_visibility('attributeimage')">AttributeImage</a></li>
			<div id="div_attributeimage" style="display : none;">
			<ul>
			<%generateAttributeImage()%> 
			</ul>
			</div>
		<%}%>
		<%if (eAllContents("AttributeInteger") != null){%>
			<li><a href="#" onclick="toggle_visibility('attributeinteger')">AttributeInteger</a></li>
			<div id="div_attributeinteger" style="display : none;">
			<ul>
			<%generateAttributeInteger()%> 
			</ul>
			</div>
		<%}%>
		<%if (eAllContents("AttributeLongDate") != null){%>
			<li><a href="#" onclick="toggle_visibility('attributelongdate')">AttributeLongDate</a></li>
			<div id="div_attributelongdate" style="display : none;">
			<ul>
			<%generateAttributeLongDate()%> 
			</ul>
			</div>
		<%}%>
		<%if (eAllContents("AttributePassword") != null){%>
			<li><a href="#" onclick="toggle_visibility('attributepassword')">AttributePassword</a></li>
			<div id="div_attributepassword" style="display : none;">
			<ul>
			<%generateAttributePassword()%> 
			</ul>
			</div>
		<%}%>
		<%if (eAllContents("AttributePosition") != null){%>
			<li><a href="#" onclick="toggle_visibility('attributeposition')">AttributePosition</a></li>
			<div id="div_attributeposition" style="display : none;">
			<ul>
			<%generateAttributePosition()%> 
			</ul>
			</div>
		<%}%>
		<%if (eAllContents("AttributeText") != null){%>
			<li><a href="#" onclick="toggle_visibility('attributetext')">AttributeText</a></li>
			<div id="div_attributetext" style="display : none;">
			<ul>
			<%generateAttributeText()%> 
			</ul>
			</div>
		<%}%>
		<%if (eAllContents("AttributeVarchar") != null){%>
			<li><a href="#" onclick="toggle_visibility('attributevarchar')">AttributeVarchar</a></li>
			<div id="div_attributevarchar" style="display : none;">
			<ul>
			<%generateAttributeVarchar()%> 
			</ul>
			</div>
		<%}%>
		<%if (eAllContents("Channel") != null){%>
			<li><a href="#" onclick="toggle_visibility('channel')">Channel</a></li>
			<div id="div_channel" style="display : none;">
			<ul>
			<%generateChannel()%> 
			</ul>
			</div>
		<%}%>
		<%if (eAllContents("Checkbox") != null){%>
			<li><a href="#" onclick="toggle_visibility('checkbox')">Checkbox</a></li>
			<div id="div_checkbox" style="display : none;">
			<ul>
			<%generateCheckbox()%> 
			</ul>
			</div>
		<%}%>
		<%if (eAllContents("Color") != null){%>
			<li><a href="#" onclick="toggle_visibility('color')">Color</a></li>
			<div id="div_color" style="display : none;">
			<ul>
			<%generateColor()%> 
			</ul>
			</div>
		<%}%>
		<%if (eAllContents("ConditionalTemplate") != null){%>
			<li><a href="#" onclick="toggle_visibility('conditionaltemplate')">ConditionalTemplate</a></li>
			<div id="div_conditionaltemplate" style="display : none;">
			<ul>
			<%generateConditionalTemplate()%> 
			</ul>
			</div>
		<%}%>
		<%if (eAllContents("Content") != null){%>
			<li><a href="#" onclick="toggle_visibility('content')">Content</a></li>
			<div id="div_content" style="display : none;">
			<ul>
			<%generateContent()%> 
			</ul>
			</div>
		<%}%>
		<%if (eAllContents("Copy") != null){%>
			<li><a href="#" onclick="toggle_visibility('copy')">Copy</a></li>
			<div id="div_copy" style="display : none;">
			<ul>
			<%generateCopy()%> 
			</ul>
			</div>
		<%}%>
		<%if (eAllContents("CustomEntity") != null){%>
			<li><a href="#" onclick="toggle_visibility('customentity')">CustomEntity</a></li>
			<div id="div_customentity" style="display : none;">
			<ul>
			<%generateCustomEntity()%> 
			</ul>
			</div>
		<%}%>
		<%if (eAllContents("CustomPager") != null){%>
			<li><a href="#" onclick="toggle_visibility('custompager')">CustomPager</a></li>
			<div id="div_custompager" style="display : none;">
			<ul>
			<%generateCustomPager()%> 
			</ul>
			</div>
		<%}%>
		<%if (eAllContents("CustomRelation") != null){%>
			CustomRelation
			<ul>
			<%generateCustomRelation()%> 
			</ul>
		<%}%>
		<%if (eAllContents("Date") != null){%>
			Date
			<ul>
			<%generateDate()%> 
			</ul>
		<%}%>
		<%if (eAllContents("Editor") != null){%>
			Editor
			<ul>
			<%generateEditor()%> 
			</ul>
		<%}%>
		<%if (eAllContents("EntityManagerPage") != null){%>
			EntityManagerPage
			<ul>
			<%generateEntityManagerPage()%> 
			</ul>
		<%}%>
		<%if (eAllContents("ExtendedForm") != null){%>
			ExtendedForm
			<ul>
			<%generateExtendedForm()%> 
			</ul>
		<%}%>
		<%if (eAllContents("File") != null){%>
			File
			<ul>
			<%generateFile()%> 
			</ul>
		<%}%>
		<%if (eAllContents("FileToFolder") != null){%>
			FileToFolder
			<ul>
			<%generateFileToFolder()%> 
			</ul>
		<%}%>
		<%if (eAllContents("FileToFolderExtension") != null){%>
			FileToFolderExtension
			<ul>
			<%generateFileToFolderExtension()%> 
			</ul>
		<%}%>
		<%if (eAllContents("Form") != null){%>
			Form
			<ul>
			<%generateForm()%> 
			</ul>
		<%}%>
		<%if (eAllContents("Handler") != null){%>
			Handler
			<ul>
			<%generateHandler()%> 
			</ul>
		<%}%>
		<%if (eAllContents("Hidden") != null){%>
			Hidden
			<ul>
			<%generateHidden()%> 
			</ul>
		<%}%>
		<%if (eAllContents("HierarchicalPosition") != null){%>
			HierarchicalPosition
			<ul>
			<%generateHierarchicalPosition()%> 
			</ul>
		<%}%>
		<%if (eAllContents("Image") != null){%>
			Image
			<ul>
			<%generateImage()%> 
			</ul>
		<%}%>
		<%if (eAllContents("JoinEntity") != null){%>
			JoinEntity
			<ul>
			<%generateJoinEntity()%> 
			</ul>
		<%}%>
		<%if (eAllContents("Link") != null){%>
			Link
			<ul>
			<%generateLink()%> 
			</ul>
		<%}%>
		<%if (eAllContents("LongDate") != null){%>
			LongDate
			<ul>
			<%generateLongDate()%> 
			</ul>
		<%}%>
		<%if (eAllContents("Parameter") != null){%>
			Parameter
			<ul>
			<%generateParameter()%> 
			</ul>
		<%}%>
		<%if (eAllContents("Password") != null){%>
			Password
			<ul>
			<%generatePassword()%> 
			</ul>
		<%}%>
		<%if (eAllContents("Position") != null){%>
			Position
			<ul>
			<%generatePosition()%> 
			</ul>
		<%}%>	
		<%if (eAllContents("Propagate") != null){%>
			Propagate
			<ul>
			<%generatePropagate()%> 
			</ul>
		<%}%>	
		<%if (eAllContents("RadioButton") != null){%>
			RadioButton
			<ul>
			<%generateRadioButton()%> 
			</ul>
		<%}%>	
		<%if (eAllContents("RadioFromReference") != null){%>
			RadioFromReference
			<ul>
			<%generateRadioFromReference()%> 
			</ul>
		<%}%>	
		<%if (eAllContents("Reference") != null){%>
			Reference
			<ul>
			<%generateReference()%> 
			</ul>
		<%}%>	
		<%if (eAllContents("RelationManager") != null){%>
			RelationManager
			<ul>
			<%generateRelationManager()%> 
			</ul>
		<%}%>	
		<%if (eAllContents("Section") != null){%>
			Section
			<ul>
			<%generateSection()%> 
			</ul>
		<%}%>	
		<%if (eAllContents("Select") != null){%>
			Select
			<ul>
			<%generateSelect()%> 
			</ul>
		<%}%>
		<%if (eAllContents("SelectFromReference") != null){%>
			SelectFromReference
			<ul>
			<%generateSelectFromReference()%> 
			</ul>
		<%}%>	
		<%if (eAllContents("Skin") != null){%>
			Skin
			<ul>
			<%generateSkin()%> 
			</ul>
		<%}%>	
		<%if (eAllContents("Skinlet") != null){%>
			Skinlet
			<ul>
			<%generateSkinlet()%> 
			</ul>
		<%}%>	
		<%if (eAllContents("SystemAttributeColor") != null){%>
			SystemAttributeColor
			<ul>
			<%generateSystemAttributeColor()%> 
			</ul>
		<%}%>	
		<%if (eAllContents("SystemAttributeDate") != null){%>
			SystemAttributeDate
			<ul>
			<%generateSystemAttributeDate()%> 
			</ul>
		<%}%>	
		<%if (eAllContents("SystemAttributeFile") != null){%>
			SystemAttributeFile
			<ul>
			<%generateSystemAttributeFile()%> 
			</ul>
		<%}%>
		<%if (eAllContents("SystemAttributeFileToFolder") != null){%>
			SystemAttributeFileToFolder
			<ul>
			<%generateSystemAttributeFileToFolder()%> 
			</ul>
		<%}%>	
		<%if (eAllContents("SystemAttributeImage") != null){%>
			SystemAttributeImage
			<ul>
			<%generateSystemAttributeImage()%> 
			</ul>
		<%}%>
		<%if (eAllContents("SystemAttributeInteger") != null){%>
			SystemAttributeInteger
			<ul>
			<%generateSystemAttributeInteger()%> 
			</ul>
		<%}%>	
		<%if (eAllContents("SystemAttributeLongDate") != null){%>
			SystemAttributeLongDate
			<ul>
			<%generateSystemAttributeLongDate()%> 
			</ul>
		<%}%>
		<%if (eAllContents("SystemAttributePassword") != null){%>
			SystemAttributePassword
			<ul>
			<%generateSystemAttributePassword()%> 
			</ul>
		<%}%>	
		<%if (eAllContents("SystemAttributePosition") != null){%>
			SystemAttributePosition
			<ul>
			<%generateSystemAttributePosition()%> 
			</ul>
		<%}%>	
		<%if (eAllContents("SystemAttributeText") != null){%>
			SystemAttributeText
			<ul>
			<%generateSystemAttributeText()%> 
			</ul>
		<%}%>
		<%if (eAllContents("SystemAttributeVarchar") != null){%>
			SystemAttributeVarchar
			<ul>
			<%generateSystemAttributeVarchar()%> 
			</ul>
		<%}%>	
		<%if (eAllContents("SystemEntity") != null){%>
			SystemEntity
			<ul>
			<%generateSystemEntity()%> 
			</ul>
		<%}%>
		<%if (eAllContents("SystemReference") != null){%>
			SystemReference
			<ul>
			<%generateSystemReference()%> 
			</ul>
		<%}%>	
		<%if (eAllContents("SystemRelation") != null){%>
			SystemRelation
			<ul>
			<%generateSystemRelation()%> 
			</ul>
		<%}%>
		<%if (eAllContents("Template") != null){%>
			Template
			<ul>
			<%generateTemplate()%> 
			</ul>
		<%}%>
		<%if (eAllContents("Text") != null){%>
			Text
			<ul>
			<%generateText()%> 
			</ul>
		<%}%>
		<%if (eAllContents("TextArea") != null){%>
			TextArea
			<ul>
			<%generateTextArea()%> 
			</ul>
		<%}%>
		<%if (eAllContents("Trigger") != null){%>
			Trigger
			<ul>
			<%generateTrigger()%> 
			</ul>
		<%}%>
		<%if (eAllContents("UnsetParameter") != null){%>
			UnsetParameter
			<ul>
			<%generateUnsetParameter()%> 
			</ul>
		<%}%>
		<%if (eAllContents("Validation") != null){%>
			Validation
			<ul>
			<%generateValidation()%> 
			</ul>
		<%}%>
		<%if (eAllContents("Year") != null){%>
			Year
			<ul>
			<%generateYear()%> 
			</ul>
		<%}%>
		</ul>
	</body>
</html>