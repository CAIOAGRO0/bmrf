\name{predict.bmrf}
\alias{predict.bmrf}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  prediction
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
predict.bmrf(b)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{b}{
%%     ~~Describe \code{b} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (b) 
{
    for (i in 1:ncol(b@go)) {
        go.proteins <- b@go[, i]
        go.proteins[b@unknown.idcs] = -1
        glm.enet.pred <- predict.glmnet(bmrf = b, go.idx = i, 
            dfmax = (ncol(b@fd) - 1))
        if (is.null(glm.enet.pred)) 
            next
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
