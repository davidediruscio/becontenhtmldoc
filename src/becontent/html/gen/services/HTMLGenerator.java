package becontent.html.gen.services;

import org.eclipse.emf.ecore.EModelElement;
import org.eclipse.emf.ecore.EObject;

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
				 		.append(" <HTML> \n")
				 		.append(" <HEAD> \n")
						.append(" <TITLE> \n")
						.append(title).append(" \n")
						.append("</TITLE> \n")
						.append(generateCSS(node))
						.append(generateJS(node))
						.append(" </HEAD> \n");
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
		toReturn.append(" <STYLE type=\"text/css\"> \n")
				.append(" 	/* beContentModelDoc style sheet */ \n")
				.append(" 	.detailDiv   { background-color: #FFFFFF; width: 100%; clear: both;  border: 1px solid #cccccc; line-height: 1.2em; } \n")
				.append(" 	.detailLabel { float: left; vertical-align: top; width: 20%; } \n")
				.append(" 	.detailValue { float: right; width: 80%; } \n")
				.append(" 	.detailValue a { text-decoration: none; } } \n")
				.append(" </STYLE> \n");
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
		toReturn.append(" <SCRIPT type=\"text/javascript\"> \n")
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
				.append(" </SCRIPT> \n");
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
		toReturn.append(" <DIV class=\"detailDiv\"> \n")
				.append(" 	<SPAN class=\"detailLabel\"> \n")
				.append("   	<CODE>" + label + ": </CODE> \n")
				.append(" 	</SPAN> \n")
				.append(" 	<SPAN class=\"detailValue\"> \n")
				.append(" 		<CODE><B>" + value!=null?value:"..." + "</B></CODE> \n")
				.append(" 	</SPAN> \n")
				.append(" </DIV> \n");
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
		toReturn.append(" <DIV class=\"detailDiv\"> \n")
				.append(" 	<SPAN class=\"detailLabel\"> \n")
				.append("   	<CODE>" + label + ": </CODE> \n")
				.append(" 	</SPAN> \n")
				.append(" 	<SPAN class=\"detailValue\"> \n")
				.append(" 		<a href=\"#\" onclick=\"toggle_visibility('" + node.getEObject().eClass().getName() + "_" + value +"');\"> \n")
				.append(" 		<CODE><B>" + value!=null?value:"..." + "</B></CODE> \n")
				.append("   	</a> ")
				.append("       <div id=\"div_" + node.getEObject().eClass().getName() + "_" + value +"\" style=\"display: none;\">" +  innerDiv +"</div>")
				.append(" 	</SPAN> \n")
				.append(" </DIV> \n");
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
	public String generateReferenceDetailDiv(ENode node, String label, String value) throws ENodeCastException{
		StringBuffer toReturn = new StringBuffer();
		toReturn.append(" <DIV class=\"detailDiv\"> \n")
				.append(" 	<SPAN class=\"detailLabel\"> \n")
				.append("   	<CODE>" + label + ": </CODE> \n")
				.append(" 	</SPAN> \n")
				.append(" 	<SPAN class=\"detailValue\"> \n")
				.append(" 		<CODE><B><a href=\"").append(node.getEObject().eClass().getName()+"_"+value+".html\">"+value+"</a></B></CODE> \n")
				.append(" 	</SPAN> \n")
				.append(" </DIV> \n");
		return toReturn.toString();
	}
	
	public String generateBody(ENode node, String elementName, String content) throws ENodeCastException{
		StringBuffer toReturn = new StringBuffer();
		toReturn.append(" <BODY> \n")
				.append(" 	<H2> \n")
				.append(" 		<FONT SIZE=\"-1\">").append(node.getEObject().eClass().getName()).append("</FONT> \n")
				.append(" 		<BR> \n")
				.append(" 		").append(elementName).append(" \n")
				.append(" 	</H2> \n")
				.append(" 	<HR> \n")
				.append(" 	<DIV style=\"width: 100%; padding: 3px; \"> \n")
				.append(" 		<DIV style=\"float: left; background-color: #CCCCFF; width: 100%;\" > \n")
				.append(" 			<FONT SIZE=\"+2\"> \n")
				.append(" 			<B>Element Summary</B> \n")
				.append(" 			</FONT> \n")
				.append(" 		</DIV> \n")
				.append(" ").append(content).append(" \n")
				.append(" 	</DIV> \n")
				.append(" </BODY> \n")
				.append(" </HTML> \n");
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
}
