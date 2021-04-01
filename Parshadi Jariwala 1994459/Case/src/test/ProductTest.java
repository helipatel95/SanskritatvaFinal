package test;

import org.junit.*;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;


public class ProductTest 
{
		public void product()
		{
			System.setProperty("webdriver.chrome.driver","/Users/admin/Downloads/chromedriver");
			WebDriver driver = new ChromeDriver();
			driver.manage().window().maximize();
			driver.manage().deleteAllCookies();
		
			driver.get("http://127.0.0.1/Sankritatva-main/finalProject/views/Productpage.ejs");
			WebElement categoryid=driver.findElement(By.id("category_id"));
			WebElement categoryname=driver.findElement(By.id("category_name"));
			WebElement login=driver.findElement(By.name("submit"));
			categoryid.sendKeys("101");
			categoryname.sendKeys("Sanskrit Book");
			login.click();
			String actualUrl="http://127.0.0.1/Sankritatva-main/finalProject/views/Productpage.ejs";
			String expectedUrl= driver.getCurrentUrl();
			Assert.assertEquals(expectedUrl,actualUrl);
			
		}
		

	

}