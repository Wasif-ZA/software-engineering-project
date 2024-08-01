import org.junit.Test;
import static org.junit.Assert.*;

public class BambooTest {

  @Test
 public void testBamboo() {
  // Test with primary color
  bamboo(50, 100, 200, true);
  color expected = color(34, 139, 34);
  color actual = get(100, 150);
  assertEquals(expected, actual);

  
  bamboo(50, 100, 200, false);
  color expected = color(194, 258, 144);
  color actual = get(100, 150);
  assertEquals(expected, actual);
  
}

}
