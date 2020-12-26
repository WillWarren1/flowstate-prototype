/// foundation of this file was built by Rat Casket and purchased in the Bundle for Racial Justice and Equality.
/// on itch.io, the store page can be found here: https://ratcasket.itch.io/hitboxes-and-hurtboxes
/// @description  Approach(start, end, shift);
/// @function  Approach
/// @param start
/// @param  end
/// @param  shift
function approach(argument0, argument1, argument2) {

	if (argument0 < argument1)
	    return min(argument0 + argument2, argument1); 
	else
	    return max(argument0 - argument2, argument1);



}
