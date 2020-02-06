-- ===================================================================
-- Tap Tap Database

-- Creation script
-- Saad Qamer

-- -------------------------------------------------------------------
-- Schema definition

create table Customer (
    fuid char(8)  not null,
    name  varchar(20),
    birthdate  date,
    hukou char(6),
    address varchar(25),
    constraint customer_pk
        primary key (fuid)
);

create table account (
    nickname varchar(15) not null,
    fuid char(8) not null,
    cc# char (16),
    type varchar(12),
    constraint account_pk
        primary key (nickname,fuid),
    constraint account_fk_fuid
    	foreign key (fuid) references Customer
);

create table card (
	nickname varchar(15) not null,
	fuid char(8) not null,
	card# char(8) not null,
	tier varchar(8),
	constraint card_pk
		primary key (card#)
	constraint card_fk_account
		foreign key (nickname,fuid) references account,
);

create table Kiosk (
	provider varchar(15) not null,
	place varchar(15),
	kiosk# char(8) not null,
	constraint Kiosk_pk
		primary key (prodvider,kiosk#)
);

create table Service (
	service varchar(10) not null,
	constraint Service_pk
		primary key (service)
);

create table Action (
	kiosk# char(8) not null,
	prodiver varchar(15) not null,
	service varchar(10),
	constraint Action_pk
		primary key (kiosk#,prodiver,service),
	constraint Action_fk_service
		foreign key (service) references Service,
	constraint Action_fk_kiosk
		foreign key (kiosk#,provider) references Kiosk
);

create table Tap (
	when timestamp not null,
	service varchar(10) not null,
	kiosk# char(8) not null
	provider varchar(15) not null,
	card# char(16) not null,
	constraint Tap_pk
		primary key (when,service,kiosk#,provider,card#),
	constraint Tap_fk_service
		foreign key (service) references Service,
	constraint Tap_fk_kiosk
		foreign key (kiosk#,provider) references Kiosk,
	constraint Tap_fk_card
		foreign key (card#) references Card
);
		
-- ----------------------------------------

   

