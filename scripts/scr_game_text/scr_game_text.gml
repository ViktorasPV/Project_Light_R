// @param text_id
function scr_game_text(_text_id){

switch(_text_id) {
	
	case "npc_1":
	scr_text("Sveikas!", "Mentor", -1);
	scr_text("Labas...", "Player"); 
    scr_text("Galiu kažkuo padėti?", "Player_confused");
    scr_text("Ne, nelabai... Šis miestelis jau pakankamai gerai veikia", "Mentor", -1);
    scr_text("Čia visi nauji žmonės ateina, kurie yra taip sumiše kaip tu.", "Mentor", -1);
    scr_text("Oh", "Player_suprised");   
	scr_text("Nori pasivaikščioti su manimi?", "Mentor", -1);
        scr_option("Taip!", "npc_1 - Hello");
        scr_option("Ne...", "npc_1 - Screw off");   
	break;
    case "npc_1 - Hello":
        
        scr_text("Paskui mane tada", "Mentor", -1);
        
        break;
    
    case "npc_1 - Screw off":
        
        scr_text("Kaip nori", "Mentor", -1);
        
        break;
	
	case "npc_2":
	scr_text("Hi!");
	scr_text("Hi!");
	scr_text("Hi!");
	break;
}
}