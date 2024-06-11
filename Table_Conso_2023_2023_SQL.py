#modification nom colonnes

SELECT  
time_bins AS Time_bins_2H
, R__gion AS Region
, Consommation__MW_ AS Consommation_MW
, Thermique__MW_ AS Thermique_MW
, Nucl__aire__MW_ AS Nucleaire_MW
, Eolien__MW_ AS Eolien_MW
, Solaire__MW_ AS Solaire_MW
, Hydraulique__MW_ AS Hydraulique_MW
, Bio__nergies__MW_ AS Bioenergies_MW
FROM `team-elec.Consommation_elec.Conso_region_2h` 

#modification nom colonnes

SELECT  
time_bins AS Time_bins_2H
, R__gion AS Region
, Consommation__MW_ AS Consommation_MW
, Thermique__MW_ AS Thermique_MW
, Nucl__aire__MW_ AS Nucleaire_MW
, Eolien__MW_ AS Eolien_MW
, Solaire__MW_ AS Solaire_MW
, Hydraulique__MW_ AS Hydraulique_MW
, Bio__nergies__MW_ AS Bioenergies_MW
FROM `team-elec.Consommation_elec.Conso_region_2h` 

# agrégation par année de 2013 à 2023 --> Conso_2023_2023

SELECT  

Annee
, SUM(Consommation_MW) AS Consommation_MW
, SUM(Thermique_MW) AS Thermique_MW
, SUM(Nucleaire_MW) AS Nucleaire_MW
, SUM(Eolien_MW) AS Eolien_MW
, SUM(Solaire_MW) AS Solaire_MW
, SUM(Hydraulique_MW) AS Hydraulique_MW
, SUM(Bioenergies_MW) AS Bioenergies_MW

FROM `team-elec.Consommation_elec.Conso_region_2013_2023` 
GROUP BY Annee
ORDER BY Annee

