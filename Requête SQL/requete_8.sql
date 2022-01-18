

SELECT [1 - (p_3p.prix_moyen_metre2_3_pieces - p_2p.prix_moyen_metre2_2_pieces)] * 100 
AS diff_prix_3p_2p
FROM (
		SELECT AVG(prix)
		FROM vente
		JOIN bienimmo USING (id_art)
		WHERE bienimmo.type_local = 'Appartement' 
		AND bienimmo.nb_piece = 2
		GROUP BY (bienimmo.nb_piece)

	) as p_2p,

	(	

		SELECT AVG(prix)
		FROM vente
		JOIN bienimmo USING (id_art)
		WHERE bienimmo.type_local = 'Appartement' 
		AND bienimmo.nb_piece = 3
		GROUP BY (bienimmo.nb_piece)


	) as p_3p;

