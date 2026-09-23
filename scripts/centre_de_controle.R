###
### Paquetages
###

## Paquetages requis
pqtg <- c("ggplot2", "latex2exp", "reshape2", "magrittr", "roxygen2", "scales",
          "shiny", "devtools")

## Paquetages installés
inst_pqtg <- rownames(installed.packages())

## Installation (si nécessaire)
invisible(sapply(pqtg[!pqtg %in% inst_pqtg], install.packages))

## Chargement
invisible(sapply(pqtg, library, character.only = TRUE))


###
### Installer et charger le paquetage depuis GitHub
###
install_github("XavLef/projet_shiny_ACT_2004")
library(projetShinyACT2004)


###
### Lancer les applications Shiny avec R (être dans le répertoire du projet)
###

## Application Y
runApp("application_Y/")

## Application Z
runApp("application_Z/")
