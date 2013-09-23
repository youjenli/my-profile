package html;

import java.io.IOException;
import java.util.Iterator;
import java.util.Properties;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HtmlTutorialGenerateServlet
 */
public class HtmlTutorialGenerateServlet extends HttpServlet implements
		HtmlTutorialInfo {

	public final String PAGE_FRAGMENT_SETTING_FILE_PATH_INIT_PARAM = "tutorial-fragment-config";
	public final String HTML_TUTORIAL_SKELETON_FILE_PATH_INIT_PARAM = "tutorial-fragment-skeleton";

	public final String TUTORIAL_SIDEBAR_SETTING_NAME = "sidebar";
	public final String TUTORIAL_CONTENT_ROOT_PATH_SETTING_NAME = "contentRootPath";

	public final String DEFAULT_CONTENT_FRAGMENT_PATH = "/WEB-INF/html-tutorial/html-tutorial-announce.jsp";
	public final String DEFAULT_SIDEBAR_FRAGMENT_PATH = "/WEB-INF/html-tutorial/html-tutorial-sidebar.jsp";
	public final String DEFAULT_HTML_TUTORIAL_SKELTEON_PATH = "/WEB-INF/html-tutorial/html-tutorial.jsp";

	private String pageFragmentContentRootPath = null;
	private String skeletonFilePath = null;
	private static final long serialVersionUID = 1L;
	private Properties pageFragmentSetting = new Properties();

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		String pageFragmentSettingFilePath = config
				.getInitParameter(PAGE_FRAGMENT_SETTING_FILE_PATH_INIT_PARAM);
		if (pageFragmentSettingFilePath != null) {
			try {
				pageFragmentSetting.load(config.getServletContext()
						.getResourceAsStream(pageFragmentSettingFilePath));
				log("page fragment loadUp successfull");
			} catch (IOException ioe) {
				String fileErr = "html tutorial page fragment file loading failure.";
				log("page fragment loadUp failure.");
				throw new ServletException(fileErr);
			}
		} else {
			String loadErr = "missing html tutorial page fragment setting";
			throw new ServletException(loadErr);
		}
		pageFragmentContentRootPath = pageFragmentSetting
				.getProperty(TUTORIAL_CONTENT_ROOT_PATH_SETTING_NAME);
		skeletonFilePath = pageFragmentSetting
		.getProperty(HTML_TUTORIAL_SKELETON_FILE_PATH_INIT_PARAM);
		if ( skeletonFilePath == null ){
			skeletonFilePath = DEFAULT_HTML_TUTORIAL_SKELTEON_PATH;
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		HtmlTutorial tut = new HtmlTutorial();
		String topic = request.getParameter(TUTORIAL_TOPIC_REQ_PARAM);

		// determine output how much
		String output = request.getParameter(OUTPUT_REQ_PARAM_NAME);
		if (output == null) {
			request.setAttribute(OUTPUT_REQ_PARAM_NAME, OUTPUT_FULL_PAGE);
		} else if (output.equals(OUTPUT_ONLY_MAIN)) {
			request.setAttribute(OUTPUT_REQ_PARAM_NAME, OUTPUT_ONLY_MAIN);
		} else {
			request.setAttribute(OUTPUT_REQ_PARAM_NAME, OUTPUT_ONLY_CONTENT);
		}

		// determine what to output
		if (topic == null) {
			String[] temp1 = { DEFAULT_CONTENT_FRAGMENT_PATH };
			tut.setContentFragmentPath(temp1);
			String[] temp2 = { DEFAULT_SIDEBAR_FRAGMENT_PATH };
			tut.setSideBarFragmentPath(temp2);
		} else {
			String[] temp1 = null;
			String[] temp2 = null;
			if (topic.equalsIgnoreCase(HTML_FULL_REFERENCE_REQ_PARAM_NAME)) {
				// TODO
			} else {
				temp1 = new String[] { pageFragmentContentRootPath + "/"
						+ pageFragmentSetting.getProperty(topic) };
				tut.setContentFragmentPath(temp1);
				temp2 = new String[] { pageFragmentContentRootPath
						+ "/"
						+ pageFragmentSetting
								.getProperty(TUTORIAL_SIDEBAR_SETTING_NAME) };
				tut.setSideBarFragmentPath(temp2);
			}
		}
		request.setAttribute(HtmlTutorialInfo.REQ_ATTR_PARAM_NAME, tut);

		RequestDispatcher dispatcher = request.getRequestDispatcher(skeletonFilePath);
		dispatcher.forward(request, response);
	}

}
