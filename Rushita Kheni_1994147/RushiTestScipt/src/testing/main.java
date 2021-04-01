package testing;

import java.util.List;
import org.junit.*;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class main 
{
	public void search() throws Exception
	{
		System.setProperty("webdriver.chrome.driver", "//Users/admin//Download/chromedriver");
		WebDriver driver = new ChromeDriver();
		driver.get("http://127.0.0.1/Sankritatva-main/finalProject/views/index.ejs");
		driver.manage().window().maximize();
		WebElement element = driver.findElement(By.name("searchHeader"));
		element.sendKeys("abc");
		Thread.sleep(1000);
		WebElement matchingResult= driver.findElement(By.xpath("//*[@id=\"searchHeader\"]"));
		List<WebElement> listResult= matchingResult.findElements(By.xpath("//*[@id=\"searchHeader-small\"]"));
		System.out.println(listResult.size());
		//if you want to print matching results
			for(WebElement results: listResult)
	       {
	         String value= results.getText();
	         System.out.println(value);
	       }     
	}
	public static void main(String[] args)
	{
		Login l= new Login();
		RegistrationTesting rt= new RegistrationTesting();
		forgetpasswordTesting ft= new forgetpasswordTesting();
		
		
		try {
			l.login();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			rt.setUp();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			rt.testRegistration();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			ft.forgetPassword();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	
	}
	

}
