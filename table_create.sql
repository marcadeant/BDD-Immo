CREATE SEQUENCE IF NOT EXISTS client_id_client_seq;

CREATE TABLE Client (
                id_client INTEGER NOT NULL DEFAULT nextval('client_id_client_seq'),
                nom_cli VARCHAR(30) NOT NULL,
                civilité_cli VARCHAR(15) NOT NULL,
                n_voie_cli SMALLINT NOT NULL,
                type_voie_cli VARCHAR(15) NOT NULL,
                lib_voie_cli VARCHAR(50) NOT NULL,
                cp_cli INTEGER NOT NULL,
                ville_cli VARCHAR(50) NOT NULL,
                CONSTRAINT id_client PRIMARY KEY (id_client)
);


ALTER SEQUENCE client_id_client_seq OWNED BY Client.id_client;

CREATE SEQUENCE commune_id_commune_seq;

CREATE TABLE Commune (
                id_commune INTEGER NOT NULL DEFAULT nextval('commune_id_commune_seq'),
                libellé VARCHAR(100) NOT NULL,
                cp_com VARCHAR(10) NOT NULL,
                code_departement INTEGER NOT NULL,
                CONSTRAINT id_commune PRIMARY KEY (id_commune)
);


ALTER SEQUENCE commune_id_commune_seq OWNED BY Commune.id_commune;

CREATE SEQUENCE BienImmo_id_art_seq;

CREATE TABLE BienImmo (
                id_art INTEGER NOT NULL DEFAULT nextval('BienImmo_id_art_seq'),
                id_commune INTEGER NOT NULL,
                type_local VARCHAR(15),
                surfart INTEGER NOT NULL,
                nb_piece SMALLINT NOT NULL,
                adPost VARCHAR(50) NOT NULL,
                CONSTRAINT id_art PRIMARY KEY (id_art)
);


ALTER SEQUENCE BienImmo_id_art_seq OWNED BY BienImmo.id_art;

CREATE SEQUENCE vente_id_vente_seq;

CREATE TABLE Vente (
                id_vente INTEGER NOT NULL DEFAULT nextval('vente_id_vente_seq'),
                id_art INTEGER NOT NULL,
                date_vente DATE NOT NULL,
                prix REAL NOT NULL,
                CONSTRAINT id_vente PRIMARY KEY (id_vente)
);


ALTER SEQUENCE vente_id_vente_seq OWNED BY Vente.id_vente;

ALTER TABLE BienImmo ADD CONSTRAINT bien_immo_commune_fk
FOREIGN KEY (id_commune)
REFERENCES Commune (id_commune)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE Vente ADD CONSTRAINT bien_immo_vente_fk
FOREIGN KEY (id_art)
REFERENCES BienImmo (id_art)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;