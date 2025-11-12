# Landings data [~2000-2025 (partial)]

[![DOI](https://zenodo.org/badge/1046471161.svg)](https://doi.org/10.5281/zenodo.17592474)


## About 
This repository contains cleaned data on Mexican fisheries landings, by economic unit and vessel, between ~2000 and 2025 (partial). The data are derived from Mexico's National Commission of Fisheries and Aquaculture (CONAPESCA), but have been cleaned and standardized to facilitate analysis.

### Raw data sources

- CONAPESCA Avisos (2000-2019) - No link, obtained offline. These contain landing receipts by economic unit and species between 2000 and 2019.
- [CONAPESCA](https://conapesca.gob.mx/wb/cona/avisos_arribo_cosecha_produccion) - These also contain landing receipts by economic unit and species, but between 2018 and present. A few years ago data were available as excel spreadsheets. Now they are available as CSV files.
- [datos_abiertos](https://datos.gob.mx/busca/dataset/produccion-pesquera) - These contain monthly fisheries production by "office", between 2006 and 2024

### "[Clean](data/clean)" data availability

I use the CONAPESCA Avisos (2000-2019) and CONAPESCA (2018-present) to build the data sets listed below. The pipeline is found under `scripts/mex_landings/`

#### Data by economic unit RNPA
- [annual](data/clean/mex_annual_landings_by_eu.rds)
- [monthly](data/clean/mex_monthly_landings_by_eu.rds)

Available columns are: 

- **year**: Numeric. Year - Year of the data point.
- **month**: Numeric. Month - Month of the data point (1-12).
- **eu_rnpa**: Character. Economic unit RNPA - Unique 8-digit identifier for the economic unit associated with the vessel, as per the latest available vessel registry.
- **main_species_group** : Character. Main species group - Broad category of the species landed (e.g., finfish, crustaceans, mollusks).
- **landed_weight**: Numeric. Landed weight (kg) - Total weight of the species landed, in kilograms.
- **live_weight**: Numeric. Live weight (kg) - Estimated live weight of the species landed, in kilograms.
- **value**: Numeric. Value (MXN) - Total value of the species landed, in Mexican Pesos.

#### Data by vessel RNPA
- [annual](data/clean/mex_annual_landings_by_vessel.rds)
- [monthly](data/clean/mex_monthly_landings_by_vessel.rds)

Available columns are the same as for economic unit RNPA, but with **vessel_rnpa** added.

#### Data by landing site
- [annual](data/clean/mex_annual_landings_by_site.rds)
- [monthly](data/clean/mex_monthly_landings_by_site.rds) 

Available columns are: 

- **year**: Numeric. Year - Year of the data point.
- **month**: Numeric. Month - Month of the data point (1-12).
- **landing_site_key**: Character. Landing site key - Unique identifier for the landing site.
- **main_species_group** : Character. Main species group - Broad category of the species landed (e.g., finfish, crustaceans, mollusks).
- **landed_weight**: Numeric. Landed weight (kg) - Total weight of the species landed, in kilograms.
- **live_weight**: Numeric. Live weight (kg) - Estimated live weight of the species landed, in kilograms.
- **value**: Numeric. Value (MXN) - Total value of the species landed, in Mexican Pesos.

