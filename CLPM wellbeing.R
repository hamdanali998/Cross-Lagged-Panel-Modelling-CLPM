# CLPM

library(lavaan)

clpm_model <- '


ld_emo_wellbeing_w1 ~ mr_emo_wellbeing
ld_emo_wellbeing_w2 ~ ld_emo_wellbeing_w1
ld_emo_wellbeing_w2 ~ mr_emo_wellbeing

ld_gen_health_w1 ~ mr_gen_health
ld_gen_health_w2 ~ ld_gen_health_w1
ld_gen_health_w2 ~ mr_gen_health


ld_gen_health_w1 ~ mr_emo_wellbeing
ld_gen_health_w2 ~ ld_emo_wellbeing_w1

ld_emo_wellbeing_w1 ~ mr_gen_health
ld_emo_wellbeing_w2 ~ ld_gen_health_w1


mr_emo_wellbeing ~~ mr_gen_health
ld_emo_wellbeing_w1 ~~ ld_gen_health_w1
ld_emo_wellbeing_w2 ~~ ld_gen_health_w2

'

fit_clpm <- sem(
  clpm_model, estimator = "ML",
  data = clean_data,
  missing = "fiml"
)

summary(
  fit_clpm,
  standardized = TRUE,
  fit.measures = TRUE
)

