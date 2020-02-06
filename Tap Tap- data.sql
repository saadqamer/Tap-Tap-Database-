Data: An SQL script that adds the requested data to your database under DB2.

This will be a sequence of SQL INSERT statements. (Do not use IMPORT or LOAD 
for this project. These are commands for bulk loading.)

Saad Qamer
----------------------------------------------------

insert into Customer (fuid,name,birthdate,hukou,address) values
	('c69e918d', 'Margaret Atwood',  '11/18/1939',   'M5R2L7',   '105 Admiral Road'),
	('461a04a3', 'Allison Ayers',    '02/21/1998',   'M6P1P7',   '181 Annette Street'),
	('eb4bb90f', 'William Ayers',    '11/14/1997',   'M6P1P7',   '181 Annette Street'),
	('645e3ed4', 'Michael Cera',     '07/07/1988',   'M5R1Y9',   '38 Castle View Avenue'),
	('c62e1271', 'Mark Dogfury',     '12/29/1979',   'M6H2P4',   '269 Concord Avenue'),
	('cd712a8a', 'Ellen Page',       '02/21/1987',   'M6J3C4',   '156 Dovercourt Road'),
	('8b073535', 'Ellen Page',       '05/29/2002',   'M5R1L5',   '25 Kendal Avenue #3');
	
insert into Account (fuid,nickname,cc#,type) values
  (Margaret Atwood,    'Phaethon',         '5508447201716395', 'Mastercard'),
  (Allison Ayers,      'My f''ing TapTap', '4916380114543185', 'Visa'),
  (Michael Cera,       'knives',           '4929346127032743', 'Visa'),
  (Ellen Page (cd...), 'my TT',            '5228165338423763', 'MasterCard'),
  (Ellen Page (cd...), 'secret TT',        '3529178324492354', 'JCB'),
  (Ellen Page (8b...), 'Ellen Page',       '5354248137541609', 'MasterCard');
  
insert into Card (fuid,card#,nickname,tier) values
 (  #1, '8d111f3a', M.Atwood,       'adult'),
 (#2, '67f8e6ab', A.Ayers,        'adult'),
 (#2, '47f7c482', W.Ayers,        'senior'),
 (#3, '39a951d0', M.Cera,         'student'),
 (#3, '02b7cd93', M.Dogfury,      'adult'),
 (#4, '401aa88d', E.Page (cd...), 'adult'),
 (#5, 'ff53af77', E.Page (cd...), 'adult'),
 (#6, '9e3377d1', E.Page (8b...), 'senior');
 
insert into Kiosk (kiosk#,provider,place) values
	('7df82ea7', 'TTC Subway',       'St Clair West'),
	('e894721e', 'TTC Subway',       'Spadina'),
	('a9d49c05', 'TTC Subway',       'St George'),
	('ae3ce29e', 'TTC Subway',       'St George'),
	('47c880e6', 'TTC Subway',       'Queen''s Park'),
	('c41a117f', 'TTC Subway',       'St Patrick'),
	('a9d49c05', 'TTC Streetcar',    'St Patrick'),
	('b8821d1b', 'TTC Streetcar',    'Ossington Ave'),
	('59ae0bd4', 'TTC Subway',       'Osgood'),
	('3caf15bb', 'TTC Subway',       'Union');
	
insert into Action(kiosk#, provider, service) values

insert into Tap (when,kiosk#,provider,action,card#) values
	('2019-01-23-09.32.07',  'ae3ce29e', 'TTC Subway',       'TapOn',    '8d111f3a'),
	('2019-01-23-10.01.41',  '3caf15bb', 'TTC Subway',       'TapOff',   '8d111f3a'),
	('2019-01-23-08.15.37',  '7df82ea7', 'TTC Subway',       'TapOn',    '47f7c482'),
	('2019-01-23-11.23.50',  'e894721e', 'TTC Subway',       'TapOn',    '39a951d0'),
	('2019-01-23-11.48.18',  '59ae0bd4', 'TTC Subway',       'TapOff',   '39a951d0'),
	('2019-01-23-13.06.23',  '3caf15bb', 'TTC Subway',       'TapOn',    '02b7cd93'),
	('2019-01-23-13.51.13',  '7df82ea7', 'TTC Subway',       'TapOff',   '02b7cd93'),
	('2019-01-23-08.53.47',  'a9d49c05', 'TTC Subway',       'Balance',  '401aa88d'),
	('2019-01-23-08.54.39',  'a9d49c05', 'TTC Subway',       'TapOn',    '401aa88d'),
	('2019-01-23-09.09.39',  'c41a117f', 'TTC Subway',       'TapOff',   '401aa88d'),
	('2019-01-23-14.11.29',  'a9d49c05', 'TTC Streetcar',    'TapOn',    'ff53af77'),
	('2019-01-23-14.29.01',  'b8821d1b', 'TTC Streetcar',    'TapOff',   'ff53af77'),
	('2019-01-23-08.53.48',  'a9d49c05', 'TTC Subway',       'TapOn',    '9e3377d1'),
	('2019-01-23-09.09.02',  'c41a117f', 'TTC Subway',       'TapOff',   '9e3377d1');

 	