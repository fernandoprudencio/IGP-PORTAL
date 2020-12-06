#' @title
#' Plot the spatial distribution of GVMI an GVMI anomalies
#'
#' @description
#' this script plots, as monitoring, the spatial distribution of GMVI and GVMI
#'   anomalies for each month of the current year
#'
#' @author Fernando Prudencio
rm(list = ls())

#' INSTALL PACKAGES
pkg <- c("RCurl")

sapply(
  pkg,
  function(x) {
    is.there <- x %in% rownames(installed.packages())
    if (is.there == FALSE) {
      install.packages(x, dependencies = T)
    }
  }
)

#' LOAD PACKAGES
library(RCurl)

#' UPLOAD TO LAMAR SERVER
path <- "/data/users/lamar/DATA/FIG_WEB_LAMAR/PROJECTS/ANA/NDVI"
host <- "190.187.237.253"
nam1 <- "ndvi"
nam2 <- "anom_ndvi"
year <- "2020"
month <- "10"

ftpUpload(
  sprintf("exports/%1s.png", nam1),
  sprintf("ftp://%1$s/%2$s/%3$s.png", host, path, nam1),
  userpwd = "amazonia:l@mar1044"
)

ftpUpload(
  sprintf("exports/%1s.png", nam2),
  sprintf("ftp://%1$s/%2$s/%3$s.png", host, path, nam2),
  userpwd = "amazonia:l@mar1044"
)

ftpUpload(
  sprintf("exports/%1s.png", nam1),
  sprintf(
    "ftp://%1$s/%2$s/2020/%5$s/%3$s%4$s_%5$s.png",
    host, path, year, month, nam1
  ),
  userpwd = "amazonia:l@mar1044"
)

ftpUpload(
  sprintf("exports/%1s.png", nam2),
  sprintf(
    "ftp://%1$s/%2$s/2020/%5$s/%3$s%4$s_%5$s.png",
    host, path, year, month, nam2
  ),
  userpwd = "amazonia:l@mar1044"
)