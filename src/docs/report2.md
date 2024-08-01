

# Final Report


## Introduction
This game is called “Rogue Panda” where the user is a farmer who is preventing the Panda from escaping. If the Panda manages to hit the wall 10 times before the player can activate the cage, the panda get is free and the user loses the game. There is a counter and a timer on the top left hand side of the game. The counter will increment by 1 each time the Panda hits the wall letting the user know of the current status of the game. The timer shows the record time each game, allowing the user to compete with other players. Fastest game wins. 

## User Manual


-Game Objective

In the game “Rogue Panda” the main objective for the user is to prevent the floating Panda from hitting the wall 10 times. If the Panda manages to hit the wall 10 times, the game ends and the user will be required to start over.

-Controls

Right arrow key: The farmer moves right. <br>
Up arrow key: The farmer moves up. <br>
Down arrow key: The farmer moves down. <br>
Left arrow key: The farmer moves left. <br>

-How to play

When the user starts the game. The Panda spawns and will immediately start moving around.

Use the arrow keys to move around and find the hidden switch that activates the cage and stops the Rogue Panda from escaping.

Your goal is to stop activate the cage before the panda hits the walls 10 times. Once the game launches the user will be able to move around and look for the hidden button. Keep a close eye on the Panda. If the user sees the Panda approaching the wall, they can move the farmer with the arrow keys and push the panda away.

Counter: There will be a counter on the top left hand side of the screen. Every time the Panda hits the wall the counter will be increment by 1. Once the counter reaches 10 the game will end and the panda is free.

-Support

If faced with any issues please contact the developers at ftms2@gmail.com or visit our page www.ftm2.com/support

Thank you for purchasing the game.

## Design and Architecture
![image](https://github.com/Comp1050-2023/i2sse-contest-2023-ftm2/assets/99377389/1ef09336-d664-4a32-b0fb-a63f40ea6faf)


## User Acceptance Tests and System tests

The User Stories are
- As a user, I want to see the panda bounce off walls, so that I can play with it.
- As a user, I want to see a timer, so that I can survive the longest.
- As a user, I want to see FLOATING PANDA interact with BUILDING FARMER, so that I can play with it.
- As a user, I want to an animation of object, so that I can play with it.

TestID: INPUT
Purpose: To test if the user input works.
User story: As a user, I want to see an animation of the object, so that I can play with it. 

Test Environment
- MacOS
- Running on processing

Test steps:
1. Check the arrows keys and observe the movement.
2. Navigate to the top left corner, then bottom right. 

Expected Outcome
The controls should be working as intended. The movement of the object should follow the arrow it is assigned to. 

Test Results
Pass: If the object is moving in the direction of the key pressed and is very reponsive. 
Fail: if the object moves in an incorrect direction and/ or if the movement is sluggish/delayed/isn't moving at all.



TestID: TIMER
Purpose: To see if the timer function is working.
User story: As a user, I want to see a timer, so that I can survive the longest.

Test Environment
- Windows 11
- Running on processing

Test steps:
1. Start the program
2. Watch the timer run

Expected Outcome
The timer should accurately time the user.

Test Results
Pass: The timer is able to run accurately and closely resemble to real time.
Fail: The timer isn't accurate or doesn't resemble to real time.



TestID: BOUNCE 
Purpose: To test the bounce function implemented into the panda, so that I can play with it.
User story: As a user, I want to see the panda bounce off walls.

Test Environment
- MacOS
- Running on processing

Test steps:
1. Start the game.
2. Observe the panda move.

Expected Outcome
When the panda reaches the boundaries or the walls, it should bounce off.

Test Results
Pass: The panda should not phase the wall or go off screen.
Fail: The panda goes off screen or goes through wall.


TestID: INTERACT
Purpose: To check the INTERACTION between the Object and the Subject.
User story: As a user, I want to see the FLOATING PANDA interact with BUILDING FARMER, so I can play with it.

Test Environment
- MacOS
- Running on processing

Test steps:
1. Start the program
2. Move the farmer 
3. Find the Button with the farmer (walls should come up)
4. Observe the interaction with the wall

Expected Outcome
The walls built by the farmer should interact with the panda by allowing the panda to bounce off it.

Test Results
Pass: The walls that are built by the farmer should block and change the trajectory of the panda.
Fail: Either the walls don't come up or the panda phases through the walls.
 
| **System test: floating code** | **Outcome of this test** |
|--------------------------------|--------------------------|
| Test steps: <br> 1. Change the variable <br> - incx  = 20000 <br> - incy = 20000 <br> 2. Observe the if the game crash or runs of memory to compute the following <br> -Expected Outcome: game is unable to compute the calculations causing the game to crash <br> Test outcome: <br> - Pass:  the game does not crash <br> - Fail: the game does crash  | This code would pass this system test, <br> However, issue is that game would not playable as the following problems would arise with the system test <br> - The panda become flashing and gets stuck within the corner. <br> - The bounce off the walls too fast to the point the game over sequences would start making unable user to humanly impossible to complete the task. |
| Revision system test <br> Test steps: <br> 1. Change the variable <br> - incx  = 20000 <br> - incy = 20000 <br> 2. Observe the if the game crash or runs of memory to compute the following <br> -Expected Outcome: game is unable to compute the calculations causing the game to crash <br> Test outcome: <br> - Pass: the game is playable <br> - Fail: panda starts flashing and wall bounces become exponentially too high hence making the object impossible | The would pass the system test | 

```

  int floating() {
    String message = "Count: ";
    pandax += incx;
    if (pandax >= width-125 || pandax <= 20) {
      incx *= -1;
      count++;
    }
    panday += incy;
    if (panday >= height-100 || panday <= 25) {
      incy *= -1;
      count++;
    }
    text(message + count, 110, 85);
    if(count >= 10){
      //rect(0,0,1000,1000);
      text("YOU LOSE" , width/2, height/2);
      count = 10;
    return count;
    }
    return 0;



```
The purpose of this block of code is to make the panda bounce around and changes direction it is floating whenever the condition is meet. Which is the boundaires. This block of code also includes the losing message whenever the the count reaches to 10. The count variable increases by one everytime the panda hits one of the boundaires. To avoid this the farmer has to build walls to avoid losing and to survive the longest.

## Unit Tests


```
public class MoveTest {
  Farmer f = new Farmer(400, 400);

  boolean MoveFramer() {
   int PassedTests = 0;
    if (key == CODED) {
      if (keyCode == UP && f.getFarmery() > 50) {
        if (f.getFarmery() == 410) {
          return true;
          PassedTests++;
        }
      } else if (keyCode == DOWN && f.getFarmery() < height - 25) {
        if (f.getFarmery() == 390) {
          return true;
          PassedTests++:
        }
      }

      if (keyCode == LEFT && f.getFarmerx() > 50) {
        if (f.getFarmerx() == 410) {
          return true;
          PassedTests++;
        }
      } else if (keyCode == RIGHT && f.getFarmerx() < width - 25) {

        if (f.getFarmerx() == 390) {
          return true;
          PassedTests++;
        }
      }
    }
    
    println(number of units passed : " + PassedTests);
    return false;
  }
}

```

| Test Method          | Test Description                                  | Inputs             | Expected Outcome | Coverage     |
|----------------------|--------------------------------------------------|--------------------|------------------|--------------|
| testMoveUp           | Test moving the farmer up                         | `farmerx: 410`     | Farmer y-coordinate should be decreased by 10 | ✔️            |
| testMoveDown         | Test moving the farmer down                       | `farmery: 390`     | Farmer y-coordinate should be increased by 10 | ✔️            |
| testMoveLeft         | Test moving the farmer to the left                | `farmerx: 390`     | Farmer x-coordinate should be decreased by 10 | ✔️            |
| testMoveRight        | Test moving the farmer to the right               | `farmery: 410`     | Farmer x-coordinate should be increased by 10 | ✔️            |




## Project Management

Task: “create a wall“ assigned to Huzaifa reviewed by Wasif
- Some complaints were that the wall was too complicated. The wall had to be made simpler as it was extremely hard to implement it in the full version of the game due to an overly complicated texture
- Task review: Remake the wall by removing the texture and reshaping it. Implement it straight away into the full version of the game for faster development
- Code review: After reviewing the code several changes had to be made in the code. First of all there weren't variables so variables of x and y had to be integrated to make it easier for the other members of the group to easily implement the wall into the full version of the game. Furthermore curves were used to make a texture for the wall but some group members were finding it hard to understand the code making it difficult to add it in the game. So the curve functions were deleted and the triangles added to it were also removed which were implemented to enhance the texture.
- Progress was made as it allowed the other group members to easily implement the wall code in the game therefore accelerating the development of the game


Task: “Design the farmer character and its interactions“ assigned to Wasif reviewed by Safwaan
- The farmer character was designed as planned at the beginning. But the interactions with the farmer had to be improved. The farmer moved too slow which made it difficult for the user to finish the game
- Task review: Improve the speed of the farmer
- Code review: A few necessary changes had to be made in the code to allow the farmer to move faster. In the move function the numbers on the variables farmerx and farmery had to be increased to allow faster movement
- The interaction was easily improved. The increment was increased to 25 which was the only change that had to be made. This change allowed the user to catch the Panda thus making the game more playable

Task: “Rewrite existing code to make distinct classes“ assigned to Safwaan reviewed by Wasif
- The code was highly unorganized and it was difficult to reassess the code to make further improvements so classes had to be implemented for more readability and maintainability 
- Task review: Refactor the existing code into appropriate classes. Make classes of Game, Background, Farmer, Panda and Time
- Code review: The code had to be combined and restructured into one file by making classes. Code from several different files such as Panda, Farmer and the floating function had to be all implemented into classes to allow the group members to successfully create the full version of the game while also allowing maintanability and readability if some changes had to be made in the future 
- The classes were implemented successfully. The restructuring of the code allowed more readability therefore helping in maintaining the code

Task: “Redesigned the floating function for the Panda” assigned to John reviewed by Wasif
- The floating function implemented into the full version of the game was not working properly as it was highly unrealistic so it had to be integrated in the correct way
- Task review: Analyzed the floating function and identified the areas to make a change to plan for a more realistic design. The areas for change were to edit the boundary for the Panda and preventing the Panda from going outside the given boundary
- Code review: The code was reviewed and areas were identified to make a change in the code. The areas included the increments of x and y inside the floating function. The boundaries had to edited accordingly as the background size was different when the floating function was designed on another file
- The increments were edited to allow the Panda to change the direction as soon as it hit the boundary which made the game more realistic and playable


## Software Quality
Here are majority of the issues that we had at the end of the project <br> 
![image](https://github.com/Comp1050-2023/i2sse-contest-2023-ftm2/assets/99377389/5ea15197-158d-47c8-9447-4728d0c5e6df) <br> 
![image](https://github.com/Comp1050-2023/i2sse-contest-2023-ftm2/assets/99377389/a7f05417-c01e-472f-8f1c-7e2446553d77)

In regards to the issues that we have solved, we mainly focused on the issues that were about naming convention. So short variable names, code style and avoid naming matching were some of the issues that we have seen lots of. We hadn't gone around to fix all the issues as they wouldn't impact the codes functionality. As well as that we didn't focus on them because we hadn't have any major issues during the duration of the project (the red ones).

## Ethics
Tools
- Github:https://github.com/ 
- Homebrew:https://brew.sh/ 
- Git:https://git-scm.com/ 

Design
Minecraft villager
![image](https://github.com/Comp1050-2023/i2sse-contest-2023-ftm2/assets/99377389/876cfa94-3947-4996-b883-3f5a271ee848)
https://www.pcgamer.com/how-to-make-a-minecraft-villager-zombie-trades/

Minecraft Panda
![image](https://github.com/Comp1050-2023/i2sse-contest-2023-ftm2/assets/99377389/3ffbac66-66db-4d9a-a56c-b19106dd46e0)
https://howchoo.com/minecraft/rarest-spawns-minecraft


