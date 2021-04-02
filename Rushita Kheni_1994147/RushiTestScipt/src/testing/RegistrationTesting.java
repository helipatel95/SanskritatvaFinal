package testing;

import java.util.regex.Pattern;
import java.util.concurrent.TimeUnit;
import org.junit.*;
import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.*;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.Select;

public class RegistrationTesting 
{
    private WebDriver driver;
    private String baseUrl;
    private StringBuffer verificationErrors = new StringBuffer();
    @Before
    public void setUp() throws Exception 
    {
        driver = new ChromeDriver();
        baseUrl = "https://www.aldoshoes.com/ca/en/crew/join";
        driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
    }

    @Test
    public void testRegistration() throws Exception {
        driver.get(baseUrl + "/ca/en/crew/join");
        driver.findElement(By.name("userName")).clear();
        driver.findElement(By.name("userName")).sendKeys("rushi@gmail.com");
        
        driver.findElement(By.name("fname")).clear();
        driver.findElement(By.name("fname")).sendKeys("rushi");
        
        driver.findElement(By.name("contactNo")).clear();
        driver.findElement(By.name("contactNo")).sendKeys("1234509876");
        
        driver.findElement(By.name("lname")).clear();
        driver.findElement(By.name("lname")).sendKeys("kheni");
        
        driver.findElement(By.name("bdate")).clear();
        driver.findElement(By.name("bdate")).sendKeys("12/02/1997");
        
        driver.findElement(By.name("emailAddress")).clear();
        driver.findElement(By.name("emailAddress")).sendKeys("rushi@gmail.com");

        driver.findElement(By.name("password")).clear();
        driver.findElement(By.name("password")).sendKeys("12345");

        driver.findElement(By.className("login-btn")).click();
        driver.findElement(By.className("login-btn"));
    }

    @After
    public void tearDown() throws Exception {
        driver.quit();
        String verificationErrorString = verificationErrors.toString();
        if (!"".equals(verificationErrorString)) {
            fail(verificationErrorString);
        }
    }

    private boolean isElementPresent(By by) {
        try {
            driver.findElement(by);
            return true;
        } catch (NoSuchElementException e) {
            return false;
        }
    }
    //public static void main(String[] args)
	//{
	//	RegistrationTesting rt= new RegistrationTesting();
		
		
	//}
}