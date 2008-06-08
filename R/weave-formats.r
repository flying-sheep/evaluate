sep <- function(...) cat(rep("-", options("width")), sep = "")


interactive <- list(
  start = sep,
  end = sep,
  message = function(x) {
    message(gsub("\n^", "", x))
  },
  warning = function(x, call) {
    message("Warning in ", deparse(call), " : ", x)
  },
  error = function(x, call) {
    message("Error in ", deparse(call), " : ", x)
    
  },
  out = function(x) {
    cat(x)
  },
  value = function(x, path) {
    print(x)
  },
  src = function(x) {
    cat(gsub("^\n", "\n\\> ", gsub("(.)\n", "\\1\n+ ", x)), "\n")
  }
)