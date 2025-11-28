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
        
        break;
        
    case "seeing_flowers":
        scr_text("Bent kažkiek šviesos pagaliau...", "Player_sad"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);    
        break;
        
    case "first_enemy":
        scr_text("Kas ten?", "Player");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);    
        scr_text("Ei, pone.", "Player");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);    
        scr_text("Gal žinote kur mes esame?", "Player");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);    
        break;
        
    case "first_enemy1":
        scr_text("Ehh... jūs mane girdėjot...?", "Player_confused");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);    
        break;
    
    case "hit_by_enemy":
        scr_text("AU!", "Player_suprised");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("KODĖL MANE PUOLI?!", "Player_suprised");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);        
        break;
    
    case "more_enemies":
        scr_text("DAUGIAU JŲ YRA?!", "Player_suprised");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);        
        break;
    
    case "see_the_light":
        scr_text("Ten šviesa!", "Player");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        break;
    
    case "not_now":
        scr_text("Geriau eiti link šviesos", "Player_suprised");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        break;
    
    case "First_sword_meet":
        scr_text("Labas", "Sword", noone);
        scr_text_color(0, 100, c_aqua, c_aqua, c_white, c_white);
        scr_text_float(0, 100);
        scr_text("Ką?! Kas tai pasakė?!", "Player_suprised");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Nebijok...", "Sword", noone);
        scr_text_color(0, 100, c_aqua, c_aqua, c_white, c_white);
        scr_text_float(0, 100);
        scr_text("Viskas yra gerai...", "Sword", noone);
        scr_text_color(0, 100, c_aqua, c_aqua, c_white, c_white);
        scr_text_float(0, 20);
        scr_text("Aš esu prieš tave", "Sword", noone);
        scr_text_color(0, 100, c_aqua, c_aqua, c_white, c_white);
        scr_text_float(0, 20);
        scr_text("Tu...", "Player_confused");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Kardas?", "Player_suprised");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Taip", "Sword", noone);
        scr_text_color(0, 100, c_aqua, c_aqua, c_white, c_white);
        scr_text_float(0, 20);
        scr_text("Negi manes nepažįsti?", "Sword", noone);
        scr_text_color(0, 100, c_aqua, c_aqua, c_white, c_white);
        scr_text_float(0, 20);
        scr_text("Na.", "Player_suprised");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Kai tu paminėjai tai...", "Player");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Jaučiu, lyg dauguma šito jaučiasi, gana panašiai...", "Player");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Gal su broliu tokiame pasaulyje esi buves?", "Sword", noone);
        scr_text_color(0, 100, c_aqua, c_aqua, c_white, c_white);
        scr_text_float(0, 100);
        scr_text("Iš tikro jo", "Player");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Pala.", "Player_confused");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Kaip tu žinai apie tai...?", "Player_confused");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text(" ", "Player_suprised");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Ar tu..?", "Player_suprised");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Kardas su kuriuo žaisdavau...?", "Player_suprised");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Na pagaliau prisiminei", "Sword", noone);
        scr_text_color(0, 100, c_aqua, c_aqua, c_white, c_white);
        scr_text_float(0, 100);
        scr_text("Negaliu patikėti!", "Player_happy");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Tu man buvai kaip antras brolis!, Nors tu esi daiktas...", "Player_happy");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Turi problemų su tuo?", "Sword", noone);
        scr_text_color(0, 100, c_aqua, c_aqua, c_white, c_white);
        scr_text_float(0, 20);
        scr_text("Ne ne", "Player_suprised");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Ai tiesiog juokauju", "Sword", noone);
        scr_text_color(0, 100, c_aqua, c_aqua, c_white, c_white);
        scr_text_float(0, 20);
        scr_text("Tai...", "Sword", noone);
        scr_text_color(0, 100, c_aqua, c_aqua, c_white, c_white);
        scr_text_float(0, 20);
        scr_text("Nori eiti sunaikinti blogiukus kaip anksčiau?", "Sword", noone);
        scr_text_color(0, 100, c_aqua, c_aqua, c_white, c_white);
        scr_text_float(0, 100);
        scr_text("Oooooo taip.", "Player_happy");
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        
        break;
    
    case "no_thanks":
        scr_text("Geriau ten negrįšti", "Player_sad"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Čia žymiai saugiau", "Player"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);        
        break;
    
    case "long_time":
        scr_text("Ka gi...", "Sword", noone);
        scr_text_color(0, 100, c_aqua, c_aqua, c_white, c_white);
        scr_text_float(0, 100);
        scr_text("Ilgai nesimateme.", "Sword", noone);
        scr_text_color(0, 100, c_aqua, c_aqua, c_white, c_white);
        scr_text_float(0, 100);
        scr_text("Na jo.", "Player"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Ir jaučiu, kad ilgai būsim kartu vėl", "Player_sad"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);    
        break;
    
        
        
        
}
}