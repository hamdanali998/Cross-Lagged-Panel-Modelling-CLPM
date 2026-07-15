library(psych)

vars <- c(
  "mr_ld_dep",
  "ld_dep_w1",
  "ld_dep_w2",
  "mr_emo_wellbeing",
  "ld_emo_wellbeing_w1",
  "ld_emo_wellbeing_w2",
  "mr_gen_health",
  "ld_gen_health_w1",
  "ld_gen_health_w2"
)

psych::describe(clean_data[vars])[, c("n","mean","sd","min","max")]


library(psych)
library(dplyr)

vars <- clean_data %>%
  select(
    mr_ld_dep,
    ld_dep_w1,
    ld_dep_w2,
    mr_emo_wellbeing,
    ld_emo_wellbeing_w1,
    ld_emo_wellbeing_w2,
    mr_gen_health,
    ld_gen_health_w1,
    ld_gen_health_w2
  )

# Correlation matrix with p-values
corr <- psych::corr.test(vars, use = "pairwise")

# Correlation coefficients
round(corr$r, 2)

# P-values
round(corr$p, 3)


library(Hmisc)

corr <- rcorr(as.matrix(vars), type = "pearson")

round(corr$r, 2)   # Correlations
round(corr$P, 3)   # p-values


library(apaTables)

apa.cor.table(
  vars,
  filename = "Correlation_Table.doc"
)
