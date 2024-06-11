SELECT  
date_date
, Population_M
, ROUND (Production_totale_nette_GW/Population_M*1000000, 2) AS Prod_nette_per_hab_kW
, ROUND(Prod_nucl_nette_GW/Production_totale_nette_GW*100, 2) AS Pct_nucl_prod_nette
, ROUND(Prod_hydro_nette_GW/Production_totale_nette_GW*100, 2) AS Pct_hydro_prod_nette
, ROUND(Prod_eol_nette_GW/Production_totale_nette_GW*100, 2) AS Pct_eol_prod_nette
, ROUND(Prod_sol_nette_GW/Production_totale_nette_GW*100, 2) AS Pct_sol_prod_nette
, ROUND(Prod_therm_nette_GW/Production_totale_nette_GW*100, 2) AS Pct_therm_prod_nette
, ROUND(Import_total_GW/Production_totale_nette_GW*100, 2) AS Pct_import_prod_nette
, ROUND(Export_total_GW/Production_totale_nette_GW*100, 2) AS Pct_export_prod_nette
, ROUND(Conso_totale_GW/Population_M *1000000, 2) AS Conso_per_hab_kW
, ROUND(Conso_therm_GW/Conso_totale_GW*100, 2) AS Pct_therm_conso
, ROUND(Conso_nucl_GW/Conso_totale_GW*100, 2) AS Pct_nucl_conso
, ROUND(Conso_eol_GW/Conso_totale_GW*100, 2) AS Pct_eol_conso
, ROUND(Conso_sol_GW/Conso_totale_GW*100, 2) AS Pct_sol_conso
, ROUND(Conso_hydro_GW/Conso_totale_GW*100, 2) AS Pct_hydro_conso
, ROUND(Conso_bioener_GW/Conso_totale_GW*100, 2) AS Pct_bioener_conso

FROM `team-elec.Merge_Projet.Projet_Elec_2013_2023_cleaned`
ORDER BY date_date
