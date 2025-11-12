// @param text_id
function scr_game_text(_text_id){

switch(_text_id) {
	
	case "npc_1":
	scr_text("Sveikas!");
	scr_text("Čia yra mažas bet jaukus miestelis");
	scr_text("Ar tau patinka šis miestas");
        scr_option("Taip!", "npc_1 - Hello");
        scr_option("Ne...", "npc_1 - Screw off");   
	break;
    case "npc_1 - Hello":
        
        scr_text("Hi!");
        
        break;
    
    case "npc_1 - Screw off":
        
        scr_text("Screw you too");
        
        break;
	
	case "npc_2":
	scr_text("Hi!");
	scr_text("Hi!");
	scr_text("Hi!");
	break;
}
}