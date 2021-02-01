/// foundation of this file was built by Rat Casket and purchased in the Bundle for Racial Justice and Equality.
/// on itch.io, the store page can be found here: https://ratcasket.itch.io/hitboxes-and-hurtboxes
function god_create() {
	enum_init(); //initialize all of the state, and weapon info

	//screen shake
	shake = true; //shake true or false
	shakeDur = 5; //how long the shake lasts
	shakeForce = 1;

	//freeze/hitstop
	gameSpeed = 1; //used for hitstop/freeze
	freeze = false; //freeze true or false
	freezeDur = 5; //how long the freeze lasts

	//debug
	showBox = false; //used to show hitboxes
	audio_play_sound(moody_synth_gart, 6, true);


}
