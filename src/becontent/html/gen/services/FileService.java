package becontent.html.gen.services;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import org.eclipse.core.resources.ResourcesPlugin;

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
	
	public static String getGeneratedFilesPath(ENode node){
		System.out.println("PATH: " + ResourcesPlugin.getWorkspace().getRoot().getProject("becontent.html.gen").getLocation().toOSString());
		return ResourcesPlugin.getWorkspace().getRoot().getProject("becontent.html.gen").getLocation().toOSString()+"/generatedFiles/";		
	}
	
	public static void createImgFolder() throws IOException{
		File sourceDir = new File(ResourcesPlugin.getWorkspace().getRoot().getProject("becontent.html.gen").getLocation().toOSString()+"/src/img/");
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
                copyDirectory(new File(sourceLocation, children[i]),
                        new File(targetLocation, children[i]));
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
