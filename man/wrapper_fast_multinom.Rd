% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wrapper_fast_multinom.R,
%   R/wrapper_fast_multinom_binom.R
\name{wrapper_fast_multinom}
\alias{wrapper_fast_multinom}
\alias{wrapper_fast_multinom_binom}
\title{Wrapper for the function fast_multinom}
\usage{
wrapper_fast_multinom(model.index, mi, datafolder, modelfile, resultsfolder,
  startfile, contrasts = "all_sum", nested_samples = T, VC = T,
  loglik = T)

wrapper_fast_multinom_binom(model.index, mi, datafolder, modelfile,
  resultsfolder, startfile, contrasts = "all_sum", nested_samples = T,
  VC = T, loglik = T)
}
\arguments{
\item{model.index}{integer. Number of the model in the model matrix.}

\item{mi}{integer. Number of multiple imputation replicate of the data set.}

\item{datafolder}{character. Folder, where the data is saved. See data(cancermutations) for an example. The filename is \code{paste0("imp", mi, ".txt")}, where \code{mi} is the multiple imputation replicate.}

\item{modelfile}{character. File that contains the models in the form of a matrix (see examples).}

\item{resultsfolder}{character. Where to save the results?}

\item{startfile}{character. File that contains starting values for the parameter estimation.}

\item{contrasts}{character. What contrasts should be set for the variables cancer_type, genomicSeg and sample_id. Default: 'all_sum'. All other settings will use the default contrasts, i. e. treatment contrasts.}

\item{nested_samples}{Logical. Should the contrasts be defined such that the samples are nested within the cancer types? Default: T}

\item{VC}{Logical. Should the VC matrix be computed? Default: T}

\item{loglik}{Logical. Should the log-likelihood be computed? Default: T}
}
\value{
There is no output. The estimates are saved along with (potential) warning messages.
}
\description{
The function \code{wrapper_fast_multinom} estimates the regression coefficients of a multinomial logistic model with \code{\link{fast_multinom}}. This wrapper was used in our analysis in Bertl et al. (2007) (see References). The function \code{wrapper_fast_multinom_binom} uses a binomial model instead.
}
\details{
A dataset similar to the example data set \code{cancermutations} is read. The dummy variables \code{strong}, \code{Cgi}, \code{simple_repeat}, \code{DNase1_peak}, \code{expression_dummy} are changed to factors, optionally, sum contrasts are set to cancer_type, genomicSeg and sample_id, and nested contrasts are set to create a nesting of sample_id in cancer_type.

Then, the multinomial regression model indexed by \code{model.index} is obtained from a model file and estimated with the function \code{\link{fast_multinom}}.

The scripts that were used to run this function and that show all settings used in Bertl et al. (2007) are available in this package in the folder \code{inst/Bertl_et_al_2017}. The pre-processed data can be downloaded from figshare.
}
\examples{

}
\references{


Bertl, J.; Guo, Q.; Rasmussen, M. J.; Besenbacher, S; Nielsen, M. M.; Hornshøj, H.; Pedersen, J. S. & Hobolth, A. A Site Specific Model And Analysis Of The Neutral Somatic Mutation Rate In Whole-Genome Cancer Data. bioRxiv, 2017. doi: https://doi.org/10.1101/122879 \url{http://www.biorxiv.org/content/early/2017/06/21/122879}
}
\seealso{
\code{\link[multinomutils::fast_multinom]{fast_multinom}}
}
\author{
Johanna Bertl
}
