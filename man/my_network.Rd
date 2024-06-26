% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/my_network.R
\docType{data}
\name{my_network}
\alias{my_network}
\title{Rocky Shore complex food web data}
\format{
A data frame with 9 rows and 12 columns:
\describe{
  \item{id}{Variable names}
  \item{node.type}{integer}
  \item{node.name}{Variable names}
  \item{Dogwhelk}{integer}
  \item{Topshell}{integer}
  \item{Limpet}{integer}
  \item{Periwinkle}{integer}
  \item{Barnacle}{integer}
  \item{Green.Algae}{integer}
  \item{Biofilm}{integer}
  \item{Corline.algae}{integer}
  \item{Fucoid.Algae}{integer}
}
}
\source{
<https://doi.org/10.1016/j.ocecoaman.2015.04.013>
}
\description{
In this file, the first column is called id and
consists of an s and a 2 digit number relating to the node number.
The second column is called node.type and is an integer value from 1-4.
This sets the colour of the node in the network
(sticking to a maximum of four colours).
Here, predators, grazers, filter feeders and algae are colour coded separately
it would be fine to change the colours, for example to ensure algae were green.
The third column is the same as the first column in the standard BBN interaction csv,
other than it is titled node.name.
It is important to use these column names (including capitals and dot notation).
The remainder of the columns are exactly as the standard my_BBN data file.
}
