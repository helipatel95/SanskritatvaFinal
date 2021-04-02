package test;


import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.junit.*;


public class purchaseTest 
{
		public void purchase()
		{
			System.setProperty("webdriver.chrome.driver","/Users/admin/Downloads/chromedriver");
			WebDriver driver = new ChromeDriver();
			driver.manage().window().maximize();
			driver.manage().deleteAllCookies();
		
			driver.get("http://127.0.0.1/Sankritatva-main/finalProject/views/Productpage.ejs");
			WebElement product_iddata=driver.findElement(By.id("product_iddata"));
			//WebElement categoryname=driver.findElement(By.id("category_name"));
			WebElement login=driver.findElement(By.className("login-btn"));
			product_iddata.sendKeys("99");
			//categoryname.sendKeys("Sanskrit Book");
			login.click();
			String actualUrl="http://127.0.0.1/Sankritatva-main/finalProject/views/Productpage.ejs";
			String expectedUrl= driver.getCurrentUrl();
			Assert.assertEquals(expectedUrl,actualUrl);
			
		}
		

	

}