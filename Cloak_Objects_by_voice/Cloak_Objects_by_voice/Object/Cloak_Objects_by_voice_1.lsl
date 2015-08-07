// :CATEGORY:Cloaking
// :NAME:Cloak_Objects_by_voice
// :AUTHOR:Anonymous
// :CREATED:2010-01-10 05:20:56.000
// :EDITED:2013-09-18 15:38:50
// :ID:177
// :NUM:248
// :REV:1.0
// :WORLD:Second Life
// :DESCRIPTION:
// Cloak Objects by voice.lsl
// :CODE:

default
{
    state_entry()
    {
        key owner = llGetOwner();
        llWhisper(0,"Cloaking ready");
        llListen(0,"",owner,"");
    }
    
    listen( integer channel, string name, key id, string message )
    {
        if( message == "cloak" )
        {
            llSetStatus(STATUS_PHANTOM, TRUE);
            llWhisper(0,"Cloaking");
            llSetAlpha(0,ALL_SIDES);
        }
        if( message == "uncloak" )
        {
            llSetStatus(STATUS_PHANTOM, FALSE);
            llWhisper(0,"Uncloaking");
            llSetAlpha(1,ALL_SIDES);
        }
    }
}
// END //
