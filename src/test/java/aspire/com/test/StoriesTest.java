package aspire.com.test;

import static java.util.Arrays.asList;
import static org.jbehave.core.io.CodeLocations.codeLocationFromClass;
import static org.jbehave.core.reporters.Format.CONSOLE;
import static org.jbehave.core.reporters.Format.XML; // DJG
import static org.jbehave.web.selenium.WebDriverHtmlOutput.WEB_DRIVER_HTML;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileDeleteStrategy;
import org.jbehave.core.configuration.Configuration;
import org.jbehave.core.embedder.Embedder;
import org.jbehave.core.embedder.MetaFilter;
import org.jbehave.core.embedder.StoryControls;
import org.jbehave.core.embedder.StoryManager;
import org.jbehave.core.failures.FailingUponPendingStep;
import org.jbehave.core.failures.PendingStepStrategy;
import org.jbehave.core.io.LoadFromClasspath;
import org.jbehave.core.io.StoryFinder;
import org.jbehave.core.junit.JUnitStories;
import org.jbehave.core.model.Meta;
import org.jbehave.core.model.Scenario;
import org.jbehave.core.model.Story;
import org.jbehave.core.reporters.CrossReference;
import org.jbehave.core.reporters.Format;
import org.jbehave.core.reporters.StoryReporterBuilder;
import org.jbehave.core.steps.InjectableStepsFactory;
import org.jbehave.core.steps.spring.SpringApplicationContextFactory;
import org.jbehave.core.steps.spring.SpringStepsFactory;
import org.jbehave.web.selenium.ContextView;
import org.jbehave.web.selenium.LocalFrameContextView;
import org.jbehave.web.selenium.SeleniumConfiguration;
import org.jbehave.web.selenium.SeleniumContext;
import org.jbehave.web.selenium.SeleniumContextOutput;
import org.jbehave.web.selenium.SeleniumStepMonitor;
import org.springframework.context.ApplicationContext;

import com.aspire.automationReport.ASReport;

import aspire.com.jira.JiraApi;
import jo.aspire.generic.EnvirommentManager;

/**
 * Class which provides the link between the JBehave's executor framework
 * (called Embedder) and the textual stories.
 */

// @RunWith(JUnitReportingRunner.class)
public class StoriesTest extends JUnitStories {

	private static Embedder embedder = null;
	private static boolean rerunFailedFlag = false;
	public static PendingStepStrategy pendingStepStrategy = new FailingUponPendingStep();
	public static CrossReference crossReference = new CrossReference().withJsonOnly()
			.withPendingStepStrategy(pendingStepStrategy).withOutputAfterEachStory(true)
			.excludingStoriesWithNoExecutedScenarios(true);
	public static ContextView contextView = new LocalFrameContextView().sized(640, 80).located(10, 10);
	public static SeleniumContext seleniumContext = new SeleniumContext();
	public static SeleniumStepMonitor stepMonitor = new SeleniumStepMonitor(contextView, seleniumContext,
			crossReference.getStepMonitor());
	Format[] formats = new Format[] { new SeleniumContextOutput(seleniumContext), CONSOLE, XML, // DJG
			WEB_DRIVER_HTML, ASReport.Aspire_Report };
	StoryReporterBuilder reporterBuilder = new StoryReporterBuilder()
			.withCodeLocation(codeLocationFromClass(StoriesTest.class)).withFailureTrace(false)
			.withFailureTraceCompression(true)
			// DJG
			.withDefaultFormats().withFormats(formats).withCrossReference(crossReference);

	@Override
	public Configuration configuration() {
		return new SeleniumConfiguration().useSeleniumContext(seleniumContext)
				.usePendingStepStrategy(pendingStepStrategy)
				.useStoryControls(new StoryControls().doResetStateBeforeScenario(true)).useStepMonitor(stepMonitor)
				.useStoryLoader(new LoadFromClasspath(StoriesTest.class)).useStoryReporterBuilder(reporterBuilder);
	}

	@Override
	public InjectableStepsFactory stepsFactory() {
		ApplicationContext context = new SpringApplicationContextFactory("steps.xml").createApplicationContext();
		return new SpringStepsFactory(configuration(), context);
	}

	/* ############## RUN STORY HERE ############## */
	@Override
	protected List<String> storyPaths() {

		boolean useJira = EnvirommentManager.getInstance().getBoolean("STORIES_FROM_JIRA");
		if (useJira) {
			getJiraStories();
		} else {
			deleteJiraStories();
		}

		String jiraKey = EnvirommentManager.getInstance().getProperty("JIRA_PROJECT_KEY");
		boolean jiraDeleteExistingStories = useJira
				&& EnvirommentManager.getInstance().getBoolean("JIRA_DELETE_EXISTIN_STORIES");
		// String storyNames = System.getProperty("storyFilter",
		// jiraDeleteExistingStories ? (jiraKey + "*") :
		// EnvirommentManager.getInstance().getIncludeStory() ) ;
		/*
		 * ############################## RUN STORY HERE
		 * #############################################
		 */
		// String storyNames = "DB CONNECTION";
		// return new
		// StoryFinder().findPaths(codeLocationFromClass(this.getClass()).getFile(),
		// asList("**/" + storyNames + ".story"), null);

		return new StoryFinder().findPaths(codeLocationFromClass(this.getClass()).getFile(),
				asList("**/User/" + System.getProperty("storyFilter", "002-Login-Service-Negative") + ".story"), null);

	}

	private void deleteJiraStories() {
		String path = codeLocationFromClass(this.getClass()).getFile() + "jira_stories" + File.separator;
		File storiesDirectory = new File(path);
		if (storiesDirectory.exists()) {
			try {
				FileDeleteStrategy.FORCE.delete(storiesDirectory);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	private void getJiraStories() {

		String jiraUrl = EnvirommentManager.getInstance().getProperty("JIRA_URL");
		String jiraKey = EnvirommentManager.getInstance().getProperty("JIRA_PROJECT_KEY");
		boolean jiraDeleteExistingStories = EnvirommentManager.getInstance().getBoolean("JIRA_DELETE_EXISTIN_STORIES");
		String jiraUsername = EnvirommentManager.getInstance().getProperty("JIRA_USERNAME");
		String jiraPassword = EnvirommentManager.getInstance().getProperty("JIRA_PASSWORD");

		JiraApi jiraClient;
		try {

			String path = codeLocationFromClass(this.getClass()).getFile() + "jira_stories" + File.separator;
			File storiesDirectory = new File(path);

			if (jiraDeleteExistingStories) {
				deleteJiraStories();

				String[] entries = storiesDirectory.getParentFile().list();
				for (String s : entries) {
					File currentFile = new File(storiesDirectory.getParentFile().getPath(), s);
					if (s.toLowerCase().endsWith(".story")) {
						try {
							FileDeleteStrategy.FORCE.delete(currentFile);
						} catch (IOException e) {
							e.printStackTrace();
						}
					}
				}

			}
			storiesDirectory.mkdir();
			jiraClient = new JiraApi(jiraUrl, jiraUsername, jiraPassword);

			Map<String, String> stories = jiraClient.getAllIssues(jiraKey);

			for (String story : stories.keySet()) {
				Writer writer = new BufferedWriter(
						new OutputStreamWriter(new FileOutputStream(path + story + ".story"), "UTF8"));

				String crLf = Character.toString((char) 13) + Character.toString((char) 10);
				String content = stories.get(story);
				content = content.replaceAll(crLf, Character.toString((char) 10));
				writer.append(content);
				writer.flush();
				writer.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected List<String> failedStoryPaths(ArrayList<String> stories) {
		ArrayList<String> storiesToRun = new ArrayList<String>();

		for (String story : stories) {
			storiesToRun.add("**/" + story);
		}
		return new StoryFinder().findPaths(codeLocationFromClass(this.getClass()).getFile(), storiesToRun, null);
	}

	public void startStories(Embedder embedder, Boolean runFailed) {
		try {
			if (runFailed) {
				embedder.runStoriesAsPaths(failedStoryPaths(ASReport.storyFailedList));
			} else {
				embedder.runStoriesAsPaths(storyPaths());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// embedder.generateCrossReference();
		}
//		try {
//			if (runFailed) {
//				embedder.runStoriesAsPaths(failedStoryPaths(ASReport.storyFailedList));
//			} else {
//				ArrayList<String> storiesToRemove = new ArrayList<String>();
//
//				List<String> storiesToRun = storyPaths();
//				if (System.getProperty("include", null) != null) {
//
//					storiesToRun = new LinkedList<String>(Arrays.asList(System.getProperty("include").split(",")));
//				}
//				if (System.getProperty("exclude", null) != null) {
//					for (String story : System.getProperty("exclude").split(",")) {
//						String filePath = storiesToRun.get(0).substring(0, storiesToRun.get(0).lastIndexOf("/") + 1);
//						if (storiesToRun.contains(filePath + story)) {
//							storiesToRemove.add(filePath + story);
//						}
//					}
//				}
//				for (String storyToRemove : storiesToRemove) {
//					storiesToRun.remove(storyToRemove);
//				}
//				embedder.runStoriesAsPaths(storiesToRun);
//			}
//		} catch (Exception e) {
//			System.out.println(e.getMessage());
//		} finally {
//			System.out.println("----automation test done----");
//		}
	}

	@Override
	public void run() throws Throwable { 
		EnvirommentManager.setInitialClass(this.getClass());
		
		boolean rerunFailed = Boolean.parseBoolean(EnvirommentManager.getInstance().getProperty("rerunFailedStories"));
		rerunFailedFlag = rerunFailed;
		int rerunCount = 0;
		if (!rerunFailed) {
			ASReport.writeFailedReport = true;
		} else {
			rerunCount = Integer.parseInt(EnvirommentManager.getInstance().getProperty("rerunCount"));
		}

		String buildName = System.getProperty("buildName");
		Date date = new Date();
		SimpleDateFormat ft = new SimpleDateFormat("EEE, d MMM yyyy - hh,,mm,,ss");
		if (buildName == null) {
			buildName = "XYZ";
		}
		String ReportName;
		String dateAndTime = ft.format(date);
		dateAndTime = dateAndTime.replace(",,", " ");

		ReportName = "Automation_Report_BuildNumber-" + buildName + "_" + dateAndTime + ".html";
		ASReport.getInstance().setReportFileName(ReportName);
		ASReport.getInstance().setReportPath(buildName);
		String OS = System.getProperty("os.name").toLowerCase();
		System.out.println("Opertation system version: " + OS);
		embedder = configuredEmbedder();

		if (!rerunFailed) {
			skipScenariosList();
		}
		
//		embedder.embedderControls().useStoryTimeoutInSecs(250);
//		embedder.embedderControls().doGenerateViewAfterStories(false);
//		embedder.useMetaFilters(asList("-skip"));
		embedder.embedderControls().useStoryTimeoutInSecs(900000000);
		embedder.embedderControls().doGenerateViewAfterStories(false);
        embedder.useMetaFilters(asList("-skip"));
		ASReport.getInstance().setReportHeader("AKCAPIAutomation");
		ASReport.getInstance().setReportSubHeader("API TESTING");
		ASReport.getInstance().getReportTitle("AKCAPIAutomation");
		ASReport.getInstance().getReportSubTitle("API TESTING");
		if (System.getProperty("RunBrowsers") != null && System.getProperty("RunBrowsers") != "") {
			String[] browsers = System.getProperty("RunBrowsers").split(",");

			for (int i = 0; i < browsers.length; i++) {

				embedder.systemProperties().setProperty("browser", browsers[i]);
				startStories(embedder, false);
				if (rerunFailed) {
					rerunFailedStories(rerunCount);
				}
			}

		} else {
			startStories(embedder, false);
			if (rerunFailed) {
				rerunFailedStories(rerunCount);
			}

		}
	}

	private void rerunFailedStories(int rerunCount) {
		for (int j = 1; j <= rerunCount; j++) {
			if (ASReport.storyFailedList != null && ASReport.storyFailedList.size() > 0) {
				Embedder embedder2 = configuredEmbedder();
				embedder2.embedderControls().useStoryTimeoutInSecs(900000000);
				if (j == rerunCount) {
					ASReport.writeFailedReport = true;
				}
				startStories(embedder2, true);
			}
			// to print skip test cases only in last run
			if (j == (rerunCount - 1)) {
				rerunFailedFlag = false;
				skipScenariosList();
			}
		}

	}

	public static void skipScenariosList() {

		ArrayList<Scenario> skipScenarios = new ArrayList<Scenario>();
		StoryManager storyManager = embedder.storyManager();
		List<String> stories = new StoryFinder().findPaths(codeLocationFromClass(StoriesTest.class).getFile(),
				asList("**/" + System.getProperty("storyFilter", "002-Login-Service") + ".story"), null);
		for (String storyPath : stories) {
			Story story = storyManager.storyOfPath(storyPath);
			if (new MetaFilter("skip").allow(story.getMeta())) {
				for (Scenario scenario : story.getScenarios()) {
					// scenario also inherits meta from story
					Meta inherited = scenario.getMeta().inheritFrom(story.getMeta());
					if (new MetaFilter("+skip").allow(inherited)) {
						System.out.println("this is skipped:" + scenario.getTitle());
						skipScenarios.add(scenario);
						break;
					}
				}
			}
		}

		ASReport.getInstance().skipScenariosList(skipScenarios);
	}

}
