Unit UnitTypes;

interface


TYPE
	form = Array [0..7] of Char;

CONST 
	tableauforme : form = ('a','b','c','d','e','f','g','h');

TYPE tuile = Record
	couleur : Integer;
	forme : Integer;
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
	Grille = Array of Array of tuile;

TYPE player = Record
	nom : string;
	points : Integer;
	main : inventory;
	humain : Boolean;
	age : Integer;
END;


TYPE
	maillonfaible = Record
	data : player;
	Address : ^maillon;
END;

TYPE
	listejoueurs = ^maillonfaible;

TYPE parametres_de_jeu = Record
	nb_tuiles_identiques : Integer;
	nb_couleurs : Integer;
	nb_formes : Integer;
END;

TYPE jeu = Record
	tilebag : pioche;
	plateau : Grille;
	playerlist : listejoueurs;
	gameparameters : parametres_de_jeu;
END;


implementation

END.