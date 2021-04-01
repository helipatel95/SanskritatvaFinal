package test;


import java.util.concurrent.TimeUnit;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;


public class ArticleTest
{
	public boolean article() {
		
		System.setProperty("webdriver.chrome.driver","/Users/admin/Downloads");
		WebDriver driver = new ChromeDriver();
		driver.manage().window().maximize();
		driver.manage().deleteAllCookies();
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
	      driver.get("http://127.0.0.1/Sankritatva-main/finalProject/views/article.ejs");
	      // identify element
	      WebElement t=driver.findElement(By.xpath("//img[@class='tp-logo']"));
	      // get class attribute with getAttribute()
	      String clsVal = t.getAttribute("class");
	      //iterate through class value
	      for (String i : clsVal.split(" ")) {
	         //check the class for specific value
	         if (i.equals("tp-logo")) {
	               System.out.println("class attribute contains: " + clsVal);
	         } else {
	               System.out.println("class attribute does not contain: " + clsVal);}
	         }
	      driver.close();
		return false;

	}
}