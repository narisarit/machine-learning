# outcome(Y) : what we want to predict
# features(X) : used to predict the outcome, (=predictors, covariate)

# Outcome : categorical or continuous
# categorical -> classification
# continuous -> prediction

# training set : data with known outcomes and used to develop algorithm
# test set : data with known outcomes but pretend we don't know outcome

install.packages("caret")
library(caret)
createDataPartition()
map_dbl()

# How ML algorithms are evaluated
# outcome is categorical -> proportion of correct predictions = overall accuracy

# evaluating an algorithm on the training set -> overfitting -> over-optimistic assessments

#confusion table(for categorical, binary datas)
table(predicted = y_hat, actual = test_set$var)
confusionMatrix(data = y_hat, reference = test_set$var)
sensitivity(data = y_hat, reference = test_set$var)
specificity(data = y_hat, reference = test_set$var)
#Accuracy = TP + TN / all 4 
#sensitivity & specificity
#sensitivity = P(Y_hat = 1 | Y = 1) = TP / TP + FN
#specificity = P(Y_hat = 0 | Y = 0) = TN / TN + FP
#PPV = TP / TP + FP = aka precision
#NPV = TN / TN + FN
#Prevalence = proportion of positives 

#F1 score : widely used one number summary : harmonic average of recall(Sensitivity) and precision(PPV)
F_meas()

# common methods to evaluating methods -> to compare them graphically by plotting both
# ROC(Receiver Operating Characteristic) curve : does not depend on prevalence
# ROC : x = 1-specificity, y = sensitivity
# packages : pROC, plotROC
# Precision-Recall plot : depends on prevalence
# x = recall, y = precision

# loss function : can be applied to both categorical & continuous data.
# squared loss function ex) MSE(mean squared error)


