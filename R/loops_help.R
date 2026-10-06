loops_help <- function(loop) {
  if (loop == "while loop") {
    help <- paste(
      "While loops are helpful when you don't know exactly how many times",
      "you have to do something (i.e.: you don't know how many iterations",
      "it will take to get what you wanted). You have to manually set a",
      "condition, and the loop will only stop when it's no longer true.",
      "Because of that, you also need to set any variables you want to use",
      "in the loop before the loop starts, as well as set a way to update",
      "said variables inside with each 'run' of the loop"
    )
  } else if (loop == "for loop") {
    help <- paste(
      "For loops are helpful when you know exactly how many iterations you",
      "need (i.e.: you have to go through every row of a known dataset).",
      "They automatically update each value you want to iterate over and",
      "stop after all the iterations (you don't have to manage a 'counter')"
    )
  } else {
    stop("argument input not supported; try 'while loop' or 'for loop'",
         call. = FALSE)
  }
  help
}
