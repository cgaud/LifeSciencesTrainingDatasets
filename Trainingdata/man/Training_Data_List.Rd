\name{Training_Data_List}
\alias{Training_Data_List}
\docType{data}
\title{
Training_Data_List
}
\description{
Collection of all used data sets and a description of what they contain and the data processing used on them
}
\usage{data("Training_Data_List")}
\format{
  Data set consists of the following columns
  \describe{
    \item{\code{Data_set_Name}}{a string of the data sets name}
    \item{\code{File_Name}}{a string name of the raw-data text file}
    \item{\code{Reference_doi}}{a string containing the data sets referance and/or source}
    \item{\code{Graph_Description}}{a string describing the data manipulation used}
    \item{\code{Categorical_Data}}{a logic vector for data sorting, TRUE or FALSE}
    \item{\code{Continuous_Data}}{a logic vector for data sorting, TRUE or FALSE}
    \item{\code{Log_Data}}{a logic vector for data sorting, TRUE or FALSE}
    \item{\code{Normally_Distributed_Data}}{a logic vector for data sorting, TRUE or FALSE}
    \item{\code{Machine_Learning}}{a logic vector for data sorting, TRUE or FALSE}
    \item{\code{Description}}{a string describing the data seen in the data set}
}}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(Training_Data_List)
## maybe str(Training_Data_List) ; plot(Training_Data_List) ...
}
\keyword{datasets}
