CREATE TEMP TABLE IF NOT EXISTS tmp_table_1t AS
SELECT commune.code_departement as departement, count(*) as nb_vente_1t
		FROM vente
		JOIN bienimmo USING (id_art)
		JOIN commune USING (id_commune)
		WHERE date_vente BETWEEN '2020-01-01' AND '2020-03-30'
		GROUP BY commune.code_departement;

CREATE TEMP TABLE IF NOT EXISTS tmp_table_2t AS 
SELECT commune.code_departement as departement, count(*) as nb_vente_2t
		FROM vente
		JOIN bienimmo ON bienimmo.id_art = vente.id_art
		JOIN commune ON commune.id_commune = bienimmo.id_commune
		WHERE date_vente BETWEEN '2020-04-01' AND '2020-06-30'
		GROUP BY commune.code_departement;
		
SELECT departement, (nb_vente_2t - nb_vente_1t)/nb_vente_1t::real * 100 as taux_evolution
FROM tmp_table_1t 
JOIN tmp_table_2t USING (departement)
WHERE (nb_vente_2t - nb_vente_1t)/nb_vente_1t::real * 100 > 20;
