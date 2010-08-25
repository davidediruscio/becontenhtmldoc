package becontent.html.gen.services;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.swt.widgets.Shell;

import fr.obeo.acceleo.gen.template.eval.ENode;
import fr.obeo.acceleo.gen.template.scripts.IScript;
import fr.obeo.acceleo.gen.template.scripts.SpecificScript;

public class FileService {
	
	public String getScriptPath(ENode node){		
		String res = ""; //$NON-NLS-1$
		IScript script = node.getContainerTemplateElement().getScript();
		if (script instanceof SpecificScript) {
			res =  script.getFile().getParent();
		}
		return res;
	}
	
	/**
	 * Return the complete path of the generated files folder. 
	 * The path separator is system-dependent.
	 * 
	 * @param node
	 * @param toOSString
	 * @return
	 */
	public static String getGeneratedFilesPath(ENode node){
		return FileService.getGeneratedFilesPath(node, true);		
	}

	/**
	 * Return the complete path of the generated files folder. 
	 * If toOSString is true the path separator is <i>system-dependent</i>
	 * otherwise the path separator is <i>the slash (/)</i>.
	 * 
	 * @param node
	 * @param toOSString
	 * @return the complete path of the generated files folder
	 */
	public static String getGeneratedFilesPath(ENode node, boolean toOSString){
		if ( toOSString ) {
			return ResourcesPlugin.getWorkspace().getRoot().getProjects()[0].getLocation().toOSString()+ File.separatorChar + "generatedDocumentation" + File.separatorChar;		
		}
		else
			return ResourcesPlugin.getWorkspace().getRoot().getProjects()[0].getLocation()+"/generatedDocumentation/";		
	}
	
	public static void createImgFolder(String uri) throws IOException{
		//File sourceDir = new File(Platform.resolve(Platform.getBundle("becontent.html.gen").getEntry("/")).getPath().substring(1) + "/src/img");
		//ClassLoader.getSystemClassLoader().getResource("C:/eclipse_Acceleo/plugins/becontent.html.gen_1.0.0.jar!/src/img");
		File sourceDir = new File(uri);
		File targetDir = new File(FileService.getGeneratedFilesPath(null)+"img/");
		FileService.copyDirectory(sourceDir, targetDir);
	}
	
    private static void copyDirectory(File sourceLocation , File targetLocation)
    throws IOException {

        if (sourceLocation.isDirectory()) {
            if (!targetLocation.exists()) {
                targetLocation.mkdir();
            }
            
            String[] children = sourceLocation.list();
            for (int i=0; i<children.length; i++) {
            	if ( children[i].contains(".ico") || children[i].contains(".png") ){
            		copyDirectory(new File(sourceLocation, children[i]),
                        new File(targetLocation, children[i]));
            	}
            }
        } else {      
            InputStream in = new FileInputStream(sourceLocation);
            OutputStream out = new FileOutputStream(targetLocation);
            
            byte[] buf = new byte[1024];
            int len;
            while ((len = in.read(buf)) > 0) {
                out.write(buf, 0, len);
            }
            in.close();
            out.close();
        }
    }
}
