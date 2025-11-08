// @param text_id
function scr_game_text(_text_id){

switch(_text_id) {
	
	case "npc_1":
	scr_text("Hi! Nigg");
	scr_text("Hi! Nigg");
	scr_text("Hi! Nigg");
        scr_option("Hello", "npc_1 - Hello");
        scr_option("Fuck off", "npc_1 - Fuck off");   
	break;
    case "npc_1 - Hello":
        
        scr_text("Hi!");
        
        break;
    
    case "npc_1 - Fuck off":
        
        scr_text("Fuck you too");
        
        break;
	
	case "npc_2":
	scr_text("Hi! Nigge");
	scr_text("Hi! Nigge");
	scr_text("Hi! Nigge");
	break;
}
}