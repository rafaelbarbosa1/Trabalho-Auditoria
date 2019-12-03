// Generated by Selenium IDE
import org.junit.Test;
import org.junit.Before;
import org.junit.After;
import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.core.IsNot.not;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Alert;
import org.openqa.selenium.Keys;
import java.util.*;
public class AuditoriaTest {
  private WebDriver driver;
  private Map<String, Object> vars;
  JavascriptExecutor js;
  @Before
  public void setUp() {
    driver = new ChromeDriver();
    js = (JavascriptExecutor) driver;
    vars = new HashMap<String, Object>();
  }
  @After
  public void tearDown() {
    driver.quit();
  }
  @Test
  public void auditoria() {
    driver.get("http://localhost:8080/Prova_P2/index.jsp");
    driver.manage().window().setSize(new Dimension(700, 728));
    driver.findElement(By.linkText("Novo usuario")).click();
    driver.findElement(By.id("nome")).click();
    driver.findElement(By.id("nome")).sendKeys("Rafael");
    driver.findElement(By.id("email")).sendKeys("rafinha_barbosa26@hotmail.com");
    driver.findElement(By.id("telefone")).click();
    driver.findElement(By.id("telefone")).sendKeys("123456");
    driver.findElement(By.id("endereco")).sendKeys("test");
    driver.findElement(By.id("bairro")).sendKeys("tes");
    driver.findElement(By.id("cidade")).sendKeys("tes");
    driver.findElement(By.id("uf")).sendKeys("tes");
    driver.findElement(By.name("senha")).sendKeys("123456");
    driver.findElement(By.name("confSenha")).sendKeys("123456");
    driver.findElement(By.cssSelector(".btn-primary:nth-child(2)")).click();
  }
}