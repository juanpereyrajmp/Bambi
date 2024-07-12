USE Bambi

GO

INSERT INTO Clients (FirstName, LastName, PhoneNumber, Instagram, Note) VALUES
('Monica', 'Galindo', '1156289726', '@M.cagalindo', 'Es medio insoportable'),
('Jogelina Luisa', 'Borges', '1125635989', '@JLB.okey', 'Tiene 2 perros'),
('Alexa', 'Google', '1163598855', '@AlexaGoogle', NULL),
('Patricia', 'Sosa', '1156829634', '@Pato.Sosa', 'Canta bien'),
('Adele Laurie', 'Blue Adkins', '1148967566', '@Adele', 'Canta mejor que Patricia Sosa'),
('Pampita', NULL, '1156357788', '@Pampita', 'No envejece, fácil de maquillar'),
('Rosa', 'Meltroso', '1123553569', '@RositaMeltro', 'Tiene una hija chiquita, a veces interrumpe'),
('Lourdes', 'Bandana', '1152348563', '@BandanaLou', 'Ya no se me ocurren comentarios'),
('Maru', 'Botana', '1145784556', '@MaruBotana', NULL),
('Esther', 'Piscore', '1169356844', '@Terpsicore', 'Se baten las claras de huevo'),
('Felicitas', 'Rabiot', NULL, '@FeliRabiot', NULL),
('Roberta', NULL, NULL, '@RoberOk', NULL),
('Amanda', 'Gomez', '1158884512', NULL, NULL)

INSERT INTO ClientAddress (ClientID, Street, Number, Floor, Apartment, CityID) VALUES
(1, 'Hipolito Yrigoyen', '822', '2', 'C', 213),
(2, 'Pedro de Mendoza', '862', NULL, NULL, 239),
(3, 'Gral. Manuel Belgrano', '1050', '3', 'A', 239), 
(4, 'Velez Sarfield', '78', NULL, NULL, 213), 
(5, 'España', '966', NULL, NULL, 249), 
(6, 'Maestro Santana', '963', NULL, NULL, 239),
(7, 'Gral. Lavalle', '942', NULL, NULL, 237), 
(8, 'Balcarce', '2542', '4', 'B', 213), 
(9, 'Ituzaingo', '822', '2', 'A', 237), 
(10, 'Jose Maria Billoch', '126', NULL, NULL, 249)

INSERT INTO Status (Status) VALUES
('En proceso'),
('Cancelado'),
('Aceptado'),
('Proximo'),
('Finalizado'),
('Anulado')

INSERT INTO Jobs (ClientID, JobDate, StartTime, EndTime, StatusID) VALUES
(1, '2024-02-20', '15:30:00', '17:00:00', 5),
(2, '2023-11-26', '12:00:00', '15:30:00', 5),
(3, '2024-10-02', '12:15:00', '13:00:00', 4),
(4, '2024-01-09', '15:00:00', '18:30:00', 5),
(5, '2024-11-15', '10:00:00', '11:45:00', 4)

INSERT INTO Deposits (JobID, Total, Paid) VALUES
(1, 30000, 1),
(2, 34000, 1),
(3, 12000, 0),
(4, 22000, 1),
(5, 42000, 1)

INSERT INTO Prices (JobID, Total, Paid) VALUES
(1, 75000, 1),
(2, 85000, 1),
(3, 30000, 0),
(4, 55000, 1),
(5, 105000, 0)

INSERT INTO Services (Service, Price, Duration) VALUES
('Social Maquillaje', 30000,'00:45:00'),
('Social Peinado', 30000,'00:45:00'),
('Social Combo', 55000,'01:30:00'),
('Madrina Maquillaje', 35000,'00:45:00'),
('Madrina Peinado', 35000,'01:00:00'),
('Madrina Combo', 65000,'01:45:00'),
('Novia Maquillaje', 40000,'01:00:00'),
('Novia Peinado', 40000,'01:15:00'),
('Novia Combo', 75000,'02:15:00'),
('Prueba Maquillaje', 30000,'00:45:00'),
('Prueba Peinado', 30000,'00:45:00'),
('Prueba Combo', 55000,'01:30:00')

INSERT INTO ServicesJobs (JobID, ServiceID) VALUES
(1, 9),
(2, 3),
(2, 1),
(3, 2),
(4, 3),
(5, 11),
(5, 8),
(5, 5)

INSERT INTO Groups (GroupName) VALUES
('Social'),
('Madrina'),
('Novia'),
('Prueba')

INSERT INTO ServicesGroups (ServiceID, GroupID) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 2),
(7, 3),
(8, 3),
(9, 3),
(10, 4),
(11, 4),
(12, 4)

INSERT INTO Submissions (ClientID, JobDate, StartTime, EndTime, Price, StatusID) VALUES
(11, '2024-12-05', NULL, NULL, NULL, 1),
(12, '2025-03-19', NULL, NULL, NULL, 2),
(13, NULL, NULL, NULL, NULL, 1)

