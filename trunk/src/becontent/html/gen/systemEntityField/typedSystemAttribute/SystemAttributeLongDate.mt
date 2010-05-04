<%
metamodel http://becontent.metamodel
import becontent.html.gen.services.HTMLGenerator
import becontent.html.gen.services.Names
import becontent.html.gen.services.StringService
%>

<%script type="becontent.SystemAttributeLongDate" name="generate" post="trim()"%>
 <% generateDetailDiv("isMandatory", isMandatory ) %>
 <% generateDetailDiv("isPresented", isPresented ) %>
 <% generateDetailDiv("isSearchPresentationBody", isSearchPresentationBody ) %>
 <% generateDetailDiv("isSearchPresentationHead", isSearchPresentationHead ) %>
 <% generateDetailDiv("isTextSearch", isTextSearch ) %>
 <% generateDetailDiv("name", name ) %>
 
<%script type="becontent.SystemAttributeLongDate" name="SystemAttributeLongDate" file="<%cleaner(current().generateFilename())%>"%>
 <% generateHTML( current.eClass().name, current().generate() ) %>