package becontent.html.gen.menu;

import java.util.Iterator;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IActionDelegate;
import org.eclipse.ui.IObjectActionDelegate;
import org.eclipse.ui.IWorkbenchPart;

import fr.obeo.acceleo.chain.Chain;
import fr.obeo.acceleo.chain.ChainCall;
import fr.obeo.acceleo.chain.ChainFactory;
import fr.obeo.acceleo.chain.Folder;
import fr.obeo.acceleo.chain.Log;
import fr.obeo.acceleo.chain.Model;
import fr.obeo.acceleo.chain.Repository;
import fr.obeo.acceleo.chain.impl.spec.CChain;
import fr.obeo.acceleo.chain.tools.CLoaderUtils;
import fr.obeo.acceleo.gen.IGenFilter;
import fr.obeo.acceleo.gen.template.eval.LaunchManager;
import fr.obeo.acceleo.tools.plugins.AcceleoModuleProvider;
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
		
		String chainFileUri = "/becontent.html.gen/chain/default.chain";
		CChain chain = getCalledChain(new Path(chainFileUri));
		Repository rep = chain.getRepository();

		Model model = ChainFactory.eINSTANCE.createModel();
		model.setPath(file.getFullPath().toOSString());
		EList lista = rep.getMembers();
		Iterator iter = lista.iterator();
		while ( iter.hasNext() ) {
			String temp = (String)(iter.next());
			MessageDialog.openInformation(
					shell,
					"Error",
					temp);
		}
		Folder folder = ChainFactory.eINSTANCE.createFolder();
		folder.setPath(file.getLocation().toOSString() + IPath.SEPARATOR + "generatedDocumentation"); 
		Log log = ChainFactory.eINSTANCE.createLog();
		log.setPath(file.getLocation().toOSString() + IPath.SEPARATOR + "file.log");
		
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
		}
		
		
		MessageDialog.openInformation(
			shell,
			"ProvaPlugin Plug-in",
			"New Action was executed.");
	}
	
	/**
	 * Creates a chain resource
	 * @param callPath
	 * @return the Chain resource
	 */
	private CChain getCalledChain(IPath callPath) {
		IFile workspaceFile = ResourcesPlugin.getWorkspace().getRoot().getFile(callPath);
		if (workspaceFile.exists()) {
			return CLoaderUtils.getCChainForChainFile(workspaceFile);
		} else {
			java.io.File file = AcceleoModuleProvider.getDefault().getFile(callPath);
			if (file != null && file.exists()) {
				URI chainURI = URI.createFileURI(file.getAbsolutePath());
				return CLoaderUtils.getCChainForChainURI(chainURI);
			}
		}
		return null;
	}

	/**
	 * @see IActionDelegate#selectionChanged(IAction, ISelection)
	 */
	public void selectionChanged(IAction action, ISelection selection) {
		this.selection = selection;
	}

}
