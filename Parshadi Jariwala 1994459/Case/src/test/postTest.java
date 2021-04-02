package test;

import org.junit.Assert;
import org.junit.*;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class postTest 
{
		public boolean post()
		{
			System.setProperty("webdriver.chrome.driver","/Users/admin/Downloads/chromedriver");
			WebDriver driver = new ChromeDriver();
			driver.manage().window().maximize();
			driver.manage().deleteAllCookies();
		
			driver.get("http://127.0.0.1/Sankritatva-main/finalProject/views/index.ejs");
			WebElement t=driver.findElement(By.xpath("//card"));
		      
		      String clsVal = t.getAttribute("class");
		   
		      for (String i : clsVal.split(" ")) {
		        
		         if (i.equals("card_title")) {
		               System.out.println("class attribute contains: " + clsVal);
		         } else {
		               System.out.println("class attribute does not contain: " + clsVal);}
		         }
		      driver.close();
			return false;
		}
		

	

}
