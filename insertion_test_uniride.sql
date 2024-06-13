--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.1

-- Started on 2024-01-16 09:17:09 UTC

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3461 (class 0 OID 32784)
-- Dependencies: 219
-- Data for Name: ur_address; Type: TABLE DATA; Schema: uniride; Owner: rayan
--
INSERT INTO uniride.ur_address(
	a_street_number, a_street_name, a_city, a_postal_code, a_latitude, a_longitude, a_timestamp_modification)
VALUES ('140', 'Rue de la Nouvelle France', 'Montreuil', '93100', 48.8625700000, 2.4642050000, '2024-01-05 18:22:15.730821') ,
('5', 'Rue Curial', 'Paris', '75019', 48.8899830000, 2.3715060000, '2024-01-05 18:22:15.730821') ,
('4', 'Rue des Cailloux', 'Clichy', '92110', 48.8957510000, 2.3054130000, '2024-01-05 18:22:15.730821') ,
('6', 'Rue des Cailloux', 'Clichy', '92110', 48.8957240000, 2.3056710000, '2024-01-05 18:22:15.730821') ,
('3', 'Rue des Cailloux', 'Clichy', '92110', 48.8960700000, 2.3051650000, '2024-01-05 18:29:31.578719') ,
('7', 'Boulevard Voltaire', 'Paris', '75011', 48.8662790000, 2.3662120000, '2024-01-06 15:08:35.992617') ,
('2', 'Rue Montmartre', 'Paris', '75001', 48.8633240000, 2.3461010000, '2024-01-06 15:35:15.147358') ,
('59', 'Rue de Rivoli', 'Paris', '75001', 48.8592220000, 2.3456670000, '2024-01-08 15:02:03.280767') ,
( '5', 'Rue des Cailloux', 'Clichy', '92110', 48.8961310000, 2.3053080000, '2024-01-15 13:44:50.463494') ,
( '2', 'Rue des Cailloux', 'Clichy', '92110', 48.8957860000, 2.3053670000, '2024-01-15 15:10:30.583799') ;


--
-- TOC entry 3459 (class 0 OID 32775)
-- Dependencies: 217
-- Data for Name: ur_role; Type: TABLE DATA; Schema: uniride; Owner: rayan
--
INSERT INTO uniride.ur_role(
	r_id,r_name, r_description, r_timestamp_addition, r_timestamp_modification)
VALUES (0, 'administrateur', 'Administrateur système avec des droits étendus pour gérer lapplication de covoiturage.', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821'),
(1, 'driver', 'Conducteur autorisé à proposer des trajets et à conduire des passagers.', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821'),
(2, 'passenger', 'Passager ayant la possibilité de rechercher et de réserver des trajets.', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821'),
(3, 'pending', 'Utilisateur qui as pas validé ses documents.', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821');


--
-- TOC entry 3463 (class 0 OID 32794)
-- Dependencies: 221
-- Data for Name: ur_user; Type: TABLE DATA; Schema: uniride; Owner: rayan
--





--Conducteurs
INSERT INTO uniride.ur_user(
	r_id, u_login, u_lastname, u_student_email, u_password, u_timestamp_creation, u_timestamp_modification, u_profile_picture, u_gender, u_firstname, u_phone_number, u_email_verified, u_status, u_description)
VALUES (0, 'admin', 'Admin', 'admin@iut.univ-paris8.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-08 15:03:31.007845', '2024-01-08 15:03:31.007845', 'default_profile_picture.png', 'H', 'Tremblay', '0625365425', true, 3, ''),
(1, 'jdupont', 'Dupont', 'jdupont@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', 'default_profile_picture.png', 'M', 'Jean', '0601122334', true, 3, NULL),
(1, 'smartin', 'Martin', 'smartin@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', 'default_profile_picture.png', 'F', 'Sophie', '0609876543', true, 3, NULL),
(1, 'jsmith', 'Smith', 'jsmith@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-06 10:45:22.123456', '2024-01-06 10:45:22.123456', 'default_profile_picture.png', 'M', 'John', '1234567890', true, 3, 'Étudiant en développement logiciel'),
(1, 'lpierre', 'Pierre', 'lpierre@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', 'default_profile_picture.png', 'F', 'Léa', '0601112233', true, 3, NULL),
(1, 'rmartinez', 'Martinez', 'rmartinez@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', 'default_profile_picture.png', 'M', 'Rosa', '0604445556', true, 3, NULL),
(1, 'pgarcia', 'Garcia', 'pgarcia@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-05 18:22:15.730821', '2024-01-05 18:22:15.730821', 'default_profile_picture.png', 'F', 'Pablo', '0607778889', true, 3, NULL),
(1, 'asmith', 'Smith', 'asmith@iut.univ-paris.fr', '$$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-07 08:30:45.987654', '2024-01-07 08:30:45.987654', 'default_profile_picture.png', 'F', 'Alice', '9876543210', true, 3, 'Étudiante en marketing'),
(1, 'mjohnson', 'Johnson', 'mjohnson@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-08 15:10:30.555555', '2024-01-08 15:10:30.555555', 'default_profile_picture.png', 'M', 'Michael', '5551112233', true, 3, 'Étudiant'),
(1, 'cgreen', 'Green', 'cgreen@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-01-15 21:18:10.888888', '2024-01-15 21:18:10.888888', 'default_profile_picture.png', 'F', 'Catherine', '9876543210', true, 3, 'Étudiante Responsable des ressources humaines'),
(1, 'bwilliams', 'Williams', 'bwilliams@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-02-02 09:30:45.654321', '2024-02-02 09:30:45.654321', 'default_profile_picture.png', 'M', 'Brian', '5559876543', true, 3, 'Étudiante Analyste financier'),
(1, 'lsmith', 'Smith', 'lsmith@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-02-05 12:15:30.987654', '2024-02-05 12:15:30.987654', 'default_profile_picture.png', 'F', 'Laura', '1239876540', true, 3, 'Étudiante'),
(1, 'rjohnson', 'Johnson', 'rjohnson@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-02-08 16:45:22.222222', '2024-02-08 16:45:22.222222', 'default_profile_picture.png', 'M', 'Rachel', '9871234567', true, 3, 'Étudiante Responsable marketing'),
(1, 'jjones', 'Jones', 'jjones@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-02-12 14:30:45.555555', '2024-02-12 14:30:45.555555', 'default_profile_picture.png', 'M', 'Jessica', '1112223334', true, 3, 'Étudiante Ingénieur'),
(1, 'kgarcia', 'Garcia', 'kgarcia@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-02-18 20:18:10.888888', '2024-02-18 20:18:10.888888', 'default_profile_picture.png', 'F', 'Kevin', '9876543210', true, 3, 'Étudiante ngénieur logiciel'),
(1, 'mrodriguez', 'Rodriguez', 'mrodriguez@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-02-22 09:30:45.123123', '2024-02-22 09:30:45.123123', 'default_profile_picture.png', 'M', 'Maria', '5551112233', true, 3, 'Étudiante'),
(1, 'jmartinez', 'Martinez', 'jmartinez@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-02-25 12:15:30.654321', '2024-02-25 12:15:30.654321', 'default_profile_picture.png', 'F', 'John', '1234567890', true, 3, 'Étudiante Spécialiste RH'),
(1, 'sallen', 'Allen', 'sallen@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-03-10 09:30:45.123123', '2024-03-10 09:30:45.123123', 'default_profile_picture.png', 'M', 'Susan', '5551112233', true, 3, 'Étudiante Étudiante'),
(1, 'jcooper', 'Cooper', 'jcooper@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-03-14 12:15:30.654321', '2024-03-14 12:15:30.654321', 'default_profile_picture.png', 'F', 'James', '1234567890', true, 3, 'Étudiante Chef de projet'),
(1, 'tward', 'Ward', 'tward@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-03-22 14:30:45.555555', '2024-03-22 14:30:45.555555', 'default_profile_picture.png', 'M', 'Taylor', '1112223334', true, 3, ''),

--Passagers
(2, 'hsmith', 'Smith', 'hsmith@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-03-26 09:30:45.123123', '2024-03-26 09:30:45.123123', 'default_profile_picture.png', 'M', 'Hannah', '5551112233', true, 3, 'Étudiant') ,
(2, 'rjones', 'Jones', 'rjones@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-03-30 12:15:30.654321', '2024-03-30 12:15:30.654321', 'default_profile_picture.png', 'F', 'Robert', '1234567890', true, 3, 'Étudiant Rédacteur de Contenu') ,
(2, 'kmartin', 'Martin', 'kmartin@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-04-03 16:45:22.222222', '2024-04-03 16:45:22.222222', 'default_profile_picture.png', 'M', 'Katherine', '9876543210', true, 3, 'Étudiant Designer Graphique') ,
(2, 'jwalker', 'Walker', 'jwalker@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-04-07 14:30:45.555555', '2024-04-07 14:30:45.555555', 'default_profile_picture.png', 'M', 'Jessica', '1112223334', true, 3, 'Étudiant Développeur UI') ,
(2, 'gcollins', 'Collins', 'gcollins@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-04-11 20:18:10.888888', '2024-04-11 20:18:10.888888', 'default_profile_picture.png', 'F', 'George', '9876543210', true, 3, 'Étudiant Gestionnaire des Médias Sociaux') ,
(2, 'wroberts', 'Roberts', 'wroberts@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-04-15 09:30:45.123123', '2024-04-15 09:30:45.123123', 'default_profile_picture.png', 'M', 'Wendy', '5551112233', true, 3, 'Étudiant') ,
(2, 'nrodriguez', 'Rodriguez', 'nrodriguez@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-04-19 12:15:30.654321', '2024-04-19 12:15:30.654321', 'default_profile_picture.png', 'F', 'Nathan', '1234567890', true, 3, 'Étudiant Consultant en Informatique') ,
(2, 'pcooper', 'Cooper', 'pcooper@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-04-23 16:45:22.222222', '2024-04-23 16:45:22.222222', 'default_profile_picture.png', 'M', 'Paula', '9876543210', true, 3, 'Étudiant Analyste de Systèmes') ,
(2, 'jrogers', 'Rogers', 'jrogers@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-04-27 14:30:45.555555', '2024-04-27 14:30:45.555555', 'default_profile_picture.png', 'M', 'Jessica', '1112223334', true, 3, 'Étudiant Chef de Produit') ,
(2, 'mhill', 'Hill', 'mhill@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-05-01 20:18:10.888888', '2024-05-01 20:18:10.888888', 'default_profile_picture.png', 'F', 'Mark', '9876543210', true, 3, 'Étudiant Testeur QA') ,
(2, 'jhernandez', 'Hernandez', 'jhernandez@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-05-05 09:30:45.123123', '2024-05-05 09:30:45.123123', 'default_profile_picture.png', 'M', 'Jennifer', '5551112233', true, 3, 'Étudiant') ,
(2, 'cwhite', 'White', 'cwhite@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-05-09 12:15:30.654321', '2024-05-09 12:15:30.654321', 'default_profile_picture.png', 'F', 'Chris', '1234567890', true, 3, 'Étudiant Spécialiste des Médias Sociaux') ,
(2, 'cmorris', 'Morris', 'cmorris@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-05-13 16:45:22.222222', '2024-05-13 16:45:22.222222', 'default_profile_picture.png', 'M', 'Christina', '9876543210', true, 3, 'Étudiant Designer UX/UI') ,
(2, 'lrossi', 'Rossi', 'lrossi@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-05-17 14:30:45.555555', '2024-05-17 14:30:45.555555', 'default_profile_picture.png', 'M', 'Linda', '1112223334', true, 3, 'Étudiant Testeur de Logiciels') ,
(2, 'amurray', 'Murray', 'amurray@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-05-21 20:18:10.888888', '2024-05-21 20:18:10.888888', 'default_profile_picture.png', 'F', 'Alex', '9876543210', true, 3, 'Étudiant Coordinateur Marketing') ,
(2, 'dbrown', 'Brown', 'dbrown@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-05-25 09:30:45.123123', '2024-05-25 09:30:45.123123', 'default_profile_picture.png', 'M', 'Diana', '5551112233', true, 3, 'Étudiant') ,
(2, 'jking', 'King', 'jking@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-05-29 12:15:30.654321', '2024-05-29 12:15:30.654321', 'default_profile_picture.png', 'F', 'John', '1234567890', true, 3, 'Étudiant Analyste dAffaires') ,
(2, 'elee', 'Lee', 'elee@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-06-02 16:45:22.222222', '2024-06-02 16:45:22.222222', 'default_profile_picture.png', 'M', 'Emily', '9876543210', true, 3, 'Étudiant Stratège de Contenu') ,
(2, 'kward', 'Ward', 'kward@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-06-06 14:30:45.555555', '2024-06-06 14:30:45.555555', 'default_profile_picture.png', 'M', 'Kristen', '1112223334', true, 3, 'Étudiant Développeur Frontend') ,
(2, 'eparker', 'Parker', 'eparker@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-05-02 12:45:30.987654', '2024-05-02 12:45:30.987654', 'default_profile_picture.png', 'F', 'Ethan', '9876543210', true, 3, 'Étudiant Marketing Coordinator') ,


--Pending
(3, 'wcooper', 'Cooper', 'wcooper@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-05-06 16:30:45.123123', '2024-05-06 16:30:45.123123', 'default_profile_picture.png', 'M', 'Wendy', '5551112233', true, 3, 'Étudiant') ,
(3, 'mlopez', 'Lopez', 'mlopez@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-05-10 14:15:30.654321', '2024-05-10 14:15:30.654321', 'default_profile_picture.png', 'F', 'Mario', '1234567890', true, 3, 'Étudiant Représentant des ventes') ,
(3, 'pdavis', 'Davis', 'pdavis@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-05-14 20:18:10.888888', '2024-05-14 20:18:10.888888', 'default_profile_picture.png', 'M', 'Patricia', '9876543210', true, 3, 'Étudiant Analyste de données') ,
(3, 'ljean', 'Jean', 'ljean@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-05-14 20:18:10.888888', '2024-05-14 20:18:10.888888', 'default_profile_picture.png', 'M', 'Louis', '9876543210', true, 3, 'Étudiant Analyste de données') ,
(3, 'awilliams', 'Williams', 'awilliams@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-05-22 12:15:30.654321', '2024-05-22 12:15:30.654321', 'default_profile_picture.png', 'M', 'Anna', '1234567890', true, 3, 'Étudiant Analyste Marketing') ,
(3, 'rsmith', 'Smith', 'rsmith@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-05-26 16:45:22.222222', '2024-05-26 16:45:22.222222', 'default_profile_picture.png', 'F', 'Robert', '9876543210', true, 3, 'Étudiant Gestionnaire de produit') ,
(3, 'cmartin', 'Martin', 'cmartin@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-05-30 14:30:45.555555', '2024-05-30 14:30:45.555555', 'default_profile_picture.png', 'M', 'Catherine', '1112223334', true, 3, 'Étudiant Testeur de logiciels') ,
(3, 'jhall', 'Hall', 'jhall@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-06-02 20:18:10.888888', '2024-06-02 20:18:10.888888', 'default_profile_picture.png', 'F', 'John', '9876543210', true, 3, 'Étudiant Coordinateur RH') ,
(3, 'rhill', 'Hill', 'rhill@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-06-06 09:30:45.123123', '2024-06-06 09:30:45.123123', 'default_profile_picture.png', 'M', 'Rebecca', '5551112233', true, 3, 'Étudiant') ,
(3, 'bthompson', 'Thompson', 'bthompson@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-06-10 12:45:30.987654', '2024-06-10 12:45:30.987654', 'default_profile_picture.png', 'F', 'Benjamin', '9876543210', true, 3, 'Étudiant Spécialiste en Marketing') ,
(3, 'jjackson', 'Jackson', 'jjackson@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-06-14 16:30:45.123123', '2024-06-14 16:30:45.123123', 'default_profile_picture.png', 'M', 'Julia', '5551112233', true, 3, 'Étudiant') ,
(3, 'rrogers', 'Rogers', 'rrogers@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-06-18 14:15:30.654321', '2024-06-18 14:15:30.654321', 'default_profile_picture.png', 'F', 'Richard', '1234567890', true, 3, 'Étudiant Responsable des ventes') ,
(3, 'lcollins', 'Collins', 'lcollins@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-06-22 20:18:10.888888', '2024-06-22 20:18:10.888888', 'default_profile_picture.png', 'M', 'Laura', '9876543210', true, 3, 'Étudiant Scientifique des données') ,
(3, 'nwright', 'Wright', 'nwright@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-06-26 09:30:45.123123', '2024-06-26 09:30:45.123123', 'default_profile_picture.png', 'F', 'Nicholas', '5559876543', true, 3, 'Étudiant') ,
(3, 'emurphy', 'Murphy', 'emurphy@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-07-04 16:45:22.222222', '2024-07-04 16:45:22.222222', 'default_profile_picture.png', 'F', 'Edward', '9876543210', true, 3, 'Étudiant Responsable de produit') ,
(3, 'jroberts', 'Roberts', 'jroberts@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-07-08 14:30:45.555555', '2024-07-08 14:30:45.555555', 'default_profile_picture.png', 'M', 'Jennifer', '1112223334', true, 3, 'Étudiant Testeur de logiciels') ,
(3, 'dcook', 'Cook', 'dcook@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-07-12 20:18:10.888888', '2024-07-12 20:18:10.888888', 'default_profile_picture.png', 'F', 'Daniel', '9876543210', true, 3, 'Étudiant Coordinateur RH') ,
(3, 'jkxing', 'Kixng', 'jkisng@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-07-16 09:30:45.123123', '2024-07-16 09:30:45.123123', 'default_profile_picture.png', 'M', 'Jessica', '5551112233', true, 3, 'Étudiant') ,
(3, 'mstewart', 'Stewart', 'mstewart@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-07-20 12:45:30.987654', '2024-07-20 12:45:30.987654', 'default_profile_picture.png', 'F', 'Michael', '9876543210', true, 3, 'Marketing Specialist') ,
(3, 'flous', 'Funese', 'flous@iut.univ-paris.fr', '$2b$12$.e1z9Oj7OFux0.DT.VnBm.J39L//PpFvjk.rZ3yCTBnZBPPQj4EHO', '2024-07-20 12:45:30.987654', '2024-07-20 12:45:30.987654', 'default_profile_picture.png', 'F', 'Louis', '9876543210', true, 3, 'Marketing Specialist') ;

--
-- TOC entry 3474 (class 0 OID 32925)
-- Dependencies: 232
-- Data for Name: ur_assign; Type: TABLE DATA; Schema: uniride; Owner: rayan
--



--
-- TOC entry 3465 (class 0 OID 32826)
-- Dependencies: 223
-- Data for Name: ur_document_verification; Type: TABLE DATA; Schema: uniride; Owner: rayan
--
INSERT INTO uniride.ur_document_verification(
	v_license_verified, v_id_card_verified, v_school_certificate_verified, v_insurance_verified, v_timestamp_modification, u_id, v_license_description, v_card_description, v_school_certificate_description, v_insurance_description)
--Admin
VALUES

--Conducteurs
(1, 1, 1, 1, '2024-01-08 10:1:51.278823', 1, '', '', '', '') ,
(1, 1, 1, 1, '2024-01-08 09:11:25.398616',2, '', '', '', '') ,
(1, 1, 1, 1, '2024-01-08 14:59:19.767923',3, '', '', '', '') ,
(1, 1, 1, 1, '2024-01-08 10:06:40.07921', 4, '', '', '', '') ,
(1, 1, 1, 1, '2024-01-08 10:10:51.278823',5, '', '', '', '') ,
(1, 1, 1, 1, '2024-01-08 15:06:46.552803',6, '', '', '', '') ,
(1, 1, 1, 1, '2024-01-15 14:33:53.253248',7, '', '', '', '') ,
(1, 1, 1, 1, '2024-01-15 16:29:47.25875', 8, '', '', '', '') ,
(1, 1, 1, 1, '2024-01-15 17:00:25.625731',9, '', '', '', '') ,
(1, 1, 1, 1, '2024-01-15 12:17:40.633436',10, '', '', '', '') ,
(1, 1, 1, 1, '2024-01-15 20:42:35.837721',11, '', '', '', '') ,
(1, 1, 1, 1, '2024-01-15 14:33:53.253248',12, '', '', '', '') ,
(1, 1, 1, 1, '2024-01-15 16:29:47.25875', 13, '', '', '', '') ,
(1, 1, 1, 1, '2024-01-15 17:00:25.625731',14, '', '', '', '') ,
(1, 1, 1, 1, '2024-01-15 12:17:40.633436',15, '', '', '', '') ,
(1, 1, 1, 1, '2024-01-08 10:1:51.278823', 16, '', '', '', '') ,
(1, 1, 1, 1, '2024-01-08 10:1:51.278823', 17, '', '', '', '') ,
(1, 1, 1, 1, '2024-01-08 10:1:51.278823', 18, '', '', '', '') ,
(1, 1, 1, 1, '2024-01-08 10:1:51.278823', 19, '', '', '', '') ,

--Passagers
(0, 1, 1, 0, '2024-01-08 10:1:51.278823', 20, '', '', '', '') ,
(0, 1, 1, 0, '2024-01-08 09:11:25.398616',21, '', '', '', '') ,
(0, 1, 1, 0, '2024-01-08 14:59:19.767923',22, '', '', '', '') ,
(0, 1, 1, 0, '2024-01-08 10:06:40.07921', 23, '', '', '', '') ,
(0, 1, 1, 0, '2024-01-08 10:10:51.278823',24, '', '', '', '') ,
(0, 1, 1, 0, '2024-01-08 15:06:46.552803',25, '', '', '', '') ,
(0, 1, 1, 0, '2024-01-15 14:33:53.253248',26, '', '', '', '') ,
(0, 1, 1, 0, '2024-01-15 16:29:47.25875', 27, '', '', '', '') ,
(0, 1, 1, 0, '2024-01-15 17:00:25.625731',28, '', '', '', '') ,
(0, 1, 1, 0, '2024-01-15 12:17:40.633436',29, '', '', '', '') ,
(0, 1, 1, 0, '2024-01-15 20:42:35.837721',30, '', '', '', '') ,
(0, 1, 1, 0, '2024-01-15 14:33:53.253248',31, '', '', '', '') ,
(0, 1, 1, 0, '2024-01-15 16:29:47.25875', 32, '', '', '', '') ,
(0, 1, 1, 0, '2024-01-15 17:00:25.625731',33, '', '', '', '') ,
(0, 1, 1, 0, '2024-01-15 12:17:40.633436',34, '', '', '', '') ,
(0, 1, 1, 0, '2024-01-08 10:1:51.278823', 35, '', '', '', '') ,
(0, 1, 1, 0, '2024-01-08 10:1:51.278823', 36, '', '', '', '') ,
(0, 1, 1, 0, '2024-01-08 10:1:51.278823', 37, '', '', '', '') ,
(0, 1, 1, 0, '2024-01-08 10:1:51.278823', 38, '', '', '', '') ,
(0, 1, 1, 0, '2024-01-08 10:1:51.278823', 39, '', '', '', '') ,

--Pending
(0, 0, 0, 0, '2024-01-08 10:1:51.278823', 40, '', '', '', '') ,
(0, 0, 0, 0, '2024-01-08 09:11:25.398616',41, '', '', '', '') ,
(0, 0, 0, 0, '2024-01-08 14:59:19.767923',42, '', '', '', '') ,
(0, 0, 0, 0, '2024-01-08 10:06:40.07921', 43, '', '', '', '') ,
(0, 0, 0, 0, '2024-01-08 10:1:51.278823', 44, '', '', '', '') ,
(0, 0, 0, 0, '2024-01-08 10:10:51.278823',45, '', '', '', '') ,
(0, 0, 0, 0, '2024-01-08 15:06:46.552803',46, '', '', '', '') ,
(0, 0, 0, 0, '2024-01-15 14:33:53.253248',47, '', '', '', '') ,
(0, 0, 0, 0, '2024-01-15 16:29:47.25875', 48, '', '', '', '') ,
(0, 0, 0, 0, '2024-01-15 17:00:25.625731',49, '', '', '', '') ,
(0, 0, 0, 0, '2024-01-15 12:17:40.633436',50, '', '', '', '') ,
(0, 0, 0, 0, '2024-01-15 20:42:35.837721',51, '', '', '', '') ,
(0, 0, 0, 0, '2024-01-15 14:33:53.253248',52, '', '', '', '') ,
(0, 0, 0, 0, '2024-01-15 16:29:47.25875', 53, '', '', '', '') ,
(0, 0, 0, 0, '2024-01-15 17:00:25.625731',54, '', '', '', '') ,
(0, 0, 0, 0, '2024-01-15 12:17:40.633436',55, '', '', '', '') ,
(0, 0, 0, 0, '2024-01-08 10:1:51.278823', 56, '', '', '', '') ,
(0, 0, 0, 0, '2024-01-08 10:1:51.278823', 57, '', '', '', '') ,
(0, 0, 0, 0, '2024-01-08 10:1:51.278823', 58, '', '', '', '') ,
(0, 0, 0, 0, '2024-01-08 10:1:51.278823', 59, '', '', '', ''),
(0, 0, 0, 0, '2024-01-08 10:1:51.278823', 60, '', '', '', '');




--
-- TOC entry 3467 (class 0 OID 32843)
-- Dependencies: 225
-- Data for Name: ur_documents; Type: TABLE DATA; Schema: uniride; Owner: rayan
--
INSERT INTO uniride.ur_documents(
	d_license, d_id_card, d_school_certificate, d_insurance, d_timestamp_addition, d_timestamp_modification, u_id)
	
--Admin 
VALUES 


--Conducteurs
(NULL,NULL,NULL,NULL, '2024-01-08 09:11:25.398616', '2024-01-08 09:11:25.398616', 1) ,
(NULL,NULL,NULL,NULL, '2024-01-08 09:11:25.398616', '2024-01-08 09:11:25.398616', 2) ,
(NULL,NULL,NULL,NULL, '2024-01-08 10:06:40.07921', '2024-01-08 10:06:40.07921', 3) ,
(NULL,NULL,NULL,NULL, '2024-01-08 10:10:51.278823', '2024-01-08 10:10:51.278823', 4) ,
(NULL,NULL,NULL,NULL, '2024-01-08 15:06:46.552803', '2024-01-08 15:06:46.552803', 5) ,
(NULL,NULL,NULL,NULL, '2024-01-09 13:49:04.932748', '2024-01-09 13:49:04.932748', 6) ,
(NULL,NULL,NULL,NULL, '2024-01-12 13:53:39.918235', '2024-01-12 13:53:39.918235', 7) ,
(NULL,NULL,NULL,NULL, '2024-01-12 13:58:43.297933', '2024-01-12 13:58:43.297933', 8) ,
(NULL,NULL,NULL,NULL, '2024-01-12 14:00:21.359661', '2024-01-12 14:00:21.359661', 9) ,
(NULL,NULL,NULL,NULL, '2024-01-12 14:03:05.597813', '2024-01-12 14:03:05.597813' ,10) ,
(NULL,NULL,NULL,NULL, '2024-01-12 14:05:16.361869', '2024-01-12 14:05:16.361869', 11) ,
(NULL,NULL,NULL,NULL, '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 12) ,
(NULL,NULL,NULL,NULL, '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 13) ,
(NULL,NULL,NULL,NULL, '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 14) ,
(NULL,NULL,NULL,NULL, '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 15) ,
(NULL,NULL,NULL,NULL, '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 16) ,
(NULL,NULL,NULL,NULL, '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 17) ,
(NULL,NULL,NULL,NULL, '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 18) ,
(NULL,NULL,NULL,NULL, '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 19) ,


--Passagers
(NULL,NULL, NULL, NULL,'2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 20) ,
(NULL,NULL, NULL, NULL,'2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 21) ,
(NULL,NULL, NULL, NULL,'2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 22) ,
(NULL,NULL, NULL, NULL,'2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 23) ,
(NULL,NULL, NULL, NULL,'2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 24) ,
(NULL,NULL, NULL, NULL,'2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 25) ,
(NULL,NULL, NULL, NULL,'2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 26) ,
(NULL,NULL, NULL, NULL,'2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 27) ,
(NULL,NULL, NULL, NULL,'2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 28) ,
(NULL,NULL, NULL, NULL,'2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 29) ,
(NULL,NULL, NULL, NULL,'2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 30) ,
(NULL,NULL, NULL, NULL,'2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 31) ,
(NULL,NULL, NULL, NULL,'2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 32) ,
(NULL,NULL, NULL, NULL,'2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 33) ,

('34.png',NULL, NULL, '34.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 34) ,
('35.png',NULL, NULL, '35.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 35) ,
('36.png',NULL, NULL, '36.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 36) ,
('37.png',NULL, NULL, '37.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 37) ,
('38.png',NULL, NULL, '38.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 38) ,
('39.png',NULL, NULL, '39.png', '2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 39) ,

--Pending
(NULL,'40.png','40.png',NULL,'2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 40) ,
(NULL,'41.png','41.png',NULL,'2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 41) ,
(NULL,'42.png','42.png',NULL,'2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 42) ,
(NULL,'43.png','43.png',NULL,'2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 43) ,
(NULL,'44.png','44.png',NULL,'2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 44) ,
(NULL,'45.png','45.png',NULL,'2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 45) ,
(NULL,'46.png','46.png',NULL,'2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 46) ,
(NULL,'47.png','47.png',NULL,'2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 47) ,
(NULL,'48.png','48.png',NULL,'2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 48) ,
(NULL,'49.png','49.png',NULL,'2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 49) ,

('50.png','50.png','50.png','50.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 50) ,
('51.png','51.png','51.png','51.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 51) ,
('52.png','52.png','52.png','52.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 52) ,
('53.png','53.png','53.png','53.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 53) ,
('54.png','54.png','54.png','54.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 54) ,
('55.png','55.png','55.png','55.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 55) ,
('56.png','56.png','56.png','56.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 56) ,
('57.png','57.png','57.png','57.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 57) ,
('58.png','58.png','58.png','58.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 58) ,
('59.png','59.png','59.png','59.png','2024-01-12 14:14:11.391634', '2024-01-12 14:14:11.391634', 59),
('60.png','60.png','60.png','60.png', '2024-01-08 09:11:25.398616', '2024-01-08 09:11:25.398616', 60);
--
-- TOC entry 3471 (class 0 OID 32875)
-- Dependencies: 229
-- Data for Name: ur_trip; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

--1 a venir 
--2 en cours 
--3 termine 
--4 annule

INSERT INTO uniride.ur_trip(
	t_total_passenger_count, t_timestamp_creation, t_timestamp_proposed, t_status, t_price, t_user_id, t_address_departure_id, t_address_arrival_id, t_initial_price)
	VALUES 
(2, '2024-01-05 18:22:15.730821', '2026-07-23 10:00:00', 1, 2.00, 2, 3, 1, 1.00) ,
(2, '2024-01-05 18:22:15.730821', '2026-07-23 10:00:00', 2, 2.00, 2, 4, 1, 1.00) ,
(2, '2024-01-05 18:29:32.782706', '2026-07-23 10:00:00', 2, 0.00, 1, 5, 1, 1.00) ,
(2, '2024-01-08 15:02:05.957915', '2026-07-23 10:00:00', 1, 0.00, 2, 9, 1, 1.00) ,
(2, '2024-01-05 18:22:15.730821', '2026-07-23 10:00:00', 1, 0.00, 5, 3, 1, 1.00) ,
( 2, '2024-01-15 12:44:01.498131', '2026-07-23 10:00:00', 1, 0.00, 4, 1, 2, 1.00) ,
( 2, '2024-01-15 13:36:21.56982', '2026-07-23 10:00:00', 1, 0.00, 3, 1, 2, 1.00) ,
( 2, '2024-01-15 13:39:29.195312', '2026-07-23 10:00:00', 1, 0.00, 10, 1, 2, 1.00) ,
( 2, '2024-01-15 13:42:10.464354', '2026-07-23 10:00:00', 1, 0.00, 10, 1, 2, 1.00) ,
( 2, '2024-01-15 13:42:10.464354', '2026-07-23 10:00:00', 2, 0.00, 10, 1, 2, 1.00) ,
( 2, '2024-01-15 13:42:10.464354', '2026-07-23 10:00:00', 3, 0.00, 10, 1, 2, 1.00) ,
( 2, '2024-01-15 13:44:14.485241', '2026-07-23 10:00:00', 1, 0.00, 10, 1, 2, 1.00) ,
( 2, '2024-01-15 13:44:14.485241', '2026-07-23 10:00:00', 2, 0.00, 10, 1, 2, 1.00) ,
( 2, '2024-01-15 13:44:14.485241', '2026-07-23 10:00:00', 1, 0.00, 10, 1, 2, 1.00) ,
( 2, '2024-01-15 13:48:36.55752', '2026-07-23 10:00:00', 1, 0.00, 6, 1, 2, 1.00) ,
( 2, '2024-01-15 13:48:36.55752', '2026-07-23 10:00:00', 1, 0.00, 7, 1, 2, 1.00) ,
( 2, '2024-01-15 13:49:54.237558', '2026-07-23 10:00:00', 1, 0.00, 9, 1, 2, 1.00) ,
( 2, '2024-01-15 13:49:54.237558', '2026-07-23 10:00:00', 1, 0.00, 3, 1, 2, 1.00) ,
( 2, '2024-01-15 13:49:54.237558', '2026-07-23 10:00:00', 1, 0.00, 4, 1, 2, 1.00) ,
( 2, '2024-01-15 13:49:54.237558', '2026-07-23 10:00:00', 3, 0.00, 4, 1, 2, 1.00) ,
( 2, '2024-01-15 14:06:57.554197', '2026-07-23 10:00:00', 1, 0.00, 4, 1, 2, 1.00) ,
( 2, '2024-01-15 14:06:57.554197', '2026-07-23 10:00:00', 1, 0.00, 4, 1, 2, 1.00) ,
( 2, '2024-01-15 14:10:10.590529', '2026-07-23 10:00:00', 2, 0.00, 4, 1, 2, 1.00) ,
( 2, '2024-01-15 14:10:10.590529', '2026-07-23 10:00:00', 1, 0.00, 4, 1, 2, 1.00) ,
( 2, '2024-01-15 15:15:20.338233', '2026-07-23 10:00:00', 1, 0.00, 4, 1, 2, 1.00) ,
( 2, '2024-01-15 15:21:13.546372', '2026-07-23 10:00:00', 1, 0.00, 4, 5, 1, 1.00) ,
( 2, '2024-01-15 15:21:13.546372', '2026-07-23 10:00:00', 2, 0.00, 4, 5, 1, 1.00) ,
( 2, '2024-01-15 15:21:13.546372', '2026-07-23 10:00:00', 3, 0.00, 4, 5, 1, 1.00) ,
( 2, '2024-01-15 15:21:13.546372', '2026-07-23 10:00:00', 3, 0.00, 4, 5, 1, 1.00) ,
( 2, '2024-01-15 15:21:13.546372', '2026-07-23 10:00:00', 2, 0.00, 4, 5, 1, 1.00) ,
( 2, '2024-01-15 15:25:07.460141', '2026-07-23 10:00:00', 1, 0.00,2, 1, 2, 1.00) ,
( 2, '2024-01-15 15:25:20.167906', '2026-07-23 10:00:00', 1, 0.00,2, 1, 2, 1.00) ,
( 2, '2024-01-15 15:32:05.749117', '2026-07-23 10:00:00', 2, 0.00,2, 1, 2, 1.00) ,
( 2, '2024-01-15 15:36:52.844046', '2026-07-23 10:00:00', 1, 0.00,2, 1, 2, 1.00) ,
( 2, '2024-01-15 15:43:24.408415', '2026-07-23 10:00:00', 1, 0.00,2, 5, 1, 1.00) ,
( 2, '2024-01-15 15:43:24.408415', '2026-07-23 10:00:00', 1, 0.00,2, 5, 1, 1.00) ,
( 2, '2024-01-15 15:43:24.408415', '2026-07-23 10:00:00', 3, 0.00,2, 5, 1, 1.00) ,
( 2, '2024-01-15 15:43:24.408415', '2026-07-23 10:00:00', 2, 0.00,2, 5, 1, 1.00) ,
( 2, '2024-01-15 15:43:24.408415', '2026-07-23 10:00:00', 1, 0.00,2, 5, 1, 1.00) ,
( 2, '2024-01-15 15:43:24.408415', '2026-07-23 10:00:00', 1, 0.00,2, 5, 1, 1.00) ,
( 2, '2024-01-15 19:18:00.114493', '2026-07-23 10:00:00', 1, 0.00, 2, 10, 1, 1.00) ,
( 2, '2024-01-15 21:39:44.500482', '2026-07-23 10:00:00', 1, 0.00, 2, 10, 1, 1.00) ,
( 2, '2024-01-15 21:39:44.500482', '2026-07-23 10:00:00', 1, 0.00, 2, 10, 1, 1.00) ,
( 2, '2024-01-15 21:39:44.500482', '2026-07-23 10:00:00', 1, 0.00, 2, 10, 1, 1.00) ,
( 2, '2024-01-15 21:39:44.500482', '2026-07-23 10:00:00', 1, 0.00, 2, 10, 1, 1.00) ,
( 2, '2024-01-15 21:39:44.500482', '2026-07-23 10:00:00', 3, 0.00, 2, 10, 1, 1.00) ,
( 2, '2024-01-15 21:39:44.500482', '2026-07-23 10:00:00', 2, 0.00, 2, 10, 1, 1.00) ,
( 2, '2024-01-15 21:39:44.500482', '2026-07-23 10:00:00', 1, 0.00, 2, 10, 1, 1.00) ,
( 2, '2024-01-15 21:39:44.500482', '2026-07-23 10:00:00', 1, 0.00, 2, 10, 1, 1.00) ,
( 2, '2024-01-15 21:39:44.500482', '2026-07-23 10:00:00', 1, 0.00, 2, 10, 1, 1.00) ;
--
-- TOC entry 3475 (class 0 OID 32940)
-- Dependencies: 233
-- Data for Name: ur_join; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

-- Join pour un trajet
INSERT INTO uniride.ur_join (u_id, t_id, j_accepted, j_passenger_count, j_date_requested, j_joined, j_verification_code)
VALUES
    (2, 1, 0, 1, '2025-07-23 10:00:00', false, null),
    (2, 2, 0, 1, '2025-07-24 10:00:00', false, null),
    (2, 3, 0, 1, '2025-07-25 10:00:00', false, null),
    (2, 4, 0, 1, '2025-07-26 10:00:00', false, null),
    (2, 5, 0, 1, '2025-07-27 10:00:00', false, null),
    (2, 6, 0, 1, '2025-07-28 10:00:00', false, null),
    (2, 7, 0, 1, '2025-07-29 10:00:00', false, null),
    (2, 8, 0, 1, '2025-07-30 10:00:00', false, null),
    (2, 9, 0, 1, '2025-07-31 10:00:00', false, null),
    (2, 10, 0, 1, '2025-08-01 10:00:00', false, null),
    (2, 11, 0, 1, '2025-08-02 10:00:00', false, null),
    (2, 12, 0, 1, '2025-08-03 10:00:00', false, null),
    (2, 13, 0, 1, '2025-08-04 10:00:00', false, null),
    (2, 14, 0, 1, '2025-08-05 10:00:00', false, null),
    (2, 15, 0, 1, '2025-08-06 10:00:00', false, null),
    (2, 16, 0, 1, '2025-08-07 10:00:00', false, null),
    (2, 17, 0, 1, '2025-08-08 10:00:00', false, null),
    (2, 18, 0, 1, '2025-08-09 10:00:00', false, null),
    (2, 19, 0, 1, '2025-08-10 10:00:00', false, null),
    (2, 20, 0, 1, '2025-08-11 10:00:00', false, null),
    (2, 21, 0, 1, '2025-08-12 10:00:00', false, null),
    (2, 22, 0, 1, '2025-08-13 10:00:00', false, null),
    (2, 23, 0, 1, '2025-08-14 10:00:00', false, null),
    (2, 24, 0, 1, '2025-08-15 10:00:00', false, null),
    (2, 25, 0, 1, '2025-08-16 10:00:00', false, null);


--
-- TOC entry 3476 (class 0 OID 1105935)
-- Dependencies: 234
-- Data for Name: ur_rating_criteria; Type: TABLE DATA; Schema: uniride; Owner: rayan
--
INSERT INTO uniride.ur_rating_criteria(
	rc_name, rc_description, r_id)
	VALUES 
('Offre de Conversationbd', 'Prêt à discuter.', 1) ,
('Prêt à Partager', 'Partage d extras.', 1) ,
('Cool', 'Cool', 1) ,
('Ambiance du Véhicule', 'Ambiance chaleureuse et confortable.', 2) ,
('Musique Sympaddd', 'Playlist accueillante.', 2) ,
('Attitude Positive', 'Attitude positive.', 2) ,
('Remerciements et Évaluationsdsdf', 'Exprime la gratitude.ddf', 2) ,
('en attente', 'SUPER MEGA COOL', NULL) ,
('Appréciation de la Musiqued', 'Aime la musique partagée.', NULL) ;


--
-- TOC entry 3477 (class 0 OID 1105940)
-- Dependencies: 235
-- Data for Name: ur_rating; Type: TABLE DATA; Schema: uniride; Owner: rayan
--
INSERT INTO uniride.ur_rating(
	n_value, u_id, t_id, rc_id)
	VALUES
--Notes conducteur
(5, 1, 2, 1) ,
(3, 1, 3, 2) ,
(1, 1, 42, 3) ,
(2, 2, 2, 1) ,
(5, 2, 3, 2) ,
(4, 2, 43, 3) ,
(2, 3, 2, 1) ,
(3, 3, 3, 2) ,
(1, 3, 45, 3) ,
(3, 4, 2, 1) ,
(5, 4, 3, 2) ,
(5, 4, 47, 3) ,

(5, 37, 2, 4) ,
(3, 37, 3, 6) ,
(1, 37, 42, 7) ,
(2, 38, 2, 4) ,
(5, 38, 3, 6) ,
(4, 38, 43, 7) ,
(2, 39, 2, 4) ,
(3, 39, 3, 6) ,
(1, 39, 45, 7) ,
(3, 40, 2, 4) ,
(5, 40, 3, 5) ,
(5, 40, 47, 7) ;



--
-- TOC entry 3473 (class 0 OID 32900)
-- Dependencies: 231
-- Data for Name: ur_trip_validation; Type: TABLE DATA; Schema: uniride; Owner: rayan
--



--
-- TOC entry 3469 (class 0 OID 32859)
-- Dependencies: 227
-- Data for Name: ur_vehicle; Type: TABLE DATA; Schema: uniride; Owner: rayan
--

INSERT INTO uniride.ur_vehicle VALUES (66, 'c3', 'CP-123-ER', 'FR', 'Bleu', 'Citroen', 2, '2024-01-08 14:02:42.103961', '2024-01-08 14:02:42.103961', 2) ON CONFLICT DO NOTHING;