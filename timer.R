
library(tictoc)

#Storing the script files
script_files <- list.files("scripts", full.names = TRUE)

# Measure the execution time for each script
for (script_file in script_files) {
  cat("Executing script:", script_file, "\n")
  

  tic()
  
 
  source(script_file)
  

  toc()
  
  cat("\n")
}


#From the results i find the parallel computing in the mtweedietest function 
#to be the fastest. I think it is fastest in the last method because it 
#implements parallel computing into a higher level in the function. 