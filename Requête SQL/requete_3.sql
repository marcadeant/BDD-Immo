SELECT commune.cp_com as departement, AVG(prix / bienimmo.surfart) as prix_metre_carre 
FROM vente
JOIN bienimmo USING (id_art) 
JOIN commune USING (id_commune)
GROUP BY commune.cp_com 
ORDER BY prix_metre_carre DESC
LIMIT 10;