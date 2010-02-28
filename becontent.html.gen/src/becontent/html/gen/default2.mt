<%
metamodel http://becontent.metamodel
%>

<%script type="becontent.CustomEntity" name="default2" file="<%name%>.html"%>


<html>
 <head></head>
 <body>
  <h1><%name%></h1>
  
  <!-- esempi -->
  <ul>
  <%for (fields){%>
  <%if (current().eClass().name.equalsIgnoreCase("AttributeVarchar")) {%>
   <ol>Length: <%current().metamodel::length%></ol>
   <ol>Name: <%current().metamodel::name%></ol>
   <ol>PrimaryKey: <%(current().isPrimaryKey)%></ol>
   <ol>Mandatory: <%(current().isMandatory)%></ol>
   <ol>Presented: <%(current().isPresented)%></ol>
  <%}%>
   <li><%current().eAllContents().getProperty("length")%></li>
   <li><%current().evaluate("name")%></li>
   <li><%current().self()%></li>
   <li><%current().eClass()%>
   <li></li>
   
  <%}%>
  </ul>
  
 </body>
</html>