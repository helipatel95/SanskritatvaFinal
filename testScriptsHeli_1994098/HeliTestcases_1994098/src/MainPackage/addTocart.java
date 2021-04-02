package MainPackage;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class addTocart {
	public void doAddtoCart() {
		System.out.println(
				"**************************************Test one add to cart*******************************************");

		System.setProperty("webdriver.chrome.driver",
				"D:\\Desktop Backup\\20_12_2020\\eclipce\\nisu\\chromedriver.exe");
		WebDriver driver;
		// Open Chrome browser
		driver = new ChromeDriver();

		driver.get("http://localhost:3000/Dash/products");

		driver.findElement(By.cssSelector(".card:nth-child(1) .card-img-top")).click();
		driver.findElement(By.linkText("View Details")).click();
		driver.findElement(By.cssSelector(".btn")).click();
		String cart = driver.findElement(By.id("cart")).getText();
		if (cart.equals("Added to cart!")) {
			System.out.println("Added to cart Successfull!");
		} else {
			System.out.println("Failed!");
		}
		driver.close();
	}

}
