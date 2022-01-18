SELECT bienimmo.nb_piece as nb_piece, count(id_vente) * 100 / (SELECT count(*) from vente)::real  as nb_vente 
FROM vente 
JOIN bienimmo USING (id_art)
GROUP BY bienimmo.nb_piece
ORDER BY bienimmo.nb_piece ASC