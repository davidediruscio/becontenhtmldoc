package becontent.html.gen.menu;

import java.io.IOException;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IActionDelegate;
import org.eclipse.ui.IObjectActionDelegate;
import org.eclipse.ui.IWorkbenchPart;

import fr.obeo.acceleo.chain.File;
import fr.obeo.acceleo.chain.Folder;
import fr.obeo.acceleo.chain.Log;
import fr.obeo.acceleo.chain.Model;
import fr.obeo.acceleo.chain.impl.spec.CChain;
import fr.obeo.acceleo.gen.IGenFilter;
import fr.obeo.acceleo.gen.template.eval.LaunchManager;
import org.eclipse.jface.viewers.IStructuredSelection;

public class GenerateDocumentation implements IObjectActionDelegate {
	
	private ISelection selection;

	/**
	 * Constructor for Action1.
	 */
	public GenerateDocumentation() {
		super();
	}

	/**
	 * @see IObjectActionDelegate#setActivePart(IAction, IWorkbenchPart)
	 */
	public void setActivePart(IAction action, IWorkbenchPart targetPart) {
	}

	/**
	 * @see IActionDelegate#run(IAction)
	 */
	public void run(IAction action) {		
		Shell shell = new Shell();
		IFile file = (IFile)((IStructuredSelection)selection).getFirstElement();
		String chainFilePath = "/becontent.html.gen/chain/default.chain";

		ResourceSet resSet = new ResourceSetImpl();
		URI chainURI = URI.createPlatformPluginURI(chainFilePath, true);
		Resource res = resSet.createResource(chainURI);
		try {
			res.load(null);
		} catch (IOException e1) {
			MessageDialog.openInformation(
					shell,
					"Error",
					"res.load()");
			e1.printStackTrace();
		}
		
		CChain chain = (CChain) res.getContents().get(0);
		
		EList<File> pars = chain.getParametersFiles();

		try {
			MessageDialog.openInformation(
					shell,
					"Model",
					"Test");
			MessageDialog.openInformation(
					shell,
					"Model",
					getClass().toString());	
			MessageDialog.openInformation(
					shell,
					"Model",
					getClass().getResource("/src/img").toString());
			MessageDialog.openInformation(
					shell,
					"Model",
					getClass().getResource("/src/img").getPath().toString());
			java.io.File a = new java.io.File(getClass().getResource("/becontent/html/gen/img").getPath().toString());
			MessageDialog.openInformation(
					shell,
					"Model",
					String.valueOf(a.isDirectory()));
			
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			MessageDialog.openInformation(
					shell,
					"Model",
					e1.getMessage());
		}
		
		for(File par : pars) {
			if(par instanceof Model) {
				MessageDialog.openInformation(
						shell,
						"Model",
						file.getFullPath().toOSString().replace('\\', '/'));
				 par.setPath(file.getFullPath().toOSString());
			}
			else if(par instanceof Folder) {
				MessageDialog.openInformation(
						shell,
						"Folder",
						file.getFullPath().toOSString().replace('\\', '/').replace("/" + file.getName(), "") + "/generatedDocumentation");
				par.setPath(file.getFullPath().toOSString().replace('\\', '/').replace("/" + file.getName(), "") + "/generatedDocumentation");
			}
			else if(par instanceof Log) {
				MessageDialog.openInformation(
						shell,
						"Log",
						file.getFullPath().toOSString().replace('\\', '/').replace("/" + file.getName(), "") + "/file.log");
				par.setPath(file.getFullPath().toOSString().replace('\\', '/').replace("/" + file.getName(), "") + "/file.log");
			}
		}
				
		IGenFilter genFilter = null;
		try {
			genFilter = new IGenFilter() {
				@Override
				public boolean filter(java.io.File script, IFile targetFile, EObject object) throws CoreException {
					return true;
				}
			};		
		} catch (Exception e) {
			MessageDialog.openInformation(
					shell,
					"Error",
					"1");
			e.printStackTrace();
		}
		
		try {
			chain.launch(genFilter, new NullProgressMonitor(), LaunchManager.create("run", true));
		} catch (Exception e) {
			MessageDialog.openInformation(
					shell,
					"Error",
					"2");
			e.printStackTrace();
		}
		
		
		MessageDialog.openInformation(
			shell,
			"Generate Documentation",
			"The documentation has been generated.");
	}

	/**
	 * @see IActionDelegate#selectionChanged(IAction, ISelection)
	 */
	public void selectionChanged(IAction action, ISelection selection) {
		this.selection = selection;
	}

}
