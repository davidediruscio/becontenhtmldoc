<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
%>

<%script type="becontent.EntityManagerPage" name="generate" post="trim()"%>
	<% generateDetailDiv("Name", name ) %>
	<% generateDetailDiv("Skin", skin ) %>
	<%for (eContents().filter("Form")){%>
		<%for (elements){%>
			<% generateDetailDiv(current().eClass().name, current().name, current().generate() ) %>
		<%}%>
	<%}%>	
		
<%script type="becontent.CustomEntity" name="EntityManagerPage" file="<%current().eClass().name%>_<%name%>.html"%>
	<% generateHTML( name.toUpperCase(), current().generate() ) %>

<%script type="becontent.CustomEntity" name="CustomEntity" file="<%current().eClass().name%>_<%name%>.html"%>

<% generateHeader( name.toUpperCase() ) %>
<BODY>
	<H2>
	<FONT SIZE="-1"><% current().eClass().name %></FONT>
	<BR>
	<% name %></H2>
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
				<CODE>Variable Name: </CODE>
			</SPAN>
			<SPAN class="detailValue">
				<CODE><B><%current().variableName%></B></CODE>
			</SPAN>
		</DIV>
		<DIV class="detailDiv">
			<SPAN class="detailLabel">
				<CODE>Is Owned:</CODE></FONT>
			</SPAN>
			<SPAN class="detailValue">
				<CODE><B><%current().isOwned()%></B></CODE>
			</SPAN>
		</DIV>
		<%for (fields){%>
		<DIV class="detailDiv">
			<SPAN class="detailLabel">
				<CODE><%current().eClass().name%>: </CODE>
			</SPAN>
			<SPAN class="detailValue">
				<a href="#" onclick="toggle_visibility('<%current().eClass().name%>_<%current().name%>');">
					<CODE><B>
					<%if ( current().name != null ){%>
						<%current().name%>
					<%}else{%>
						...
					<%}%>
					</B></CODE>
				</a>			
				<div id="div_<%current().eClass().name%>_<%current().name%>" style="display: none;"><%current().generate()%></div>
			</SPAN>
		</DIV>				
		<%}%>	
	</DIV>
</BODY>
</HTML>