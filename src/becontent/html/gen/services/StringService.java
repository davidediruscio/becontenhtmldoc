package becontent.html.gen.services;

import fr.obeo.acceleo.gen.template.eval.ENode;

public class StringService {
	public String cleaner(ENode node, String toClean) {
		toClean = toClean.replaceAll("\n", "");
		toClean = toClean.replaceAll("\r", "");
		toClean = toClean.replaceAll("\t", ""); 
		return toClean;
	}
}
