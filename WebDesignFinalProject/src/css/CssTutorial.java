package css;

public class CssTutorial implements CssTutorialInfo {

	private String[] contentFragmentPaths = null;
	private String[] sidebarFragmentPaths = null;
	
	public String[] getContentFragmentPaths() {
		return contentFragmentPaths;
	}
	public void setContentFragmentPaths(String[] contentFragmentFilePaths) {
		this.contentFragmentPaths = contentFragmentFilePaths;
	}
	public String[] getSidebarFragmentPaths() {
		return sidebarFragmentPaths;
	}
	public void setSidebarFragmentPaths(String[] sidebarFragmentFilePaths) {
		this.sidebarFragmentPaths = sidebarFragmentFilePaths;
	}
	
}
