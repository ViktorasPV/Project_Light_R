// @param text_id
function scr_game_text(_text_id){

switch(_text_id) {
	
	case "npc_1":
	scr_text("Sveikas!", "Mentor", -1);
        scr_text_color(0, 100, c_red, c_red, c_white, c_white);
        scr_text_shake(0, 100);
	scr_text("Labas...", "Player"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
    scr_text("Galiu kažkuo padėti?", "Player_confused");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
    scr_text("Ne, nelabai... Šis miestelis jau pakankamai gerai veikia", "Mentor", -1);
        scr_text_color(0, 100, c_red, c_red, c_white, c_white);
    scr_text("Čia visi nauji žmonės ateina, kurie yra taip sumiše kaip tu.", "Mentor", -1);
        scr_text_color(0, 100, c_red, c_red, c_white, c_white);
    scr_text("Oh", "Player_suprised");   
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
	scr_text("Nori pasivaikščioti su manimi?", "Mentor", -1);
        scr_text_color(0, 100, c_red, c_red, c_white, c_white);
        
        scr_option("Taip!", "npc_1 - Hello");
        
        scr_option("Ne...", "npc_1 - Screw off");   
        
	break;
    case "npc_1 - Hello":
        
        scr_text("Paskui mane tada", "Mentor", -1);
        scr_text_color(0, 100, c_red, c_red, c_white, c_white);
        
        break;
    
    case "npc_1 - Screw off":
        
        scr_text("Kaip nori", "Mentor", -1);
        scr_text_color(0, 100, c_red, c_red, c_white, c_white);
        
        break;
	
	case "npc_2":
	scr_text("Hi!");
	scr_text("Hi!");
	scr_text("Hi!");
	break;

    case "npc_3":
    scr_text("Sako kad miestas čia tūrėtų būti", "Npc_1", noone);
        scr_text_color(0, 100, c_blue, c_blue, c_blue, c_blue);
    scr_text("Bet nieko nėra", "Npc_1", noone);
        scr_text_color(0, 100, c_blue, c_blue, c_blue, c_blue);
    scr_text("Nu įdomiai", "Npc_1", noone);    
        scr_text_color(0, 100, c_blue, c_blue, c_blue, c_blue);
        
    case "seeing_flowers":
        scr_text("Bent kažkiek šviesos pagaliau...", "Player_sad"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);    
        
        
        
        
        
}
}