# Load the packages required to read XML files.
library("XML")
library("methods")
library("graphics")
library("stringdist")
library("ggplot2")


escapeStringAsNotRegex <- function(x=character()){
  return(gsub("([.|()\\^{}+$*?]|\\[|\\])", "\\\\\\1", x))
}
  
nanosecsToTime <- function(ticks=numeric){
  sec <- ticks / 1e7
  return(as.POSIXct(sec, origin="1970-01-01", tz="UTC"))
}

# Convert the input xml file to a data frame.
getDataFrameForResultsFile <- function(path){
  oldw <- getOption("warn")
  options(warn = -1)
  
  setwd("/Users/Laci/Documents/Delft/master-thesis/pbe-extraction-buildlogs/results")
  xml <- xmlTreeParse(file = path)
  
  data <- data.frame(ExampleCount = numeric(), LearnedProgram = character(), TestOutput = character(), DesiredTestOutput = character(), Accuracy = numeric(), Successful = logical(), LearningDuration = as.POSIXct(character()), ApplicationDuration = as.POSIXct(character()), stringsAsFactors=FALSE)
  #print(str(data))
  #str(data)
  #results <- xmlRoot(xml)#[['Results']]
  results <- xml[['doc']]$children$EvaluationResultOfString[['Results']]
  #print(results)
  for (i in seq_along(1:length(results))) {
    item <- results[[i]]
    exampleCount <- length(item[['key']][[1]][['Examples']])
    test <- item[['value']][[1]][[1]]
    learnedProgram <- xmlValue(test[['LearnedProgram']][[1]])
    testOutput <- xmlValue(test[['Output']][[1]])
    desiredTestOutput <-  xmlValue(test[['DesiredOutput']][[1]])
    accuracy <- 3 
    successful <-  as.logical(xmlValue(test[['Successful']][[1]]))
    learningDuration <-  nanosecsToTime(as.numeric(xmlValue(test[['LearningDuration']][[1]])))
    #print(as.numeric(xmlValue(test[['ApplicationDuration']][[1]])))
    applicationDuration <-  nanosecsToTime(as.numeric(xmlValue(test[['ApplicationDuration']][[1]])))
    #rs <- getNodeSet(xml, '//Results/item')
    #print(typeof(sapply(rs, function(x) x[['key']][[1]][['Examples']])[[1]]))#[[0]][['Examples']])
    
    data = rbind(data, data.frame(ExampleCount=exampleCount, LearnedProgram = learnedProgram, TestOutput=testOutput, DesiredTestOutput=desiredTestOutput, Accuracy=accuracy, Successful=successful, LearningDuration=learningDuration, ApplicationDuration=applicationDuration, stringsAsFactors=FALSE))
  }
  #print(results_set)
  options(warn = oldw)

  # print(data$TestOutput)
  # print('')
  # print(data$DesiredTestOutput)
  for (row in 1:nrow(data)) {
    testOutput <- data[row, "TestOutput"]
    desiredTestOutput <-data[row, "DesiredTestOutput"]
    successful <- grepl(escapeStringAsNotRegex(testOutput), desiredTestOutput)
    data[row, "Successful"] <- as.logical(successful)
    # print(nchar(testOutput))
    # print(nchar(desiredTestOutput))
    # print(testOutput)
    # print(desiredTestOutput)
    accuracy <- nchar(testOutput)/nchar(desiredTestOutput)
    accuracy2 <- stringsim(testOutput, desiredTestOutput)
    print(accuracy)
    print(accuracy2)
    data[row, "Accuracy"] <- accuracy
  }
  return(data)
}

#data <- getDataFrameForResultsFile("android-failure-with-dependencies_ManualSelection.xml")
data <- getDataFrameForResultsFile("android-failure-with-dependencies_ManualSelection.xml")

plot_data <- data[c("ExampleCount", "Accuracy", "LearningDuration", "ApplicationDuration")]
print(plot_data)

#plot(plot_data)
p <- ggplot(data = plot_data, aes(x = plot_data$ExampleCount, y = plot_data$ApplicationDuration)) + 
  geom_point(aes(col=plot_data$LearningDuration, size=plot_data$Accuracy)) + 
  labs(subtitle="", 
       y="application duration", 
       x="example count", 
       title="Scatterplot", 
       caption = "android-failure manual example selection") +
  scale_y_datetime(breaks = seq(from = min(data$ApplicationDuration), to = max(data$ApplicationDuration), by = 0.04), date_labels = "%OS3 sec")
  # scale_x_datetime(date_labels = "%M min")
plot(p)