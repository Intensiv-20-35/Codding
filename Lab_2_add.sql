create table Game_info (
	ID_Game			NUMBER(1)	PRIMARY KEY,
	Name_of_game 	CHAR(20)	NOT NULL,
	Developer		CHAR(20)	NOT NULL,
	Genre			CHAR(10)	NOT NULL,
	Story			CHAR(300)	NOT NULL,
	)
	
create table Locations (
	ID_Location		NUMBER(3)	PRIMARY KEY,
	Title			CHAR(30)	NOT NULL,
	Bonfire			CHAR(30)	NOT NULL,
	ID_Game			NUMBER(1)   NOT NULL,
	Transition		NUMBER(1)	NOT NULL,
	CONSTRAINT FK_Locations_ID_Game		foreign key (ID_Game)		references Game_info(ID_Game),
	CONSTRAINT FK_Locations_Transition  foreign key (Transition)	references Locations(ID_Location)
	)
	
create table Enemies (
	ID_enemies		NUMBER(3)	PRIMARY KEY,
	Name			CHAR(20)	NOT NULL,
	Type			CHAR(10)	NOT NULL,
	HP				CHAR(10)	NOT NULL,
	Received_money	NUMBER(5)	NOT NULL,
	Tactics			CHAR(300)
	)

create table Characters (
	ID_Characters	NUMBER(3)	PRIMARY KEY,
	Name			NUMBER(3)	NOT NULL,
	Description		CHAR(300),
	Story_line		CHAR(1000)
	)

create table NPC_location (
	ID				NUMBER(3)	PRIMARY KEY,
	ID_Location		NUMBER(3),
	ID_enemies		NUMBER(3),
	ID_Characters	NUMBER(3),
	CONSTRAINT FK_NPC_location_ID_Location		foreign key (ID_Location)	references Locations(ID_Location),
	CONSTRAINT FK_NPC_location_ID_enemies		foreign key (ID_enemies)	references Enemies(ID_enemies),
	CONSTRAINT FK_NPC_location_ID_Characters	foreign key (ID_Characters)	references Characters(ID_Characters)
	)
	
create table Armor (
	ID_Armor			 NUMBER(3)	PRIMARY KEY,
	Title				 CHAR(20)	NOT NULL,
	Type				 CHAR(10)	NOT NULL,
	Physical_protection	 NUMBER(4)	NOT NULL,
	Fire_protection		 NUMBER(4)	NOT NULL,
	Lightning_protection NUMBER(4)	NOT NULL,
	Magic_protection	 NUMBER(4)	NOT NULL,
	ID_Location			 NUMBER(3)	NOT NULL,
	ID_Characters		 NUMBER(3)	NOT NULL,
	CONSTRAINT FK_NPC_Armor_ID_Location		foreign key (ID_Location)	references Locations(ID_Location),
	CONSTRAINT FK_NPC_Armor_ID_Characters	foreign key (ID_Characters)	references Characters(ID_Characters)
	)
	
create table Weapon (
	ID_Weapon				NUMBER(3)	PRIMARY KEY,
	Title					CHAR(20)	NOT NULL,
	Type					CHAR(20)	NOT NULL,
	Damage					NUMBER(4)	NOT NULL,
	Distance				NUMBER(4),
	Support_for_improvement BOOLEAN		NOT NULL,
	ID_Characteristic 		NUMBER(2)	NOT NULL,
	ID_Effect 				NUMBER(1),
	ID_Location				NUMBER(3),
	ID_Characters			NUMBER(3), 
	CONSTRAINT FK_NPC_Weapon_ID_Location		foreign key (ID_Characteristic)	references Character_characteristic(ID_Characteristic),
	CONSTRAINT FK_NPC_Weapon_ID_Effect			foreign key (ID_Effect)			references Negative_effects(ID_Effect),
	CONSTRAINT FK_NPC_Weapon_ID_Location		foreign key (ID_Location)		references Locations(ID_Location),
	CONSTRAINT FK_NPC_Weapon_ID_Characters		foreign key (ID_Characters)		references Characters(ID_Characters)
	)

create table Character_characteristic (
	ID_Characteristic	NUMBER(2)	PRIMARY KEY,
	Title				CHAR(15)	NOT NULL,
	Influence			CHAR(50)	NOT NULL
	)

create table Items (
	ID_Items		NUMBER(3)	PRIMARY KEY,
	Title			CHAR(20)	NOT NULL,
	Consumable		BOOLEAN		NOT NULL,
	Use_for			CHAR(100)	NOT NULL
	)

create table Sale_items (
	ID				NUMBER(3)	PRIMARY KEY,
	ID_Characters	NUMBER(3)	NOT NULL,
	ID_Items		NUMBER(3)	NOT NULL,
	CONSTRAINT FK_NPC_Sale_items_ID_Characters		foreign key (ID_Characters)		references Characters(ID_Characters)
	CONSTRAINT FK_NPC_Sale_items_ID_Items			foreign key (ID_Items)			references Items(ID_Items),
	
	