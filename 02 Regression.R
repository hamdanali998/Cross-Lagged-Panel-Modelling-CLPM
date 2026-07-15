#Resgression: general health w2 ~ baseline health + baseline despression + gender (control)
model <- lm(
  ld_gen_health_w2 ~ mr_gen_health + mr_ld_dep + parent_gender,
  data = clean_data
)
summary(model)

# general health w2 ~ baseline health + baseline wellbeing + gender
model <- lm(
  ld_gen_health_w2 ~ mr_gen_health + mr_emo_wellbeing + parent_gender,
  data = clean_data
)
summary(model)

# general health w2 ~ baseline health + baseline energy + gender
model <- lm(
  ld_gen_health_w2 ~ mr_gen_health + mr_energy + parent_gender,
  data = clean_data
)
summary(model)

# general health w2 ~ baseline health + baseline relationship commitment + gender

model <- lm(
  ld_gen_health_w2 ~ mr_gen_health + mr_comm + parent_gender,
  data = clean_data
)
summary(model)

# general health w2 ~ baseline health + baseline home chaos + gender

model <- lm(
  ld_gen_health_w2 ~ mr_gen_health + mr_chaos + parent_gender,
  data = clean_data
)
summary(model)

# general health w2 ~ baseline health + baseline relationship problems + gender

model <- lm(
  ld_gen_health_w2 ~ mr_gen_health + mr_relprobs + parent_gender,
  data = clean_data
)
summary(model)

# general health w2 ~ baseline health + baseline mr_relsat + gender

model <- lm(
  ld_gen_health_w2 ~ mr_gen_health + mr_relsat + parent_gender,
  data = clean_data
)
summary(model)

# general health w2 ~ baseline health + baseline cohesion + gender

model <- lm(
  ld_gen_health_w2 ~ mr_gen_health + mr_cohesion + parent_gender,
  data = clean_data
)
summary(model)
