package becontent.html.gen.services;

import fr.obeo.acceleo.gen.template.eval.ENode;

public class HTMLUtils {

	public String generateCSS(ENode node){
		StringBuffer toReturn = new StringBuffer();
		toReturn.append(" <STYLE type=\"text/css\"> \n")
				 		.append(" /* beContentModelDoc style sheet */ \n")
				 		.append(" .detailDiv   { background-color: #FFFFFF; width: 100%; } \n")
						.append(" .detailLabel { float: left; vertical-align: top; width: 20%; } \n")
						.append(" .detailValue { float: right; width: 80%; } \n")
					.append(" </STYLE> \n");
		return toReturn.toString();
	}
	
	public String generateJS(ENode node){
		StringBuffer toReturn = new StringBuffer();
		toReturn.append(" <SCRIPT type=\"text/javascript\"> \n")
					.append(" <!-- \n")
					.append(" function toggle_visibility(id) { \n")
						.append(" var e = document.getElementById('div_'+ id); \n")
						.append(" var span = document.getElementById('span_'+ id); \n")
						.append(" if (e.style.display == 'block'){ \n")
							.append(" e.style.display = 'none'; \n")
							.append(" span.innerHTML = '-->'; \n")
							.append(" } else { \n")
							.append(" e.style.display = 'block'; \n")
							.append(" span.innerHTML = '<--'; \n")
							.append(" } \n")
							.append(" } \n")
					.append(" //--> \n")
				.append(" </SCRIPT> \n");
		return toReturn.toString();
	}	
}
