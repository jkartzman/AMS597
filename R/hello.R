# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'
library(glmnet)

extendedglmnet <- function(trainX, trainY, training_mode=c("linear", "logistic"),
                           regularization=c("ridge, lasso, random lasso")){

}

lasso <- function(trainX, trainY){
  cv.lasso <- cv.glmnet(trainX, trainY, alpha=1, nfolds=5, family="binomial")
  model <- glmnet(trainX, trainY, alpha=1, family="binomial", lambda=cv.lasso$lambda.min)
  return(model)
}



