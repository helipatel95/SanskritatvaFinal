package MainPackage;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class orderPlaced {
	public void placedOrder() throws InterruptedException {

		System.out.println(
				"**************************************Test Three Successfully Placing An order*******************************************");
		System.setProperty("webdriver.chrome.driver",
				"D:\\Desktop Backup\\20_12_2020\\eclipce\\nisu\\chromedriver.exe");
		WebDriver driver;

		// Open Chrome browser
		driver = new ChromeDriver();

		driver.get("http://localhost:3000/Dash/products");

		driver.findElement(By.cssSelector(".card:nth-child(1) .card-img-top")).click();
		driver.findElement(By.linkText("View Details")).click();
		driver.findElement(By.cssSelector(".btn")).click();
		driver.get("http://localhost:3000/Dash/products");
		driver.findElement(By.cssSelector(".card:nth-child(2) .card-img-top")).click();
		driver.findElement(By.linkText("View Details")).click();
		driver.findElement(By.cssSelector(".btn")).click();
		driver.findElement(By.cssSelector(".fa-shopping-cart")).click();
		driver.findElement(By.linkText("Go To Checkout")).click();
		WebElement username = driver.findElement(By.name("emailAddress"));
		WebElement password = driver.findElement(By.name("psw"));
		Thread.sleep(3000);
		username.sendKeys("patelhealey@gmail.com");

		password.sendKeys("123456");
		driver.findElement(By.cssSelector(".login-btn")).click();
		driver.findElement(By.cssSelector(".fa-shopping-cart")).click();
		driver.findElement(By.linkText("Go To Checkout")).click();
		driver.findElement(By.cssSelector(".btn")).click();
		System.out.println("done");
		String orderdone = driver.findElement(By.id("orderdone")).getText();

		if (orderdone.equals("Order Placed Successfully")) {
			System.out.println("Order placed Succesfully!");
		} else {
			System.out.println("failed!");
		}
		driver.close();
	}
}
