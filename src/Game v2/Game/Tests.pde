
public class MoveTest {
  Farmer f = new Farmer(400, 400);
  
  boolean MoveFramer(){
    
     if (key == CODED) {
      if (keyCode == UP && f.getFarmery() > 50) {
        if(f.getFarmery() == 410){
          return true;
        }
      
      } else if (keyCode == DOWN && f.getFarmery() < height - 25) {
         if(f.getFarmery() == 390){
          return false;
        }
      }

      if(keyCode == LEFT && f.getFarmerx() > 50){
        if(f.getFarmerx() == 410){
          return true;
        }

      } else if (keyCode == RIGHT && f.getFarmerx() < width - 25) {

        if(f.getFarmerx() == 390){
          return false;
        }
      }

    }
    

   
    return false;
  }
  
  
  
}



  
