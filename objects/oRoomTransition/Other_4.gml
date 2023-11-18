/// @description 
// Start sequence
startSeq = layer_sequence_create(global.seqLayer, 0, 0, seqRoomStart);

// Place player
if (instance_exists(targetSpawner) && instance_exists(oPlayerDD)) {
	oPlayerDD.x = targetSpawner.x + targetSpawner.sprite_width / 2;
	oPlayerDD.y = targetSpawner.y + targetSpawner.sprite_height / 2;
	
	// Restore player data
	set_entity_data(playerData, oPlayerDD);
}