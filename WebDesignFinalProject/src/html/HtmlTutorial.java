package html;

public class HtmlTutorial implements HtmlTutorialInfo {

	private String[] contentFragmentPath;

	private String[] sideBarFragmentPath;

	/*
	 * (non-Javadoc)
	 * 
	 * @see html.HtmlTutorialInfo#getContentFragmentPath()
	 */
	public String[] getContentFragmentPath() {
		return contentFragmentPath;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see html.HtmlTutorialInfo#getSideBarFragmentPath()
	 */
	public String[] getSideBarFragmentPath() {
		return sideBarFragmentPath;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see html.HtmlTutorialInfo#setSideBarFragmentPath(java.lang.String[])
	 */
	public void setSideBarFragmentPath(String[] sideBarFragmentPath) {
		this.sideBarFragmentPath = sideBarFragmentPath;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see html.HtmlTutorialInfo#setContentFragmentPath(java.lang.String[])
	 */
	public void setContentFragmentPath(String[] contentFragmentPath) {
		this.contentFragmentPath = contentFragmentPath;
	}

}
