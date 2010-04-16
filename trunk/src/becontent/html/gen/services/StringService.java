package becontent.html.gen.services;

import org.eclipse.core.resources.ResourcesPlugin;

import fr.obeo.acceleo.gen.template.eval.ENode;
import fr.obeo.acceleo.gen.template.scripts.IScript;
import fr.obeo.acceleo.gen.template.scripts.SpecificScript;

public class StringService {
	public String Cleaner(ENode node, String toClean) {
		toClean = toClean.replaceAll("\n", "");
		toClean = toClean.replaceAll("\r", "");
		return toClean;
	}
	
	public String getScriptPath(ENode node){
		
		String res = ""; //$NON-NLS-1$
		IScript script = node.getContainerTemplateElement().getScript();
		if (script instanceof SpecificScript) {
			res =  script.getFile().getParent();
		}
		return res;
	}
	
	public static String getGeneratedFilesPath(ENode node){
		return ResourcesPlugin.getWorkspace().getRoot().getProject("becontent.html.gen").getLocation().toOSString()+"/generatedFiles/";		
	}
}
