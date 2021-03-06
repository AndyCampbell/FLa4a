\name{predict}
\alias{predict}
\alias{predict,a4aGr-method}
\title{Predicts age or lengths using a growth class}
\arguments{
  \item{object}{the \code{a4aGr} object}

  \item{...}{arguments to be passed to the rMvdc and copula
  methods}
}
\value{
  a \code{matrix} object with lengths or ages
}
\description{
  Predicts age or lengths using a growth class
}
\examples{
vbObj <- a4aGr(grMod=~linf*(1-exp(-k*(t-t0))), grInvMod=~t0-1/k*log(1-len/linf), params=FLPar(linf=58.5, k=0.086, t0=0.001, units=c("cm","ano-1","ano")))
predict(vbObj, len=1:50+0.5)
predict(vbObj, t=1:20+0.5)
}

