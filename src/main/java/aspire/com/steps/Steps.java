package aspire.com.steps;

import static org.hamcrest.MatcherAssert.assertThat;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Map;

import org.apache.http.HttpEntity;
import org.apache.http.ParseException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.jbehave.core.annotations.Given;
import org.jbehave.core.annotations.Then;
import org.jbehave.core.annotations.When;
import org.json.JSONException;
import org.json.JSONObject;
import org.junit.Assert;
import org.skyscreamer.jsonassert.JSONAssert;
import org.skyscreamer.jsonassert.JSONCompareMode;

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
	private static final JSONObject actualJSON = null;
	private static final JSONCompareMode strictMode = null;
	private static final String expectedJSON = null;
	private static String JsonResponse = null;
	HttpRequestHandler reqHandler = HttpRequestHandler.getInstance();
	Parsers parsers = new Parsers();
	String URL, myResponse = "myResponse";
	JsonElement jsonResponse;
	public String emailAddress;
	public String StringjsonResponse;
	public String response;
	public static String Date;
	public String ZipCode;
	public String Location;
	public String imei;
	Gson gson = new Gson();

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
	@Given("the service url is: $url")
	public void setServiceURL(String url) throws URISyntaxException {

		if (url.toLowerCase().startsWith("http://www")
				|| url.toLowerCase().startsWith("https://www")) {
			URL = url;
		} else if (url.startsWith("%s")) {
			URL = String.format(url, getRootUrl());
		} else {
			URL = String.format(
					EnvirommentManager.getInstance().getProperty(url),
					getRootUrl());
		}

		reqHandler.setRequestUrl(URL);
		ASReport.getInstance().append(URL);
	}

	@Given("service method is $method")
	@When("service method is $method")
@Then("service method is $method")
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
	@Then("add to the header $name with value $value")
	public void setHeader(String name, String value) {
			reqHandler.setRequestHeader(name, value);
	}

	@When("we set Body with $json")
	@Then("we set Body with $json")
	public void setJsonBody(String json) throws UnsupportedEncodingException {
		if (json.equalsIgnoreCase("null")) {
			json = "";
		}
		if (json.contains("Generated-Email")) {
			emailAddress = "user"
					+ Integer.toString((int) Math.round(Math.random() * 99999))
					+ "@linkbyakc.com";
			json = json.replace("Generated-Email", emailAddress);}
			
			if (json.contains("Generated-imei")) {
				imei = "123456789"
						+ Integer.toString((int) Math.round(Math.random() * 99999));
				json = json.replace("Generated-imei", imei);
		}
			reqHandler.setRequestBody(json);
			System.out.print(json);

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

				assertThat(resp.getStatusLine().getStatusCode(),
						org.hamcrest.CoreMatchers.is(status));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

	@Then("json path $expression should not exist.")
	public void jsonPathShouldNotExist(String expression) {

		String result = null;
			result = JsonPath.parse(jsonResponse.toString()).read(expression,
					String.class);


		Assert.assertNull(result);
	}

	@When("Retrieve json path $expression response")
	@Then("Retrieve json path $expression response")
	public void RetrieveJsonItem(String expression) throws JSONException {
		// JsonReader.GenerateJson("sql_get_all_users");

		response = "bearer"
				+ " "
				+ JsonPath.parse(StringjsonResponse).read(expression,
						String.class);
		System.err.println("The token for the created item is: " + response);
	}

	@When("the service url changes to: $url with $param")
	@Then("the service url changes to: $url with $param")
	public void setServicesURLwithParam(String url, String param) throws URISyntaxException {
		if (url.toLowerCase().startsWith("http://www") || url.toLowerCase().startsWith("https://www")) {
			URL = url;
		} else if (url.startsWith("%s")) {
			URL = String.format(url, EnvirommentManager.getInstance()
					.getProperty("ROOT_URL"));
		} else {
			URL = String.format(
					EnvirommentManager.getInstance().getProperty(url),
					EnvirommentManager.getInstance().getProperty("ROOT_URL"));
		}
		URL = URL.replaceFirst("\\[parameter\\]", param);
		
		reqHandler.setRequestUrl(URL);

		ASReport.getInstance().append(URL);
	}
	
//	@When("the service url changes to: $url")
//	public void setServicesURL(String url) throws URISyntaxException {
//		if (url.toLowerCase().startsWith("http://www") || url.toLowerCase().startsWith("https://www")) {
//			URL = url;
//		} else if (url.startsWith("%s")) {
//			URL = String.format(url, EnvirommentManager.getInstance()
//					.getProperty("ROOT_URL"));
//		} else {
//			URL = String.format(
//					EnvirommentManager.getInstance().getProperty(url),
//					EnvirommentManager.getInstance().getProperty("ROOT_URL"));
//		}
//		
//		reqHandler.setRequestUrl(URL);
//
//		ASReport.getInstance().append(URL);
//	}

	@When("add Session $name to Request header")
	@Then("add Session $name to Request header")
	public void addToken(String name) {

		reqHandler.setRequestHeader(name, response);
	}

//	@Given("url contains the parameter: $value")
//	@When("url contains the parameter: $value")
//	@Then("url contains the parameter: $value")
//	public void addUrlParameters(String value) throws URISyntaxException {
//		URL = URL.replaceFirst("\\[parameter]\\", value);
//		reqHandler.setRequestUrl(URL);
//		System.err.println("New URL with Parameter is : " + URL);
//
//		
//
//	}

	@Then("json path $expression should equal:$expected")
	@When("json path $expression should equal:$expected")
	public void getItem(String expression, String expected)
			throws JSONException {
		// JsonReader.GenerateJson("sql_get_all_users");

	}

	@Then("json node is $NodeName for $ArrayOrder order should equal:$expected")
	public void test(String NodeName, int ArrayOrder, String expected) throws JSONException {
		JsonElement result = jsonResponse.getAsJsonArray().get(ArrayOrder).getAsJsonObject().get(NodeName);
		Assert.assertEquals(result.isJsonNull() ? "null" : result.getAsString().trim(), expected);
		
		
		JSONAssert.assertEquals(expectedJSON, actualJSON, false);
	}

	@Then("json response should equal:$expected")
public void setJsonBody1(String expected) {
	 
	  String result = JsonPath.parse(StringjsonResponse).read(JsonResponse, null, null);
	  Assert.assertEquals(result,expected);
			  
	}
}


