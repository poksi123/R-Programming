#' Tweet Cleaner
#' 
#' This function allows users to clean tweets for sentiment analysis
#' @param text Any text/ character string of tweets
#' @keywords text
#' @export
#' @examples
#' # example 
#' tweetcleaner()



tweetcleaner = function(text){
  text <- gsub("@\\w+", "", text)
  text <- gsub("https?://.+", "", text)
  text <- gsub("\\d+\\w*\\d*", "", text)
  text <- gsub("#\\w+", "", text)
  text <- gsub("[^\x01-\x7F]", "", text)
  text <- gsub("[[:punct:]]", " ", text)
  text <- gsub("\n", " ", text)
  text <- gsub("^\\s+", "", text)
  text <- gsub("\\s+$", "", text)
  text <- gsub("[ |\t]+", " ", text)
} 