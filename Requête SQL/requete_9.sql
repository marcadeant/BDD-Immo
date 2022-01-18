CREATE TEMP TABLE IF NOT EXISTS dep_6 AS
SELECT commune.libellé as commune, commune.code_departement as departement, AVG(vente.prix) as prix_moyen
FROM vente
JOIN bienimmo USING (id_art)
JOIN commune USING (id_commune)
WHERE commune.code_departement = 6
GROUP BY (commune.libellé, commune.code_departement)
ORDER BY prix_moyen DESC
LIMIT 3;

CREATE TEMP TABLE IF NOT EXISTS dep_13 AS
SELECT commune.libellé as commune, commune.code_departement as departement, AVG(vente.prix) as prix_moyen
FROM vente
JOIN bienimmo USING (id_art)
JOIN commune USING (id_commune)
WHERE commune.code_departement = 13
GROUP BY (commune.libellé, commune.code_departement)
ORDER BY prix_moyen DESC
LIMIT 3;

CREATE TEMP TABLE IF NOT EXISTS dep_33 AS
SELECT commune.libellé as commune, commune.code_departement as departement, AVG(vente.prix) as prix_moyen
FROM vente
JOIN bienimmo USING (id_art)
JOIN commune USING (id_commune)
WHERE commune.code_departement = 33
GROUP BY (commune.libellé, commune.code_departement)
ORDER BY prix_moyen DESC
LIMIT 3;

CREATE TEMP TABLE IF NOT EXISTS dep_59 AS
SELECT commune.libellé as commune, commune.code_departement as departement, AVG(vente.prix) as prix_moyen
FROM vente
JOIN bienimmo USING (id_art)
JOIN commune USING (id_commune)
WHERE commune.code_departement = 59
GROUP BY (commune.libellé, commune.code_departement)
ORDER BY prix_moyen DESC
LIMIT 3;

CREATE TEMP TABLE IF NOT EXISTS dep_69 AS
SELECT commune.libellé as commune, commune.code_departement as departement, AVG(vente.prix) as prix_moyen
FROM vente
JOIN bienimmo USING (id_art)
JOIN commune USING (id_commune)
WHERE commune.code_departement = 69
GROUP BY (commune.libellé, commune.code_departement)
ORDER BY prix_moyen DESC
LIMIT 3;


SELECT * from dep_13
UNION ALL
SELECT * from dep_6
UNION ALL 
SELECT * from dep_33
UNION ALL
SELECT * from dep_59
UNION ALL
SELECT * from dep_69;