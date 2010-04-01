<%
metamodel http://becontent.metamodel
import becontent.html.gen.formElement.notStructuredElement.Checkbox
import becontent.html.gen.formElement.notStructuredElement.Color
import becontent.html.gen.formElement.notStructuredElement.Date
import becontent.html.gen.formElement.notStructuredElement.Editor
import becontent.html.gen.formElement.notStructuredElement.File
import becontent.html.gen.formElement.notStructuredElement.FileToFolder
import becontent.html.gen.formElement.notStructuredElement.Hidden
import becontent.html.gen.formElement.notStructuredElement.HierarchicalPosition
import becontent.html.gen.formElement.notStructuredElement.Image
import becontent.html.gen.formElement.notStructuredElement.Link
import becontent.html.gen.formElement.notStructuredElement.LongDate
import becontent.html.gen.formElement.notStructuredElement.Password
import becontent.html.gen.formElement.notStructuredElement.Position
import becontent.html.gen.formElement.notStructuredElement.RadioButton
import becontent.html.gen.formElement.notStructuredElement.RadioFromReference
import becontent.html.gen.formElement.notStructuredElement.RelationManager
import becontent.html.gen.formElement.notStructuredElement.Section
import becontent.html.gen.formElement.notStructuredElement.Select
import becontent.html.gen.formElement.notStructuredElement.SelectFromReference
import becontent.html.gen.formElement.notStructuredElement.Text
import becontent.html.gen.formElement.notStructuredElement.Textarea
import becontent.html.gen.formElement.notStructuredElement.Year
%>

<%script type="becontent.EntityManagerPage" name="EntityManagerPage" file="<%current().eClass().name%>_<%fileName%>.html"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
	<TITLE>
	<% fileName.toUpperCase() %>
	</TITLE>
 	<STYLE type="text/css">
 		/* beContentModelDoc style sheet */
 		.detailDiv   { background-color: #FFFFFF; width: 100%; }
		.detailLabel { float: left; vertical-align: top; width: 20%; }
		.detailValue { float: right; width: 80%; }
	</STYLE>
	<script type="text/javascript">
	<!--
	    function toggle_visibility(id) {
	       var e = document.getElementById('div_'+ id);
	       var span = document.getElementById('span_'+ id);
	       if(e.style.display == 'block'){
	          e.style.display = 'none';
	          span.innerHTML = '-->'
	       } else {
	          e.style.display = 'block';
	          span.innerHTML = '<--'
	       }
	    }
	//-->
	</script>
</HEAD>
<BODY>
	<H2>
	<FONT SIZE="-1"><% current().eClass().name %></FONT>
	<BR>
	<% fileName %></H2>
	<HR>
	<DIV style="width: 100%; padding: 3px; ">
		<DIV style="float: left; background-color: #CCCCFF; width: 100%;" >
			<FONT SIZE="+2">
			<B>Element Summary</B>
			</FONT>
		</DIV>
		<DIV class="detailDiv">
			<SPAN class="detailLabel">
				<CODE>Name: </CODE>
			</SPAN>
			<SPAN class="detailValue">
				<CODE><B><% current().eClass().name %></B></CODE>
			</SPAN>
		</DIV>
		<DIV class="detailDiv">
			<SPAN class="detailLabel">
				<CODE>Skin: </CODE>
			</SPAN>
			<SPAN class="detailValue">
				<CODE><B><% skin %></B>&nbsp;</CODE>
			</SPAN>
		</DIV>
		<%for (eContents().filter("Form")){%>
			<%for (elements){%>
				<DIV class="detailDiv">
					<SPAN class="detailLabel">
						<CODE><%current().eClass().name%>: </CODE>
					</SPAN>
					<SPAN class="detailValue">
						<CODE><B><%current().name%></B> <a href="#" onclick="toggle_visibility('<%current().eClass().name%>_<%current().name%>');"> <span id="span_<%current().eClass().name%>_<%current().name%>">--></span> </a></CODE>
						<div id="div_<%current().eClass().name%>_<%current().name%>" style="display: none;"><%current().Generate()%></div>
					</SPAN>
				</DIV>				
			<%}%>
		<%}%>	
	</DIV>
</BODY>
</HTML>