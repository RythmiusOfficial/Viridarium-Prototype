/*
stepsize = size of each step the player will take; size of a debug square
turnsize = size of each turn (will always be 90)
vsp = vertical speed
hsp = horizontal speed
pressed = boolean to check whether if the player has already performed an input this step
dir = custom direction variable to track the presumed direction of the player; used for determining image_index
forward =  check whether if the player is moving forward (-1 = backwards, 0 = none, 1 = forwards)
strafe = check whether if the player is moving to the side (-1 = left, 0 = none, 1 = right)
run = boolean to check if the player is currently running
rooted = boolean to check whether if the player is currently rooted
chemicalactive = boolean to check whether if the player is currently emitting chemicals
chemicaltype = determines the type of chemical active (0 is attract, 1 is repel)
perceiving = boolean to check whether if the player is currently perceiving the world
*/

stepsize = 8;
turnsize = 90;
vsp = 0;
hsp = 0;
pressed = false;
dir = 90;
forward = 1;
strafe = false;
run = false;
rooted = false;
chemicalactive = false;
chemicaltype = 0;
perceiving = false;

global.custpx = 7;
global.custpy = 12;
