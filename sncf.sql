-- Jeu de gestion de train (sans retards, sans grèves)
-- Emplacement du fichier sur ma machine :
-- SOURCE /Applications/MAMP/htdocs/GIT/SQL_COURSE/sncf.sql

-- Suppression de la base de données sncf si elle existe
DROP DATABASE IF EXISTS sncf;

-- Création de la base de données --
CREATE DATABASE IF NOT EXISTS sncf;

-- Utilisation de la base de données sncf
USE sncf;

-- Créer les tables de trains, de trajets, et de salariés --
-- Création de la table "trains"
CREATE TABLE IF NOT EXISTS Trains (
	-- Définition des champs
	id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	train_buying_price FLOAT(12, 2) NOT NULL, -- prix d'achat du train
	passengers_first INT DEFAULT(0), -- nombre de places en 1ere
	passengers_second INT DEFAULT(0), -- nombre de places en 2de
	-- Définition des clés primaires & étrangères
	PRIMARY KEY (id)
)
-- Définition du moteur
ENGINE=INNODB;

-- Création de la table des trajets
CREATE TABLE IF NOT EXISTS Travels (
	-- Définition des champs
	id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	destination_train_station VARCHAR(52) NOT NULL, -- gare de destination
	travel_buying_price FLOAT(6,2) UNSIGNED NOT NULL, -- prix du trajet
	hourly_travel_duration INT UNSIGNED NOT NULL, -- duree du trajet en heure
	-- Définition des clés primaires & étrangères
	PRIMARY KEY (id)
)
-- Définition du moteur
ENGINE=INNODB;

-- Création de la table des salariés
CREATE TABLE IF NOT EXISTS employees (
	-- Définition des champs
	id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	name VARCHAR(128) NOT NULL, -- nom de l'employé
	intern_grade VARCHAR(128) NOT NULL, -- fonction au sein de l'entreprise
	hourly_wage FLOAT(6,2) UNSIGNED NOT NULL, -- salaire horaire
	-- Définition des clés primaires & étrangères
	PRIMARY KEY (id)
)
-- Définition du moteur
ENGINE=INNODB;