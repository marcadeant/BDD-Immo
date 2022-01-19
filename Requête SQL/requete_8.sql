CREATE TEMP TABLE IF NOT EXISTS p_2p AS

SELECT AVG(prix) as prix_moyen_metre2_2_pieces
		FROM vente
		JOIN bienimmo USING (id_art)
		WHERE bienimmo.type_local = 'Appartement' 
		AND bienimmo.nb_piece = 2
		GROUP BY (bienimmo.nb_piece);

CREATE TEMP TABLE IF NOT EXISTS p_3p AS 
		SELECT AVG(prix) as prix_moyen_metre2_3_pieces
		FROM vente
		JOIN bienimmo USING (id_art)
		WHERE bienimmo.type_local = 'Appartement' 
		AND bienimmo.nb_piece = 3
		GROUP BY (bienimmo.nb_piece);

SELECT ROUND(((prix_moyen_metre2_3_pieces - prix_moyen_metre2_2_pieces) * 100/prix_moyen_metre2_2_pieces)::numeric, 2)
FROM p_3p
CROSS JOIN p_2p;

