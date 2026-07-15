#CLPM

library(lavaan)

clpm_model <- '


ld_dep_w1 ~ mr_ld_dep
ld_dep_w2 ~ ld_dep_w1
ld_dep_w2 ~ mr_ld_dep

ld_gen_health_w1 ~ mr_gen_health
ld_gen_health_w2 ~ ld_gen_health_w1


ld_gen_health_w1 ~ mr_ld_dep
ld_gen_health_w2 ~ ld_dep_w1
ld_gen_health_w2 ~ mr_gen_health

ld_dep_w1 ~ mr_gen_health
ld_dep_w2 ~ ld_gen_health_w1


mr_ld_dep ~~ mr_gen_health
ld_dep_w1 ~~ ld_gen_health_w1
ld_dep_w2 ~~ ld_gen_health_w2

'

fit_clpm <- sem( clpm_model, data = clean_data, estimator = "ML", missing = "fiml")

summary(fit_clpm, standardized = TRUE, fit.measures = TRUE)

