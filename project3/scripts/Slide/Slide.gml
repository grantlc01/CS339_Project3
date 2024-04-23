// SlideTransition (mode, targetroom)
// sets transitioon between rooms
// Target sets target room when using the goto mode.

with (oTransition)
{
	mode = argument[0]; 
	if(argument_count > 1) target = argument[1];	
}
