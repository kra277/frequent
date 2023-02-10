# Get all the package citations used in the project

require(tidyverse)
require(pacman)

get_package_citation_table <- function(){
  appendix_packages <- data.frame(Package = character(),
                                  Version = character(),
                                  Maintainer = character(),
                                  Citation = character())
  
  for (pkg in p_loaded()){
    appendix_packages <- appendix_packages %>% add_row(
      Package = pkg,
      Version = as.character(packageVersion(pkg)),
      Maintainer = maintainer(pkg),
      Citation = format(citation(pkg), style = 'text')
    )
  }
  appendix_packages <- appendix_packages %>% 
    # add_row(
    #   Package = "RStudio",
    #   Version = as.character(RStudio.Version()$version),
    #   Maintainer = "",
    #   Citation = format(RStudio.Version()$citation, style = "text") 
    # ) %>%
    add_row(
      Package = "R",
      Version = paste(version$major,version$minor, sep="."),
      Maintainer = "",
      Citation = format(citation(), style = "text")
    )
  
  appendix_packages %>%
    mutate( Citation = Citation %>% # strip out the markdown
              str_replace_all("_","") %>%
              str_replace_all("[*]", "") %>%
              str_replace_all("<URL:", "") %>%
              str_replace_all(">","")) %>% 
    arrange(Package) 
}

t <- get_package_citation_table() 
