package becontent.html.gen.services;

import fr.obeo.acceleo.gen.template.eval.ENode;
import fr.obeo.acceleo.gen.template.eval.ENodeCastException;

public class HTMLGenerator {
	
	/**
	 * Generate the HTML code of the page header section
	 * 
	 * @param node
	 * @param title Title of the page
	 * @return The HTML code of the page header section
	 */
	public String generateHeader(ENode node, String title){
		StringBuffer toReturn = new StringBuffer();
		toReturn.append(" <!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\"> \n")
				 		.append(" <html xmlns=\"http://www.w3.org/1999/xhtml\"> \n")
				 		.append(" <head> \n")
						.append(" <title> \n")
						.append(title).append(" \n")
						.append(" </title> \n")
						.append(generateCSS(node))
						.append(generateJS(node))
						.append(" </head> \n");
		return toReturn.toString();
	}

	/**
	 * Generate the CSS code to be included in the header section of the page
	 * 
	 * @param node
	 * @return The CSS code to be included in the header section of the page
	 */
	public String generateCSS(ENode node){
		StringBuffer toReturn = new StringBuffer();
		toReturn.append(" <style type=\"text/css\"> \n")
				.append(" 	/* beContentModelDoc style sheet */ \n")
				.append(" 	.detailDiv   { background-color: #FFFFFF; width: 100%; clear: both;  border: 1px solid #cccccc; line-height: 1.2em; } \n")
				.append(" 	.detailLabel { float: left; vertical-align: top; width: 20%; } \n")
				.append(" 	.detailValue { float: right; width: 80%; } \n")
				.append(" 	.detailValue a { text-decoration: none; } } \n")
				.append(" </style> \n");
		return toReturn.toString();
	}

	/**
	 * Generate the JS code to be included in the header section of the page
	 * 
	 * @param node
	 * @return The JS code to be included in the header section of the page
	 */
	public String generateJS(ENode node){
		StringBuffer toReturn = new StringBuffer();
		toReturn.append(" <script type=\"text/javascript\"> \n")
				.append(" 	<!-- \n")
				.append(" 	function toggle_visibility(id) { \n")
				.append(" 		var e = document.getElementById('div_'+ id); \n")
				.append(" 		if (e.style.display == 'block'){ \n")
				.append(" 			e.style.display = 'none'; \n")
				.append(" 		} else { \n")
				.append(" 			e.style.display = 'block'; \n")
				.append(" 		} \n")
				.append(" 	} \n")
				.append(" 	//--> \n")
				.append(" </script> \n");
		return toReturn.toString();
	}	
	
	/**
	 * Generate the HTML code of the detail div of an element attribute
	 * 
	 * @param node
	 * @param label
	 * @param value
	 * @return
	 */
	public String generateDetailDiv(ENode node, String label, String value){
		StringBuffer toReturn = new StringBuffer();
		toReturn.append(" <div class=\"detailDiv\"> \n")
				.append(" 	<span class=\"detailLabel\"> \n")
				.append("   	<code>" + label + ": </code> \n")
				.append(" 	</span> \n")
				.append(" 	<span class=\"detailValue\"> \n")
				.append(" 		<code><b>" + value!=null?value:"..." + "</b></code> \n")
				.append(" 	</span> \n")
				.append(" </div> \n");
		return toReturn.toString();
	}
	
	/**
	 * Generate the HTML code of the detail div of an element attribute
	 * 
	 * @param node
	 * @param label
	 * @param value
	 * @return
	 * @throws ENodeCastException 
	 * @throws ENodeCastException 
	 */
	public String generateInnerDetailDiv(ENode node, String label, String value, String innerDiv) throws ENodeCastException {
		StringBuffer toReturn = new StringBuffer();
		toReturn.append(" <div class=\"detailDiv\"> \n")
				.append(" 	<span class=\"detailLabel\"> \n")
				.append("   	<code>" + label + ": </code> \n")
				.append(" 	</span> \n")
				.append(" 	<span class=\"detailValue\"> \n")
				.append(" 		<a href=\"#\" onclick=\"toggle_visibility('" + node.getEObject().eClass().getName() + "_" + value +"');\"> \n")
				.append(" 		<code><b>" + value!=null?value:"..." + "</b></code> \n")
				.append("   	</a> ")
				.append("       <div id=\"div_" + node.getEObject().eClass().getName() + "_" + value +"\" style=\"display: none;\">" +  innerDiv +"</div>")
				.append(" 	</span> \n")
				.append(" </div> \n");
		return toReturn.toString();
	}	

	/**
	 * Generate the HTML code of the detail div of an element attribute
	 * 
	 * @param node
	 * @param label
	 * @param value
	 * @return
	 * @throws ENodeCastException 
	 */
	public String generateReferenceDetailDiv(ENode node, String label, String path, String name) throws ENodeCastException{
		StringBuffer toReturn = new StringBuffer();
		toReturn.append(" <div class=\"detailDiv\"> \n")
				.append(" 	<span class=\"detailLabel\"> \n")
				.append("   	<code>" + label + ": </code> \n")
				.append(" 	</span> \n")
				.append(" 	<span class=\"detailValue\"> \n")
				.append(" 		<code><b><a href=\""+ path +"\">"+ (!"".equals(name)?name:"...") +"</a></b></code> \n")
				.append(" 	</span> \n")
				.append(" </div> \n");
		return toReturn.toString();
	}
	
	public String generateBody(ENode node, String elementName, String content) throws ENodeCastException{
		StringBuffer toReturn = new StringBuffer();
		toReturn.append(" <body> \n")
				.append(" 	<h2> \n")
				.append(" 		<font size=\"-1\">").append(node.getEObject().eClass().getName()).append("</font> \n")
				.append(" 		<BR /> \n")
				.append(" 		").append(elementName).append(" \n")
				.append(" 	</h2> \n")
				.append(" 	<HR /> \n")
				.append(" 	<div style=\"width: 100%; padding: 3px; \"> \n")
				.append(" 		<div style=\"float: left; background-color: #CCCCFF; width: 100%;\" > \n")
				.append(" 			<font size=\"+2\"> \n")
				.append(" 			<b>Element Summary</b> \n")
				.append(" 			</font> \n")
				.append(" 		</div> \n")
				.append(" ").append(content).append(" \n")
				.append(" 	</div> \n")
				.append(" </body> \n")
				.append(" </html> \n");
		return toReturn.toString();
	}

	public String generateHTML(ENode node, String elementName, String bodyContent) {
		StringBuffer toReturn = new StringBuffer();
		try {
			toReturn.append(generateHeader(node, elementName)).append(generateBody(node, elementName, bodyContent));
		} catch (ENodeCastException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		return toReturn.toString();
	}
	
	public String generateIndexLink(ENode node, String name, String link) throws ENodeCastException {
		StringBuffer toReturn = new StringBuffer();
		toReturn.append("<code><b><a href=\"").append(link+"\">"+name+"</a></b></code><br />\n");
		return toReturn.toString();
	}
}
