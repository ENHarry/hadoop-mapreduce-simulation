
input <- file("stdin", "r")



combModFit <- train(diagnosis ~.,method="nnet",data=predDF)
combPred <- predict(combModFit,predDF)

confusionMatrix(combPred,testing$diagnosis)

cat(combPred)