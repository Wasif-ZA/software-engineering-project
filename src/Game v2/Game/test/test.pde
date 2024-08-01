import org.junit.Test;
import static org.junit.Assert.*;

public class MoveTest {

 Farmer f = new Farmer(400, 400);

 f.move();

    assertEquals(400, f.getFarmerx());


}
  
  
