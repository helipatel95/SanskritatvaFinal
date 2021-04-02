package MainPackage;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class historyPageInvoice {
	public void viewinvoices() throws InterruptedException {
		System.out.println(
				"**************************************Test Four view Invoice History only if logged In*******************************************");
		System.setProperty("webdriver.chrome.driver",
				"D:\\Desktop Backup\\20_12_2020\\eclipce\\nisu\\chromedriver.exe");
		WebDriver driver;

		// Open Chrome browser
		driver = new ChromeDriver();

		driver.get("http://localhost:3000/Dash/home");

		driver.findElement(By.cssSelector(".fa-bars")).click();
		Thread.sleep(3000);
		driver.findElement(By.xpath("//*[@id=\"mySidebar\"]/div/div[3]/p")).click();
		System.out.println("doen");
		WebElement username = driver.findElement(By.name("emailAddress"));
		WebElement password = driver.findElement(By.name("psw"));
		Thread.sleep(3000);
		username.sendKeys("patelhealey@gmail.com");

		password.sendKeys("123456");
		driver.findElement(By.cssSelector(".login-btn")).click();
		driver.findElement(By.cssSelector(".fa-bars")).click();
		Thread.sleep(3000);
		driver.findElement(By.xpath("//*[@id=\"mySidebar\"]/div/div[3]/p")).click();
		String history = driver.findElement(By.id("historypage")).getText();
		Thread.sleep(3000);
		if (history.equals("All Orders")) {
			System.out.println("Invoice History page on display only if loggen in!");
		} else {
			System.out.println("failed!");
		}
		driver.close();

	}

}
