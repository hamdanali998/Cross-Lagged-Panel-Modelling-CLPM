# CLPM

library(lavaan)

clpm_model <- '


ld_energy_w1 ~ mr_energy
ld_energy_w2 ~ ld_energy_w1
ld_energy_w2 ~ mr_energy

ld_gen_health_w1 ~ mr_gen_health
ld_gen_health_w2 ~ ld_gen_health_w1


ld_gen_health_w1 ~ mr_energy
ld_gen_health_w2 ~ ld_energy_w1
ld_gen_health_w2 ~ mr_gen_health

ld_energy_w1 ~ mr_gen_health
ld_energy_w2 ~ ld_gen_health_w1


mr_energy ~~ mr_gen_health
ld_energy_w1 ~~ ld_gen_health_w1
ld_energy_w2 ~~ ld_gen_health_w2

'

fit_clpm <- sem(
  clpm_model,
  data = clean_data, estimator = "ML",
  missing = "fiml"
)

summary(
  fit_clpm,
  standardized = TRUE,
  fit.measures = TRUE
)

