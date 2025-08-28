## Landings data [~2000-2025 (partial)]

### Raw data sources

- CONAPESCA Avisos (2000-2019) - No link, obtained offline. These contain landing receipts by economic unit and species between 2000 and 2019.
- [CONAPESCA](https://conapesca.gob.mx/wb/cona/avisos_arribo_cosecha_produccion) - These also contain landing receipts by economic unit and species, but between 2018 and present. A few years ago data were available as excel spreadsheets. Now they are available as CSV files.
- [datos_abiertos](https://datos.gob.mx/busca/dataset/produccion-pesquera) - These contain monthly fisheries production by "office", between 2006 and 2024

### "[Clean](data/mex_landings/clean)" data availability

I use the CONAPESCA Avisos (2000-2019) and CONAPESCA (2018-present) to build the data sets listed below. The pipeline is found under `scripts/mex_landings/`

#### Data by economic unit RNPA
- [annual](data/mex_landings/clean/mex_annual_landings_by_eu.rds)
- [monthly](data/mex_landings/clean/mex_monthly_landings_by_eu.rds)

#### Data by vessel RNPA
- [annual](data/mex_landings/clean/mex_annual_landings_by_vessel.rds)
- [monthly](data/mex_landings/clean/mex_monthly_landings_by_vessel.rds)
