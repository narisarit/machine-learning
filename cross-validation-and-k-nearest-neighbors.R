# cross-validation
# k-nearest neighbors
knn3()
fit <- knn3()
predict(fit, )
confusionMatrix()
F_meas(data =, reference = )
# k = too low -> overtraining
# k = too large -> oversmoothing

# theoretical MSE = true MSE
# observed MSE = apparent error
# Cross-validation -> imitate the theoretical set up of the true error as best as possible using the data we have -> randomly generates smaller datasets that are used to estimate the true error

# k-fold cross-validation : randomly split the observations into k non-overlapping sets
# k = 5 or 10 is popular

# bootstrap : act as if the observed sample = population, sample with replacement, does not require on-overlapping sets, this is the default approach of caret::train
createResample() # alternative to sample(replace = TRUE)
