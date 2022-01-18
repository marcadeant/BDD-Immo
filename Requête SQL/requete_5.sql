/* LES 10 VENTES LES PLUS CHER (MAISON ET APPARTEMENT) AVEC LE DEPARTEMENT ET LA SURFACE  
Corrections apportées suite au meeting du 13/01

1) JOIN table USING plutôt que JOIN table ON clé = clé

*/

SELECT bienimmo.id_art as appartement, commune.code_departement as departement, bienimmo.surfart as surface
FROM bienimmo
JOIN vente USING (id_art)
JOIN commune USING (id_commune)
ORDER BY vente.prix DESC
LIMIT 10;