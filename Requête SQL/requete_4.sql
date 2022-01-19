
/* LE PRIX MOYEN DU METRE2 POUR LES MAISONS SITUEES EN ILE-DE-FRANCE

/* Correction effectué suite au meeting du 13/01 

1) Création d'une table temporaire plutôt que d'imbriquer
2) Utiliser la synthaxe JOIN table USING (clé)
3) Calculer le prix du metre2 par maison et ensuite appliquer la moyenne

*/

CREATE TEMP TABLE IF NOT EXISTS table_dep_prix AS 

SELECT commune.code_departement as departement, AVG(prix / bienimmo.surfart) as prix_moyen_mettre2 
FROM vente
JOIN bienimmo USING (id_art)
JOIN commune USING (id_commune)
WHERE bienimmo.type_local='Maison'
GROUP BY departement;

SELECT departement, prix_moyen_mettre2
FROM table_dep_prix
WHERE departement IN (92, 93,  95, 75, 78, 91, 94);

