SELECT ROUND((nb_vente_2t - nb_vente_1t) * 100.0 / nb_vente_1t,2) AS taux_evolution
FROM 
	(
		SELECT count(*) AS nb_vente_1t
		FROM vente
		WHERE date_vente BETWEEN '2020-01-01' AND '2020-03-30'
		
	) as nb_vente_1t_tmp_table,
	(
		SELECT count(*) AS nb_vente_2t
		FROM vente
		WHERE date_vente BETWEEN '2020-04-01' AND '2020-06-30'
	) as nb_vente_2t_tmp_table
;
