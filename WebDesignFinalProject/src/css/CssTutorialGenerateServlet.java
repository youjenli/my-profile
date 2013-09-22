package css;

import java.io.IOException;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CssTutorialGenerateServlet
 */
public class CssTutorialGenerateServlet extends HttpServlet implements CssTutorialInfo{
	private static final long serialVersionUID = 1L;
	
	public final String DEFAULT_TUTORIAL_SKELETON_FILE_PATH = "/WEB-INF/css-tutorial/css-tutorial.jsp";
	public final String DEFAULT_CONTENT_ROOT_PATH = "/WEB-INF/css-tutorial";
	public final String DEFAULT_CONTENT_FRAGMENT_PATH = "/WEB-INF/css-tutorial/css-basic.jsp";
	public final String DEFAULT_SIDEBAR_FRAGMENT_PATH = "/WEB-INF/css-tutorial/css-tutorial-sidebar.jsp";
	
	private Properties tutorialConfig = new Properties();
	private String pageFragmentContentRootPath = null;
	private String defaultContentPath = null;
	private String skeletonFilePath = null;
	private String sidebarContentPath = null;
	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
	    String tutorialConfigFilePath = config.getInitParameter(TUTORIAL_CONFIG_FILE_PATH_INIT_PARAM);
	    if ( tutorialConfigFilePath == null ){
	    	String msg = "Missing init param : css tutorial config file path";
	    	throw new ServletException(msg);
	    }
	    else {
	    	try{
	    		tutorialConfig.load( config.getServletContext().getResourceAsStream(
	    				tutorialConfigFilePath) );
	    	}
	    	catch(IOException ioe){
	    		String msg = "Loading css tutorial config file failure: " + ioe.getMessage();
	    		throw new ServletException(msg);
	    	}
	    }
	    pageFragmentContentRootPath = tutorialConfig.getProperty(TUTORIAL_CONTENT_ROOT_PATH_SETTING_NAME);
	    if ( pageFragmentContentRootPath == null ){
	    	pageFragmentContentRootPath = DEFAULT_CONTENT_ROOT_PATH;
	    }	    
	    skeletonFilePath = tutorialConfig.getProperty(TUTORIAL_SKELETON_FILE_PATH_SETTING_NAME);
	    if ( skeletonFilePath == null ){
	    	skeletonFilePath = DEFAULT_TUTORIAL_SKELETON_FILE_PATH;
	    }
	    defaultContentPath = tutorialConfig.getProperty(TUTORIAL_DEFAULT_CONTENT_SETTING_NAME);
	    if ( defaultContentPath == null ){
	    	defaultContentPath = DEFAULT_CONTENT_FRAGMENT_PATH;
	    }
	    sidebarContentPath = tutorialConfig.getProperty(TUTORIAL_SIDEBAR_SETTING_NAME);
	    if ( sidebarContentPath == null ){
	    	sidebarContentPath = DEFAULT_SIDEBAR_FRAGMENT_PATH;
	    }
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// determine output how much
		String output = request.getParameter(OUTPUT_REQ_PARAM_NAME);
		if (output == null) {
			request.setAttribute(OUTPUT_REQ_PARAM_NAME, OUTPUT_FULL_PAGE);
		} else if (output.equals(OUTPUT_MAIN_ONLY)) {
			request.setAttribute(OUTPUT_REQ_PARAM_NAME, OUTPUT_MAIN_ONLY);
		} else {
			request.setAttribute(OUTPUT_REQ_PARAM_NAME, OUTPUT_CONTENT_ONLY);
		}
		
		// determine what to output
		CssTutorial tut = new CssTutorial();
		String topic = request.getParameter(TUTORIAL_TOPIC_REQ_PARAM);
		if (topic == null) {
			String[] temp1 = { defaultContentPath };
			tut.setContentFragmentPaths(temp1);
			String[] temp2 = { sidebarContentPath };
			tut.setSidebarFragmentPaths(temp2);
		} else {
			String[] temp1 = null;
			String[] temp2 = null;
			if (topic.equalsIgnoreCase(CSS_FULL_REFERENCE_REQ_PARAM_NAME)) {
				// TODO
			} else {
				temp1 = new String[] { pageFragmentContentRootPath + "/"
						+ tutorialConfig.getProperty(topic) };
				tut.setContentFragmentPaths(temp1);
				temp2 = new String[] { pageFragmentContentRootPath
						+ "/"
						+ tutorialConfig.getProperty(TUTORIAL_SIDEBAR_SETTING_NAME) };
				tut.setSidebarFragmentPaths(temp2);
			}
		}
		request.setAttribute(CssTutorialInfo.DISPATCH_ATTR_PARAM_NAME, tut);
		RequestDispatcher dispatcher = request.getRequestDispatcher(skeletonFilePath);
		dispatcher.forward(request, response);
	}

}
