// :CATEGORY:Water Animation
// :NAME:L62improvedwateranimation
// :AUTHOR:Dana Moore
// :CREATED:2010-01-10 05:20:56.000
// :EDITED:2013-09-18 15:38:55
// :ID:429
// :NUM:585
// :REV:1.0
// :WORLD:Second Life
// :DESCRIPTION:
// L6.02-improved-water-animation.lsl
// :CODE:

// Copyright (c) 2008, Scripting Your World
// All rights reserved.
//
// Scripting Your World
// By Dana Moore, Michael Thome, and Dr. Karen Zita Haigh
// http://syw.fabulo.us
// http://www.amazon.com/Scripting-Your-World-Official-Second/dp/0470339837/
//
// You are permitted to use, share, and adapt this code under the 
// terms of the Creative Commons Public License described in full
// at http://creativecommons.org/licenses/by/3.0/legalcode.
// That means you must keep the credits, do nothing to damage our
// reputation, and do not suggest that we endorse you or your work.

//Listing 6.3 Improved Water Animation
float randBetween(float min, float max){
    return llFrand(max - min) + min;
}
default
{
    state_entry() { 
        float rand = llFrand(10.0);  
        llSetTimerEvent(rand);
    }
    timer() {
        state fallingWater;
    }
}

state fallingWater
{
    state_entry() {
        float rate = randBetween(0.05, 0.35);
        llSetTextureAnim(ANIM_ON | SMOOTH | LOOP, ALL_SIDES,
            1, 1,
            1.0, 0,
            rate
        );
        // llSleep(1.5); // not necessary, really
        state default;
    }
}
// END //
