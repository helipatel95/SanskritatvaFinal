package testing;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class Login 
{
		public void login()
		{
			System.setProperty("webdriver.chrome.driver","/Users/admin/Desktop/chromedriver");
			WebDriver driver = new ChromeDriver();
			driver.manage().window().maximize();
			driver.manage().deleteAllCookies();
		
			driver.get("https://www.aldoshoes.com/ca/en?gclid=CjwKCAiAwrf-BRA9EiwAUWwKXls_EUAyhfOig5JHvn1URl7qepZYi7u8vKf2VbFJ_f7wT2ZtL9Bv_BoCWCIQAvD_BwE&gclsrc=aw.ds&overlay=crew-sign-in&signin-flow=default&store-id=false");
			WebElement username=driver.findElement(By.name("emailAddress"));
			WebElement password=driver.findElement(By.name("psw"));
			WebElement login=driver.findElement(By.className("login-btn"));
			username.sendKeys("rushi@gmail.com");
			password.sendKeys("12345");
			login.click();
			String actualUrl="https://www.aldoshoes.com/ca";
			String expectedUrl= driver.getCurrentUrl();
			Assert.assertEquals(expectedUrl,actualUrl);
			//driver.findElement(By.id("username-validation")).sendKeys("your email id");
			//driver.findElement(By.id("password-validation")).sendKeys("your password");
			//driver.findElement(By.id("loginbutton")).click();
		}
		

	

}
