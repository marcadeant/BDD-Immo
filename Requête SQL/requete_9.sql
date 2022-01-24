CREATE TEMP TABLE IF NOT EXISTS prix_moyen_commune AS
SELECT commune.libellé as nom_commune, commune.code_departement as departement, AVG(prix) as prix_moyen
FROM vente 
JOIN bienimmo USING (id_art)
JOIN commune USING (id_commune)
GROUP BY nom_commune, departement;

CREATE TEMP TABLE IF NOT EXISTS ranking_commune AS

SELECT  
RANK() OVER (

		PARTITION BY departement
		ORDER BY prix_moyen DESC

) as ranking, nom_commune, departement, prix_moyen		
FROM prix_moyen_commune
WHERE departement IN (6,13,33,59,69);

SELECT * FROM ranking_commune
WHERE ranking < 4
