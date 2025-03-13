# pre-processing
# transform the predictors
# remove predictors that are clearly not useful
# standardizing the predictors
# taking the log transform of some predictors
# removing predictors that are highly correlated with each other
# removing predictors with very few non-unique values or close to zero variation

matrixStats::colSds() #calculate standard deviation for each column
caret::nearZeroVar() #identifies predictors that have near-zero variance, returns a vector of column indices

# test out a small subset of the data first to know how long my code will take to run
# such as randomly sampling small proportion of the trains set, and setting k fold cross validation's k to small number
# kNN -> small subset of the data에 which k가 best인지 한 번 해보고 돌리기, 
tuneGrid = data.frame(k = c())

# random forest -> nTree = , nSamp =, 낮게 설정해서(small subset of the data) how many features to use 결정 
tuneGrid = data.frame(mtry = c())
minNode = train$bestTune$mtry

# the randomForest package supports variable importance calculations
# misdiagnosis 한 observations는 visualize해야 실패한 이유를 알 수 있음
importance(fit) # calculate variance importance

# Ensembles = combine multiple machine learning algorithms into one model to improve predictions

# Recommendation Systems
# Recommendation systems use ratings that the users give
# high rated items for a given user -> recommended to the user
# Filling in the NAs in the table can be thought as a task of recommendation system

# Regularization

