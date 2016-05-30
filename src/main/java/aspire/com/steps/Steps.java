package aspire.com.steps;

import static org.hamcrest.MatcherAssert.assertThat;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Map;

import org.apache.http.HttpEntity;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.jbehave.core.annotations.Given;
import org.jbehave.core.annotations.Then;
import org.jbehave.core.annotations.When;
import org.json.JSONException;
import org.junit.Assert;

import com.aspire.automationReport.ASReport;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.jayway.jsonpath.JsonPath;

import jo.aspire.api.automationUtil.HttpRequestHandler;
import jo.aspire.api.automationUtil.MethodEnum;
import jo.aspire.api.automationUtil.MethodEnum.Method;
import jo.aspire.generic.EnvirommentManager;
import jo.aspire.generic.Parsers;

public class Steps {
	private static String JsonResponse = null;
	HttpRequestHandler reqHandler = HttpRequestHandler.getInstance();
	Parsers parsers = new Parsers();
	String URL, myResponse="myResponse";
	JsonElement jsonResponse;
	public String emailAddress;
	public String StringjsonResponse;
	public String response;
	
	
	private String getRootUrl() {
		Map<String, String> env = System.getenv();
		String root_url = env.get("ROOT_URL");
		if (root_url == null) {
			root_url = EnvirommentManager.getInstance().getProperty("ROOT_URL");
		}
		System.out.println("ROOT_URL: " + root_url);
		return root_url;
	}
	
	@When("the service url is: $url")
	public void setServiceURL(String url) throws URISyntaxException {

		if (url.toLowerCase().startsWith("http://www") || url.toLowerCase().startsWith("https://www")) {
			URL = url;
		} else if (url.startsWith("%s")) {
			URL = String.format(url, getRootUrl());
		} else {
			URL = String.format(EnvirommentManager.getInstance().getProperty(url), getRootUrl());
		}

		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
	}

	@Given("service method is $method")
	@When("service method is $method")
	public void setMethod(String method) {
		Method methodName;
		switch (method) {
		case "get":
			methodName = Method.GET;
			break;
		case "put":
			methodName = Method.PUT;
			break;
		case "post":
			methodName = Method.POST;
			break;
		case "delete":
			methodName = Method.DELETE;
			break;
		default:
			methodName = Method.GET;
			break;
		}

		reqHandler.createNewRequest(methodName, myResponse);
	}

	@When("add to the header $name with value $value")
	public void setHeader(String name, String value) {
		try {
			reqHandler.setRequestHeader(name, value);
		} catch (Exception e) {
			System.out.println("Error: ");
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		
	}
	
	@When("we set Body with $json")
	@Then("we set Body with $json")
	public void setJsonBody(String json) {
		if(json.equalsIgnoreCase("null")){
			   json="";}
		if(json.contains("Generated-Email"))
			       {
			emailAddress = "user" +Integer.toString((int)Math.round(Math.random() * 99999)) + "@linkbyakc.com";
			       json = json.replace("Generated-Email", emailAddress);}
		try {
			reqHandler.setRequestBody(json);
			System.out.print(json);
			
		} 
		catch (UnsupportedEncodingException e) {
			System.out.println("Error: ");
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
			       }
	
	@When("the service response should be: $status")
	@Then("the service response should be: $status")
	public void checkStatusCode(Integer status) {
		try {
			CloseableHttpResponse resp = reqHandler.execute(myResponse);
			jsonResponse = parsers.asJson(resp);
			System.out.print(jsonResponse);
			System.out.print(resp.getStatusLine().getStatusCode());
			
			StringjsonResponse = jsonResponse.toString();
			
			assertThat(resp.getStatusLine().getStatusCode(), org.hamcrest.CoreMatchers.is(status));

		} catch (Exception e) {
			System.out.println("Error: ");
			System.out.println(e.getMessage());
		}
		
	}
	
	@Then("json path $expression should not exist.")
	public void jsonPathShouldNotExist(String expression) {

		String result = null;
		try {
			result = JsonPath.parse(jsonResponse.toString()).read(expression, String.class);
		} catch (Exception e) {
			// swallow exception
			System.out.print(e.getMessage());
		}

		Assert.assertNull(result);
	}


	@When("Retrieve json path $expression response")
	@Then("Retrieve json path $expression response")
	public void RetrieveJsonItem(String expression) throws JSONException {
		// JsonReader.GenerateJson("sql_get_all_users");

		response = "bearer"+ " " + JsonPath.parse(StringjsonResponse).read(expression,
				String.class);
		System.err
				.println("The token for the created item is: " + response);
	}


@When("the service url changes to: $url")
@Then("the service url changes to: $url")
public void setServicesURL(String url) {

	if (url.toLowerCase().startsWith("http://www")
			|| url.toLowerCase().startsWith("https://www")) {
		URL = url;
	} else if (url.startsWith("%s")) {
		URL = String.format(url, EnvirommentManager.getInstance().getProperty("ROOT_URL"));
	} else {
		URL = String.format(
				EnvirommentManager.getInstance().getProperty(url),
				EnvirommentManager.getInstance().getProperty("ROOT_URL"));
	}

	try {
		reqHandler.setRequestUrl(URL);
	} catch (URISyntaxException e) {
		// TODO Auto-generated catch block
		System.out.print("AKC ERROR: " + e.getMessage());
	}
	
	ASReport.getInstance().append(URL);
}

@When("add Session $name to Request header")
@Then("add Session $name to Request header")
public void addToken(String name) {

	reqHandler.setRequestHeader(name,response);
}

@Given("url contains the parameter: $value")
@When("url contains the parameter: $value")
@Then("url contains the parameter: $value")
public void addUrlParameters(String value) {
	URL = URL.replaceFirst("\\[parameter\\]", value);
	System.err.println("New URL with Parameter is : " + URL);
	
	reqHandler.equals((URL));
}

}

