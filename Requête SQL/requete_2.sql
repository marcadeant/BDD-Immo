SELECT bienimmo.nb_piece as nb_piece, ROUND(count(id_vente) * 100.0 / (SELECT count(*) from vente),3)  as nb_vente 
FROM vente 
JOIN bienimmo USING (id_art)
GROUP BY bienimmo.nb_piece
ORDER BY bienimmo.nb_piece ASC
