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
# Regularization permits us to penalize large estimates that are formed using small sample sizes, such as Penalized least squares -> shrinks deviations towards 0

# Matrix basics & Basic linear algebra
rowMeans()
rowSds()
colMeans()
colSds()
x[!rowAnyNAs(x), ]
apply()
sweep()
A %*% B
solve(A, b) #Ax = b, 일 때 행렬 x를 찾아줌
crossprod() #norm 계산, sqrt() 해줘야함 # t(x) %*% x 와 같음
dist()
image(as.matrix(d))

# Dimension reduction
# reduce dimensions while preserving distances

# rotations
# Any two dimensional point (x1, x2)는 (rcos(theta), rsin(theta))으로 표현가능하며 이를 삼각함수를 이용하여 rotation하여, 한 axis에 평행하게 만들면 length는 preserve하며 1 dimension 낮출 수 있음

# linear transformation
# Any time a matrix X is multiplied by another matrix A, Z = X %*% A, 이를 행렬 A에 의한 linear transformation 이라고 함.
# rotation도 linear transformation 임.

# Orthogonal transformations
# Q %*% QT = I, 인 orthogonal matrix Q. Q에 의해 수행되는 linear transformation을 orthogonal transformation이라 하고, 이 orthogonal transformation은 두 벡터의 길이와 각도를 보존함.

# Principal Component Analysis(PCA)
# to try to find orthogonal transformations that concentrate the variance explained in the first few columns
# pc1을 찾고, pc2을 찾고,...
pca <- prcomp()
pca$x # rotated data Z
pca$rotation # rotation V
pca$sdev # square root of the variation of each column
summary(pca)

# Matrix factorization
# Factors = unobserved or latent variables that are inferred from the patterns of correlations or associations between the observed variables
# to estimate factors using our data instead of constructing them ourselves, we can use Principal component analysis (PCA) or Singular Value Decomposition(SVD)
# Principal component analysis(PCA)
# missing value 있으면 prcomp() 못 씀
# missMDA package 사용
imputePCA() #regularization도 가능
imputed$completeObs # PCA통해 NA만 채움, original data(not NAs)는 그대로
imputed$fittedX # PCA 통해 whole data reconstruction 된 것

# Singular Value Decomposition(SVD)
svd()
s$u
s$d
s$v

