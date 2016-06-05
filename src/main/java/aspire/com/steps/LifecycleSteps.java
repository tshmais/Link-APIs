package aspire.com.steps;

import java.awt.GraphicsEnvironment;

import org.jbehave.core.annotations.AfterScenario;
import org.jbehave.core.annotations.AfterStories;
import org.jbehave.core.annotations.AfterStory;
import org.jbehave.core.annotations.BeforeScenario;
import org.jbehave.core.annotations.BeforeStories;
import org.jbehave.core.annotations.BeforeStory;
import org.openqa.selenium.WebDriverException;
import com.aspire.automationReport.AspireReport;

public class LifecycleSteps {

	public LifecycleSteps() {

	}

	@BeforeStories
	public void runBeforeAllStories() {
		try {
			// do something
		} catch (WebDriverException e) {
			e.printStackTrace();
		}
	}

	@BeforeStory
	public void runBeforeEachStory() {
		try {
			AspireReport.getInstance().setCurrentStoryStartDate();
		} catch (WebDriverException e) {
			e.printStackTrace();
		}
	}

	@BeforeScenario
	public void runBeforeEachScinario() {
		AspireReport.getInstance().setCurrentScenarioStartDate();
	}

	@AfterStory
	public void runAfterEachStory() {
		try {
			AspireReport.getInstance().setCurrentStoryEndDate();
			AspireReport.getInstance().printEveryThing();
		} catch (WebDriverException e) {
			e.printStackTrace();
		}
	}

	@AfterStories
	public void runAfterStories() {
		try {
			AspireReport.getInstance().printEveryThing();
			AspireReport.getInstance().getReportDataManager().openReport();

			boolean headless = GraphicsEnvironment.isHeadless();
			if (!headless) {

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@AfterScenario
	public void runAfterEachScenario() {
		// deleteAllCookies();
	}
}