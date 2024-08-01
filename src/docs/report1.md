# Interim report


## Introduction
The topic is floating farmer panda. In these two programs, there will be a Panda with a farmer chasing the Panda and the farmer will be user controlled. The Panda program made in processing will simulate a Panda floating on water with bamboo sticks and rocks. The Panda will not be user controlled and will float around on water on its own. The farmer program will simulate a farmer. The user will be able to interact with the farmer and move it around to chase the Panda.

## User Stories and Requirements
 - List all user stories and requirements, together with their acceptance criteria.

User stories
  Most important = *
- "As a user, I want to see interaction so that I would be able to play the game" *
- "As a user, I want to the programs to be functional so that the game would not have any issues" *
- "As a user, I want to be challenging so that the game would be entertaining"
- "As a user, I want the game to be simple so that the game wouldn't require that much time to learn" *
- "As a user, I want to clear objectives so that the game would have a purpose" *
- "As a user, I want the game to rewarding so that I can feel rewarded"

Acceptance criteria
The following acceptance criteria are only for the most important user stories as they ensure that the user has a good experience playing it.

To test for interactions and the functionality of the game we conduct a basic test of playing the games and testing the limits such as the boundaries and collision detection to ensure that everything works the way its suppose to. If we encounter any bugs then we'll resort to using the debugger and stepping through the entire program to find the issue and patch it. 
  Other things we'll test for this section are:
   - if the variables are staying within the limits.
   - if the objects are colliding correctly and the detection limits are within parameters.
   - if the game resets properly.
   - if the post-collision reactions are functional.

To ensure that the game is simple, the team will as their parents/guardians to run the program and provide feedback. Before user testing is conducted the program will be tested with the developer team. 
The team will check the following criteria:
   - Only up to 4 variables are used, to reduce the complexity of the code itself which in turn will affect the program forcing the resulting        product to be simple due to the constraints put upon it.
   - The program should only require up to 4 inputs in total and be constrained to only accept upto 2 inputs simultaneously.
     - The inputs should be intuitive and be natural allowing the user to grasp the mechanics almost instantaneously.
   - The entire program should only have 1 objective, this is to minimise the learning curve which will satisfy the user's need for the program to be simple.

In order for the game to the intuitive and objective oriented the final program will need to, firstly have an objective the user can work towards achieving and secondly be easy to understand without the need for a developer to explain.
  - For the criteria to be met  the program will require test prompts advising the user, like a mini tutorial.
    - The text prompts are to be visible. 
    - The text needs to be timed suitably and only appear in it respective section of the program.
    - The prompts are not to be overlapped.

## User Acceptance Tests
 - Define test cases for user stories and requirements that your team decided to test as part of user acceptance testing. 
 - Show that these tests cover the most important aspects of the two programs.

TestID: INPUT
Purpose: To see if it accepts inputs and correctly interacts with the game.

Test Environment:
- Operating system: Windows 11
- Running on Processing

Test Steps:
1.  Input controls WASD
2.  Navigate to corners of the map

Expected outcome: Should move the character to corners of the map
- Should be responsive, and move correctly

Test Results: 
Pass: Moves character correctly and is responsive
Fail: moves character incorrectly/ sluggish



TestID: OBJ1
Purpose: to see if the game can respond to the challenges "completing challenges"

Test Environment:
- Operating system: Windows 11
- Running on processing

Test Steps:
1. Complete challenges presented

Expected results: The challenges counts current progress and clears when completed

Test Results
Pass: successfully displays the user's progress and clears the objective when complete
Fail: Fails to either display progress/ clears the objective when complete

## Coding Guidelines
 - Define coding guidelines that your team agreed to adhere to during the project.
 - Only up to 4 variables are to be permitted.
 - All objects and actions are to be designed as functions.
 - All code must have acceptable indentation.
 - All function names are to be maximum of 2 words and should be clear and direct.
 - Use descriptive names for all variables, function names, constants, and other identifiers.
 - Use single-letter identifiers only for the counter in loops.
 - All variable functions names are to start with a lower-case.
 
## Project Management
 - List the tasks and issues that are currently on your project board, and their status. Include who has been assigned to do the job, and who will be responsible for reviewing the tasks before it is moved to the `Done` column.
 - Explain which methods you will use for code review. Note, that reviewing a task, and reviewing code, are two separate activities.
 - Explain the overall progress with respect to the mid-semester milestone. 


One of the tasks was to create an image of the Panda. I was assigned that task so I created a simple image of the Panda’s face. As Wasif was assigned to review the tasks he suggested that the image of the Panda was incomplete and too simple. I edited the Panda by changing its eyes from an ellipse to rectangles. I did the same to its nose by replacing the triangle with a rectangle and creating a mouth. Wasif also suggested that my code was a bit unorganized and that I should add more comments. Other than that there wasn’t much to change.

Task: “create anenvironment of for the panda“  assigned to Wasif reviewed and by John and Safwaan 
- Some complaints were that background is were overally complicated → because they wanted to keep it simple rather then create more complex background 
- Task review: Information provided by group members aided in remaking the background to be more simpler 
- Code review: removed some of the bamboo and create a pond in the middle canvas 
- Allowed other group member work on other key tasks such the floating animation and the implementation 

Task "Determine how to animate floating " assigned to John and reviewed by Wasif 
- Complaints were received that the floating code only allowed for an object to float in one direction and did not consider several vectors of the panda.
- Task review: find a way to consider all the vectors of the panda and determine a new way to float the panda, taking into account these vectors.
- Code review: introducing the same variables as the panda and using those variables to create the same logic as the pervious version create easier implementation 
- Progress was made after making the required adjustments, allowing the project to enter its final stage of development.

Task: "Add the floating animation to the Panda" assigned to Safwaan and reveiwed by Wasif 
- Complaints: panda is staying within the constraints of the pond and its bouncing outside the desired location 
- Task review: is map the floating in such a way that the panda is constrain to the appropriate location 
- Code review: adjust the conditions of the floating code to be constrained to the edges of the pond 
- Progress was made after making the required adjustments, allowing the project to enter its final stage of development.






