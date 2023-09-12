
// DICORD - Eneskp3441#3573
// Itch.io : https://bit.ly/3w377KW
// Tw       : https://twitter.com/Eneskp3441
// Github: https://bit.ly/3jimBbh

/* MIT LICENSE
Copyright 2021 ENES KAPLAN

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.*/

/*

JSON FILE EXAMPLE :

{
    "en": {
		"LanguageName": "English",  //It has to be the language name and do not delete it.
		
		"PLAY" : "Start",    
		"Hello" : "Hello"
	}
}

ex use:

lang("Play") -> Start
*/

// =======================  VARIABLES =======================

global.Language						= "en";   // Default language code
global.LanguageFolder				= "langs\\" // YOUR LANGUAGE FOLDER. YOU CAN LEAVE "" IF YOU WANT



// -------------------------- DO NOT TOUCH --------------------------

global.LanguageList					= []; // do not edit this line.
global.LanguageNameList				= []; // do not edit this line.
global.LanguageStaticList			= []; // do not edit this line.


global.___TEXTLANGUAGES				= {} // do not edit this line.
global.__language_changed			= 0;
global.__LanguageMapLast			= -1;
global.defaultPath					= 
// ------------------------------------------------------------------



function get_def_path()				{
				var path = "";
				if(!file_exists(path+global.LanguageFolder+"en.json")) path  = game_save_id;
				if(!file_exists(path+global.LanguageFolder+"en.json")) path  = working_directory;
				global.defaultPath = path;
				
}

function read_buffer(fname)			{
	
			if(file_exists(fname)){
				var buff = buffer_load(fname);
				var txt = buffer_read(buff, buffer_string);
				buffer_delete(buff);
				return txt;
			}
			return 0;
			
}

function lang_init()				{			// PUT PUT IT IN THE GAME START EVENT.
		//ds_map_clear(global.___TEXTLANGUAGES);
		delete global.___TEXTLANGUAGES;
		global.___TEXTLANGUAGES  = {};
		get_def_path();
		var file_dir			= global.defaultPath+global.LanguageFolder+global.Language+".json";
		if(file_exists(file_dir)){
		var buff = buffer_load(file_dir);
		var lan_texts = buffer_read(buff, buffer_string);
		buffer_delete(buff);
		var json				= json_parse(lan_texts);	
		global.___TEXTLANGUAGES = json;
		
		}
		global.__LanguageMapLast = global.___TEXTLANGUAGES[$ global.Language];
		
}

function lang(str)					{			// TRANSLATE TEXT
		var file_dir			= global.defaultPath+global.LanguageFolder+global.Language+".json"
		try {
		if ((global.__LanguageMapLast != undefined ) && 1){
			var val = global.__LanguageMapLast[$ str];
			return(val);

		}else {
			return str;	
		}
		}
	

}

function langs_get_from_file()				{			
		var _file_name = ""

		var _folder = global.defaultPath+global.LanguageFolder
		
		_file_name = file_find_first( _folder + "*.json", 0)
		while ( _file_name != "" )
		{		var dirr = _folder+_file_name;
				var buff = buffer_load(dirr);
				var lan_texts = buffer_read(buff, buffer_string);
				buffer_delete(buff);
				var json				= json_parse(lan_texts);
				
				var lang_ext = variable_struct_get_names(json)[0];
				
				var lang_res			= json[$ lang_ext]
				var val = lang_res[$ "LanguageName"];
				
				global.LanguageList[array_length(global.LanguageList)] =  lang_ext;
				global.LanguageNameList[array_length(global.LanguageNameList)] = val;
				
		        _file_name = file_find_next()
	    
		}	
}



function langs_get_all(){ // RETURNS LIST OF ALL LANGUAGES FOUND.
		return global.LanguageList;
}

function lang_get(index)			{			// RETURNS KNOWLEDGE OF THE GIVEN LANGUAGE.  ex : {ext : "en", dir : "langs\en.json", name : "English"}
		if(index <= array_length(global.LanguageList))	{
			var name = global.LanguageList[index];
			var val = {
				ext : 	global.LanguageList[index],
				dir : global.defaultPath+global.LanguageFolder+global.LanguageList[index]+".json",
				name : global.LanguageNameList[index],
			}
			return val;
		}
		return 0;
		
}

function lang_length()				{			// RETURNS TOTAL NUMBER OF LANGUAGES
	return (array_length(global.LanguageList));	
}
	
function lang_set(lang_code)		{			// CHANGE GAME LANGUAGE
	
	global.Language						= lang_code;
	lang_init();
	global.__LanguageMapLast			= global.___TEXTLANGUAGES[$ global.Language];
	global.__language_changed			= 1;
	
}
		
function lang_is_changed()			{			// İF IT CHECKS IF THE LANGUAGE HAS CHANGED.
		return global.__language_changed;
}

function lang_static(variable_name, default_value)				{   // PUT IT ON EVENTS THAT WORK ONCE!
		var static_data				= {
			obj : object_index,
			var_name : variable_name,
			def_value : default_value,
		}
		
		array_push(global.LanguageStaticList, static_data);
		
		return lang(default_value);
		
		
}

function reload_lang_when_changed(){
	
	if global.__language_changed {
		
		for ( var i = 0; i < array_length(global.LanguageStaticList); i++ ) {
			
				var object_variable_data			= global.LanguageStaticList[i];
				variable_instance_set(object_variable_data.obj, object_variable_data.var_name, lang(object_variable_data.def_value));
			
		}
		
		global.__language_changed		= 0;
	}
	
	
}