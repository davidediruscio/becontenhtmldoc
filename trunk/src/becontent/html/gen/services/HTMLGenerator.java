package becontent.html.gen.services;

import fr.obeo.acceleo.gen.template.eval.ENode;

public class HTMLGenerator {
	
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

	public String generateCSS(ENode node){
		StringBuffer toReturn = new StringBuffer();
		toReturn.append(" <STYLE type=\"text/css\"> \n")
				 		.append(" /* beContentModelDoc style sheet */ \n")
				 		.append(" .detailDiv   { background-color: #FFFFFF; width: 100%; clear: both;  border: 1px solid #cccccc; line-height: 1.2em; } \n")
						.append(" .detailLabel { float: left; vertical-align: top; width: 20%; } \n")
						.append(" .detailValue { float: right; width: 80%; } \n")
						.append(" .detailValue a { text-decoration: none; } } \n")
					.append(" </STYLE> \n");
		return toReturn.toString();
	}
	
	public String generateJS(ENode node){
		StringBuffer toReturn = new StringBuffer();
		toReturn.append(" <SCRIPT type=\"text/javascript\"> \n")
					.append(" <!-- \n")
					.append(" function toggle_visibility(id) { \n")
						.append(" var e = document.getElementById('div_'+ id); \n")
						//.append(" var span = document.getElementById('span_'+ id); \n")
						.append(" if (e.style.display == 'block'){ \n")
							.append(" e.style.display = 'none'; \n")
							//.append(" span.innerHTML = '-->'; \n")
							.append(" } else { \n")
							.append(" e.style.display = 'block'; \n")
							//.append(" span.innerHTML = '<--'; \n")
							.append(" } \n")
							.append(" } \n")
					.append(" //--> \n")
				.append(" </SCRIPT> \n");
		return toReturn.toString();
	}	
}
