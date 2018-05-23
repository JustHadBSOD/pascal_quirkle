Unit UnitTypes;

interface



TYPE tuile = Record
	couleur = Integer;
	forme = Array ['','','','','','','',''];
END;

TYPE
	maillon = Record
	data : tuile;
	Address : ^maillon;
END;

TYPE
	pioche = ^maillon;

TYPE 
	inventory = ^maillon;

TYPE
	Grille = Array of tuile;

TYPE player = Record
	nom = string;
	points = Integer;
	main = inventory;
	humain = Boolean;
	age = Integer;
END;

TYPE
	listejoueurs = ^maillon;

TYPE parametres_de_jeu = Record
	nb_tuiles_identiques = Integer;
	nb_couleurs = Integer;
	nb_formes = Integer;

TYPE jeu = Record
	tilebag = pioche;
	plateau = Grille;
	playerlist = listejoueurs;
	gameparameters = parametres_de_jeu;
END;