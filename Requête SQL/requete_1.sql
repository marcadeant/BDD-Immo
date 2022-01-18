SELECT count(id_vente) as nb_total_vente_appartement from vente
JOIN bienimmo USING (id_art) 
WHERE bienimmo.type_local='Appartement'
AND date_vente BETWEEN '2020-01-01' AND '2020-06-30';