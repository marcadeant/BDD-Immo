/* TAUX D'EVOLUTION DU NOMBRE DE VENTE ENTRE LE 1ER TRIMESTRE ET LE 2EME TRIMSTRE 2020

Aucune correction apportées 
Remarque : J'ai essayé de trouver une méthode pour remplacer les SELECT imbriqués
			par des table tmp mais je n'ai pas réussi à créer la jointure entre les 
			2 tables temporaires. 

--> Si tu as la solution à ce problème je suis preneur !

Sinon la requête ci-dessous fonctionne très bien

*/

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


		
/* Résultat de la requête : Taux_evolution = +4.57% de vente en plus au 2eme trimestre */