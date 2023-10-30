# Load the tictoc package
library(tictoc)

# List of script files to source from the scripts\ directory
script_files <- list.files("scripts", full.names = TRUE)

# Measure the execution time for each script
for (script_file in script_files) {
  cat("Executing script:", script_file, "\n")
  
  # Start the timer
  tic()
  
  # Source the script file
  source(script_file)
  
  # Stop the timer and print the elapsed time
  toc()
  
  cat("\n")
}


#From the results i find the parallel computing in the mtweedietest function 
#to be the fastest. I think it is fastest in the last method because it 
#implements parallel computing into a higher level in the function. 