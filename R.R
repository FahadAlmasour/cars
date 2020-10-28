# Install release version from CRAN
install.packages("pkgdown")

# Install development version from GitHub
devtools::install_github("r-lib/pkgdown")

# Run once to configure your package to use pkgdown
usethis::use_pkgdown()

# Run to build the website
pkgdown::build_site()

install.packages("bayesplot")

if (!require("devtools")) {
  install.packages("devtools")
}
devtools::install_github("stan-dev/bayesplot")

library("bayesplot")
library("rstanarm")
library("ggplot2")

fit <- stan_glm(mpg ~ ., data = mtcars)
posterior <- as.matrix(fit)

plot_title <- ggtitle("Posterior distributions",
                      "with medians and 80% intervals")
mcmc_areas(posterior,
           pars = c("cyl", "drat", "am", "wt"),
           prob = 0.8) + plot_title
