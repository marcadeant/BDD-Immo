SELECT commune.code_departement as departement, AVG(prix / bienimmo.surfart) as prix_metre_carre 
FROM vente
JOIN bienimmo USING (id_art) 
JOIN commune USING (id_commune)
GROUP BY commune.code_departement
ORDER BY prix_metre_carre DESC
LIMIT 10;
