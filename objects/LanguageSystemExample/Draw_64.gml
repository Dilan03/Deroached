// LANGUAGE CHANGE HOTKEYS

draw_text(10,10, "1 - ENGLISH");
draw_text(10,30, "2 - TURKISH");
draw_text(10,50, "3 - GERMAN");

// LANGUAGE LİSTS
for (var i = 0; i < lang_length(); i++){
	var languageName			= 	lang_get(i).name; // return struct ex : {ext : "en", dir : "langs\en.json", name : "English"}
	draw_text(10,96+(i*20), languageName);
}

draw_text(room_width/2, room_height/2, "TRANSLATE : " + lang("PLAY") );
draw_text(room_width/2, room_height/2+20, "STATIC TRANSLATE : " + text );