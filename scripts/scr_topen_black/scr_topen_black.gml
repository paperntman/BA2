active_animation = -1;
sequence_layer = -1;
active_sequence = -1;

global.start_animation = function (_sequence, _depth) {
	active_animation = _sequence;
	sequence_layer = layer_create(_depth);
	active_sequence = layer_sequence_create(sequence_layer, 0,0, _sequence);
}


global.check_animation = function () {
	if (active_sequence == undefined) return;
	
	if (layer_sequence_is_finished(active_sequence)) {
		layer_sequence_destroy(active_sequence);
		layer_destroy(sequence_layer);
		
		active_animationn = -1;
		active_sequence = -1;
		sequence_layer = -1;
	}
}