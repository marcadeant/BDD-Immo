CREATE TEMP TABLE p_2p AS

SELECT AVG(prix) as prix_moyen_metre2_2_pieces
		FROM vente
		JOIN bienimmo USING (id_art)
		WHERE bienimmo.type_local = 'Appartement' 
		AND bienimmo.nb_piece = 2
		GROUP BY (bienimmo.nb_piece);

CREATE TEMP TABLE p_3p AS 
		SELECT AVG(prix) as prix_moyen_metre2_3_pieces
		FROM vente
		JOIN bienimmo USING (id_art)
		WHERE bienimmo.type_local = 'Appartement' 
		AND bienimmo.nb_piece = 3
		GROUP BY (bienimmo.nb_piece);

SELECT (p_3p.prix_moyen_metre2_3_pieces - p_2p.prix_moyen_metre2_2_pieces)/p_2p.prix_moyen_metre2_2_pieces * 100 
FROM p_3p
CROSS JOIN p_2p;

