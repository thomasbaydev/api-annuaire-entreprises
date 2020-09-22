psql -h localhost -p 5434 -U sirene -d sirene -c "\copy (SELECT row_to_json(t) FROM (select N.denominationUniteLegale, T.siren, T.siret, T.codeCommuneEtablissement, T.libelleCommuneEtablissement, T.activitePrincipaleEtablissement FROM siret T LEFT JOIN siren N ON N.siren = T.siren) as t) TO 'test.json';"
