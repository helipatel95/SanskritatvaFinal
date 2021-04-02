package MainPackage;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class profileUpdate {
	public void updateProfile() throws InterruptedException {
		System.out.println(
				"**************************************Test Five update user profile*******************************************");
		System.setProperty("webdriver.chrome.driver",
				"D:\\Desktop Backup\\20_12_2020\\eclipce\\nisu\\chromedriver.exe");
		WebDriver driver;

		// Open Chrome browser
		driver = new ChromeDriver();

		driver.get("http://localhost:3000/Dash/home");

		driver.findElement(By.cssSelector(".fa-user")).click();
		WebElement username = driver.findElement(By.name("emailAddress"));
		WebElement password = driver.findElement(By.name("psw"));
		Thread.sleep(3000);
		username.sendKeys("patelhealey@gmail.com");
		password.sendKeys("123456");
		driver.findElement(By.cssSelector(".login-btn")).click();
		driver.findElement(By.cssSelector(".fa-user")).click();
		WebElement contact = driver.findElement(By.name("contactNo"));
		contact.clear();
		Thread.sleep(1000);
		contact.sendKeys("45678000");
		driver.findElement(By.cssSelector(".btn")).click();
		Thread.sleep(3000);
		String update = driver.findElement(By.id("updatedone")).getText();
		if (update.equals("Data Has been updated!")) {
			System.out.println("Updated profile successfully!");
		} else {
			System.out.println("failed!");
		}
		Thread.sleep(2000);

		driver.close();

	}
}
