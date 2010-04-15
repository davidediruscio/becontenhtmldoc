package becontent.html.gen.services;

import fr.obeo.acceleo.gen.template.eval.ENode;

public class StringService {
	public String Cleaner(ENode node, String toClean) {
		return toClean.replaceAll("\n", "");
	}
}
