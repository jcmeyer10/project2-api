Link to the Front End Repo:
https://github.com/jcmeyer10/tap-app/tree/master/startbootstrap-one-page-wonder-1.0.3

Link to live app: http://jcmeyer10.github.io/tap-app/startbootstrap-one-page-wonder-1.0.3/

This is what I used to plan out my app

<img src="https://cloud.githubusercontent.com/assets/12531471/11219766/4bba02ae-8d2a-11e5-9b2a-a2a97dc65bf8.jpg" width="15%"></img>

Included is the simple wireframe, ERD, and user stories.

What I have today:

I have CRUD.


App Explanation:

This application allows users to keep track of what beer they have and how many they have.  Once a User registers and logs in, they can get their list of beers.  Using forms that show up upon login they can add a beer to their list and have it update.  The User can update the amount of beer they have.  The User can delete a beer from the list.

I utilized a PostgreSQL database using Rails to input tables and modify schema.  Utilizing AJAX calls, through jQuery click handlers, I was able to communicate with the server.  I rendered content on the front end using HTML/CSS through a bootstrap template.


User Stories:
Profile:
As a User, I want to register
As a User, I want to log in
As a User, I want to log out

Beer Locker:
C-
As a User, I want to add a beer, and the amount of that beer

R-
As a User, I want to be able to get a current list of my beers and their quantities

U-
As a User, I want to be able to update the amount of a beer I have

D-
As a User, I want to be able to delete a beer from my list

Future Beer Locker:
C-
As a User, I want to be able to add tasting notes to my beers

R-
As a User, I want to be able to read and keep my tasting notes in a seperate place

U-
As a User, I want to be able to update beer name, brewery or style of a beer in case I put it in wrong
As a User, I want to be able to update tasting notes

D-
As a User, I want to destroy my tasting notes
