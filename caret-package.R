# The Caret Package
# many many methods to implement machine learning, included in the package manual, but still need to install each library
train()
train(y ~ x, method = "glm, knn, gamLoess...", data = , tuneGrid = , trControl = control) #trControl 지정안하면 default로 bootstrap for 25 times
getModelInfo()
modelLookup()
ggplot(trained_model, highlight = TRUE)
trained_model$bestTune
trained_model$finalModel
control <- trainControl(method = "cv", number = ) #for cross validation

# Trees and Random Forests
# tree-based methods ; classification and regression trees(CART) & random forest

# classification and regression trees(CART)
# a tree = flow chart of yes or no questions
# outcome is continuous -> regression tree
# outcome is categorical -> classification trees or decision trees
# geom_step(), plot(), test()
# 2 common parameters used for partition decision = complexity parameter & minimum number of observations required in a partition
# 2 most popular metrics to choose the partitions = Gini index & Entropy
fit <- rpart(y ~ x, data =)
plot(fit, margin= )
text(fit, cex = )
fit <- train(y ~ x, method = "rpart", tuneGrid = data.frame(cp = ), data = , control = rpart.control(minsplit = ))
plot(fit$finalModel, margin = )
text(fit$finalModel)


# Random forests : averaging multiple decision trees(a forest of trees constructed with randomness)
# disadvantage : no interpretability
# variable importance = count how often a predictor is used in the individual trees, varImp()
fit <- randomForest(y ~ x, data = , nodesize = , maxnodes = )
fit <- train(y ~ x, method = "Rborist", tuneGrid = data.frame(predFixed = , minNode = , mtry = ), data = )
