package MainPackage;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class multipleCart {
	public void multipleCart() {
		System.out.println(
				"**************************************Test Two add to cart Multiple times*******************************************");
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
		String Count = driver.findElement(By.id("multipleCartTest")).getText();
		int itemsCount = Integer.parseInt(Count);
		if (itemsCount >= 1) {
			System.out.println("Multiple entry into the cart!");
		} else {
			System.out.println("failed!");
		}
		driver.close();
	}
}
