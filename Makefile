HELPERS = scripts/00_setup.R scripts/helpers_clean_dates.R scripts/helpers_clean_eu_names.R scripts/helpers_fix_rnpa.R

all: data/clean/mex_monthly_landings_by_vessel.rds

data/clean/mex_conapesca_avisos_2000_2019.rds: scripts/01_clean_conapesca_avisos_2000_2019.R $(HELPERS) data/raw/CONAPESCA_Avisos_2000-2019
	cd $(<D);Rscript $(<F)

data/clean/mex_conapesca_apertura_2018_present.rds: scripts/02_clean_conapesca_apertura_2018_present.R $(HELPERS) data/raw/CONAPESCA
	cd $(<D);Rscript $(<F)

data/clean/mex_landings_2000_present.rds: scripts/03_combine_landings.R $(HELPERS) data/clean/mex_conapesca_avisos_2000_2019.rds data/clean/mex_conapesca_apertura_2018_present.rds
	cd $(<D);Rscript $(<F)

# Script 04 writes six summary files; one is tracked as the representative target
data/clean/mex_monthly_landings_by_vessel.rds: scripts/04_produce_summarized_landings.R data/clean/mex_landings_2000_present.rds
	cd $(<D);Rscript $(<F)
