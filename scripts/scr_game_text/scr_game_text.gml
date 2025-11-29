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
    
    case "mentor_meet":
        scr_text("Uhh...", "Player"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua); 
        
        break;
    case "mentor_meet1":
        scr_text("Hm?", "Mentor", -1);
        scr_text_color(0, 100, c_red, c_red, c_white, c_white);
        scr_text("Kas jūs būtumėt?", "Player"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Aš?", "Mentor", -1);
        scr_text_color(0, 100, c_red, c_red, c_white, c_white);
        scr_text("Ai tesiog senukas, kuris prižiūri šias teritorijas", "Mentor", -1);
        scr_text_color(0, 100, c_red, c_red, c_white, c_white);
        scr_text("Pamačiau, kad tave persikiojo keli padarai.", "Mentor", -1);
        scr_text_color(0, 100, c_red, c_red, c_white, c_white);
        scr_text("Ir norėjau pažiūrėti ar tau viskas gerai.", "Mentor", -1);
        scr_text_color(0, 100, c_red, c_red, c_white, c_white);
        scr_text("Na, man viskas gerai", "Player_sad"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("O kur pradingo tos pabaisos?", "Player"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Ehh.", "Mentor", -1);
        scr_text_color(0, 100, c_red, c_red, c_white, c_white);
        scr_text("Su jomis susidorojau.", "Mentor", -1);
        scr_text_color(0, 100, c_red, c_red, c_white, c_white);
        scr_text("Jei nori pamatyti, gali nueiti į kairę", "Mentor", -1);
        scr_text_color(0, 100, c_red, c_red, c_white, c_white);
        scr_text("Uhh, gerai...?", "Player_suprised"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Aš juo nepasitikiu", "Sword", noone);
        scr_text_color(0, 100, c_aqua, c_aqua, c_white, c_white);
        scr_text_float(0, 100);
        scr_text("Viskas yra gerai", "Mentor", -1);
        scr_text_color(0, 100, c_red, c_red, c_white, c_white);
        scr_text("Gali manimi pasitikėti.", "Mentor", -1);
        scr_text_color(0, 100, c_red, c_red, c_white, c_white);
        scr_text("Kaip jis mane girdėjo...?", "Sword", noone);
        scr_text_color(0, 100, c_aqua, c_aqua, c_white, c_white);
        scr_text_float(0, 100);
        scr_text("Aš jau pripratęs girdėti kitų daiktus kalbant.", "Mentor", -1);
        scr_text_color(0, 100, c_red, c_red, c_white, c_white);
        scr_text("Tai paprastas dalykas čia?", "Player_confused"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Na...", "Mentor", -1);
        scr_text_color(0, 100, c_red, c_red, c_white, c_white);
        scr_text("Žiūrėk, aš mielai pliurpčiau apie šitai ilgai.", "Mentor", -1);
        scr_text_color(0, 100, c_red, c_red, c_white, c_white);
        scr_text("Bet čia nepatogi vieta tam", "Mentor", -1);
        scr_text_color(0, 100, c_red, c_red, c_white, c_white);
        scr_text("Gali mane sutikti miestelyje, kuris yra netoli. Tesiog eik toliau į dešinę.", "Mentor", -1);
        scr_text_color(0, 100, c_red, c_red, c_white, c_white);
        break;
    
    case "long_journey_ahead":
        scr_text("Visa šitai jaučiasi keista", "Player"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Bet ir įdomiai", "Player"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Jaučiu, kad turėsime ilgą kelionę iki namų", "Player_sad"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Ir visą jos laiką, aš tau padėsiu.", "Sword", noone);
        scr_text_color(0, 100, c_aqua, c_aqua, c_white, c_white);
        scr_text_float(0, 100);
        scr_text("Ačiū.", "Player_sad"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        break;
        
        
    case "enemy_corpses":
        scr_text("Regis tas senukas moka kovoti", "Sword", noone);
        scr_text_color(0, 100, c_aqua, c_aqua, c_white, c_white);
        scr_text_float(0, 100);
        scr_text("Geriau būti jo pusėje, mūsų abiejų labui", "Sword", noone);
        scr_text_color(0, 100, c_aqua, c_aqua, c_white, c_white);
        scr_text_float(0, 100);  
        scr_text("Nemanau, kad jis yra taip pavojingas. Jis atrodo gana draugiškas tiems kurie nėra...", "Player"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);      
        scr_text("Padarai, kaip šitie...", "Player"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        break;
    
    case "fisherman":
        scr_text("Sveikas", "Player"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Sveikas. Pirmas kartas čia?", "fisherman", noone);
        scr_text_color(0, 100, c_purple, c_purple, c_purple, c_purple);
        scr_text("Taip", "Player_happy"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Hm. Prisimenu kai aš čia pirmą kartą atvykau. Ši vieta buvo visiškai tuščia.", "fisherman", noone);
        scr_text_color(0, 100, c_purple, c_purple, c_purple, c_purple);
        scr_text("Nors tuščia, ši vieta buvo puiki miesteliui pastatyti. Ir ypač žvėjoti.", "fisherman", noone);
        scr_text_color(0, 100, c_purple, c_purple, c_purple, c_purple);
        scr_text("Ar tavo meškerė su tavimi irgi kalba?", "Player"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Ot, net nepastebėjau. Tu turi šviesų daiktą.", "fisherman", noone);
        scr_text_color(0, 100, c_purple, c_purple, c_purple, c_purple);
        scr_text("Gražus kardas, bet ir labai svarbus tau.", "fisherman", noone);
        scr_text_color(0, 100, c_purple, c_purple, c_purple, c_purple);
        scr_text("Rūpinkis juo kaip savo abejomis akimis. Tau žinok labai pasisekė. Kaip ir man.", "fisherman", noone);
        scr_text_color(0, 100, c_purple, c_purple, c_purple, c_purple);
        scr_text("Nes daugumai, to ne įvyko, ir jie liko be šviesos ilgam.", "fisherman", noone);
        scr_text_color(0, 100, c_purple, c_purple, c_purple, c_purple);
        scr_text("Senukas kuris čia ateina dažnai gali tau apie tai papasakoti.", "fisherman", noone);
        scr_text_color(0, 100, c_purple, c_purple, c_purple, c_purple);
        scr_text("Kaip tik ir ruošiausi", "Player"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Prieš tau išeinant, gal nori išklausyti kaip šis miestas operuoja?", "fisherman", noone);
        scr_text_color(0, 100, c_purple, c_purple, c_purple, c_purple);
        
        scr_option("Gerai", "fisherman_yes");
        
        scr_option("Ne ačiū", "fisherman_no"); 
        
        break;
    
    case "fisherman_yes":
        
        scr_text("Tai matai kaip visos šviesos čia yra tokios pačios spalvos kaip aš?", "fisherman", noone);
        scr_text_color(0, 100, c_purple, c_purple, c_purple, c_purple);
        scr_text("Jo, tai pastebėjau.", "Player"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Tai dėl to, nes aš šiam miestui įteikiu šviesos. Aš žvejoju ne be reikalo čia.", "fisherman", noone);
        scr_text_color(0, 100, c_purple, c_purple, c_purple, c_purple);
        scr_text("Kekviena karta kai aš įmetų meškerę į šį ežerą, mano meškerėje kaupiasi šviesos.", "fisherman", noone);
        scr_text_color(0, 100, c_purple, c_purple, c_purple, c_purple);
        scr_text("Ir tada perduodu ją miestui.", "fisherman", noone);
        scr_text_color(0, 100, c_purple, c_purple, c_purple, c_purple);
        scr_text("Hm, įdomiai.", "Player"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
        scr_text("Tas pats nutinka tavo kardui, kai tu nužudai tas pabaisas.", "fisherman", noone);
        scr_text_color(0, 100, c_purple, c_purple, c_purple, c_purple);
        scr_text("Tikiuosi, kad rasi vieta kur panaudoti ją.", "fisherman", noone);
        scr_text_color(0, 100, c_purple, c_purple, c_purple, c_purple);
        
        break;
    
    case "fisherman_no":
        
        scr_text("Gerai, supratau.", "fisherman", noone);
        scr_text_color(0, 100, c_purple, c_purple, c_purple, c_purple);
		
		case "mentor_ask":
    scr_text("Sugebėjai atvykti čia.", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
	scr_text("Tai regis tu ne tik moki apsiginti.", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
	scr_text("Bet ir norėjai išgirsti daugiau apie šį pasaulį.", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
	scr_text("Ar gal apsigalvojai?", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
    
    // The options link to specific Text IDs
    scr_option("Ne, noriu išgirsti", "mentor_accepted");
    scr_option("Apsigalvojau, noriu toliau keliatui greitai.", "mentor_declined");
    break;

case "mentor_accepted":
    scr_text("Puiku. Lauksiu taves šiame namelyje", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
    break;

case "mentor_declined":
    scr_text("Gerai tada. Lauksiu taves dešiniame kelyje.", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
    break;
	
	case "mentor_house_talk":
	scr_text("Gana jauku čia.", "Player"); 
    scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
	scr_text("Na, kai visas pasaulis yra toksai tamsus ir pilkas.", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
	scr_text("Bet kas normalaus iš tikro pasaulio atrodys jaukiai.", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
	scr_text("O kaip išvis čia patekau?", "Player"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
		scr_text("To... aš negaliu paaiškinti. Niekas čia nežino kaip jie pateko į šį tamsų pasaulį", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
	scr_text("Hm. Bet ir minėjai kad esi girdėjęs kitų daiktus kalbant. Kaip tai suprast?", "Player"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
		scr_text("Esu sutikes keletą kaip tu. Tie, kaip tu, yra labai sėkmingi.", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
	scr_text("Dauguma į šį pasaulį patenka be daikto su šviesos. Tai jie miršta greičiau.", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
	scr_text("Aj...", "Player_sad"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
		scr_text("Bet į pasaulį tu ir kiti taip pateko, žinai dėl ko?", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
	scr_text("Nes tai dalykas, kuris jums suteikė daugiausia džiaugsmo.", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
	scr_text("Dauguma žmonių turi pažįstama kaip jų didžiausia džiaugsmą.", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
	scr_text("Mama, sunus, močiutė, žmona....", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
	scr_text(" ", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
	scr_text("Anūkė...", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
	scr_text("O man... visada buvo geriausi momentai kai aš žaisdavau su šiuo kardu.", "Player_sad"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
		scr_text("Taip, kaip ir tam žvejui, ta meškerė buvo jo vertingiausias dalykas.", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
	scr_text("Viskas labiau aišku... O kas yra tie padarai?", "Player"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
		scr_text("Jie? Na... Jie yra žmonės kurie prarado visą savo šviesą...", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
	scr_text("Juose nieko nebelieka viduje kaip siela. Ir jie tampa pabaisa, kurių pagrindinė misija yra - gauti daugiau šviesos", "Mentor");
    scr_text_color(0, 200, c_red, c_red, c_white, c_white);
	scr_text("O kas jeigu jie gauna šviesos vėl?", "Player_confused"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
	scr_text("Kai tampi tokia pabaisa, daugiau grįžti nebegali... Nepriklausant kiek šviesos surenki...", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
	scr_text("Oh", "Player_suprised"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
		scr_text("Tai jo... neprarask visos savo šviesos čia.", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
	scr_text("Pakankamai pašnekėjom. Galėsime pratęsti kelionę pro dešinijį kelią. Lauksiu tenai taves.", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
		
		break;
		
		case "locked":
		scr_text("Užrakinta", "Player"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
		break;
		
		case "GET OUT":
		scr_text("EIK LAUK IŠ ČIA!", "Npc_1", noone);
        scr_text_color(0, 100, c_blue, c_blue, c_blue, c_blue);
    scr_text("ČIA MANO NAMAI!", "Npc_1", noone);
        scr_text_color(0, 100, c_blue, c_blue, c_blue, c_blue);
    scr_text("GERAI, GERAI!", "Player_suprised"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
		break;
		
		case "purple":
		scr_text("Regis čia yra kur jis laiko visą ta šviesą.", "Player"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
		scr_text("Nori pasiimti kažkiek sau?", "Sword", noone);
        scr_text_color(0, 100, c_aqua, c_aqua, c_white, c_white);
        scr_text_float(0, 100);
		scr_text("Jokiu būdu.", "Player_sad"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
		break;
		
		case "mentor_room3_talk":
		scr_text("Noriu įspėti, kad tenai į dešinę, bus naujas padaro tipas.", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
	scr_text("Koksai?", "Player"); 
        scr_text_color(0, 100, c_aqua, c_aqua, c_aqua, c_aqua);
		scr_text("Gana paprastas. Kai pamatai jį, arba realistiškiau... išgirsi, tada jį atmušk arba atakuok.", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
	scr_text("Jis yra labai trapus, tai iš karto mirs.", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
	scr_text("Bet jis labai greitas tai reaguok greitai.", "Mentor");
    scr_text_color(0, 100, c_red, c_red, c_white, c_white);
		
		
        
        
        
        
        
    
        
        
        
}
}