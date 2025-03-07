# create multivariate normal random variables
Sigma <- matrix(c(1.0, , , 1.0), 2, 2)
dat <- MASS::mvrnorm(, c(,), Sigma) %>%
  data.frame() %>% setNames(c("x", "y"))

# root mean squared errors
RMSE()

# Smoothing :  designed to detect trends in the presence of noisy data in cases in which the shape of the trend is unknown. 
# smoothing = curve fitting = low pass filtering
# |x - x_0| = window size, bandwidth, span

# kernel smoothing
ksmooth()

# local weighted regression(loess)
# loess assume the smooth function is locally linear

# Quadratic LOESS (DEFAULT)
fit <- loess(y ~ x, degree = 2, span = , data = )
geom_smooth(method = "loess", method.args = list(degree = 2))   
# Linear LOESS
fit <- loess(y ~ x, degree = 1, span = , data = )
geom_smooth(method = "loess", method.args = list(degree = 1))    