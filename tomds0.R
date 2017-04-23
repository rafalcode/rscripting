#!/usr/bin/env Rscript
# Getting R's native MDS to work on an upper triangular pariwise.
args <- commandArgs(trailingOnly = TRUE)
numargs <- length(args)
enumargs <- 1 # expected numargs
if(numargs != enumargs) {
    ostr<-sprintf("Usage: %i argument(s) required (hint: a distinct number for the creation of an output directory)", enumargs)
    print(ostr)
    stop("Bailing out ..")
}
# dtab<-read.table(args[1], header=TRUE, row.names=1, sep="\t")
dtab<-read.csv(args[1], header=T, row.names=1, sep="\t")
dtab
# following won't work
# dtab<-read.delim(args[1], header=TRUE, sep="\t")
# as.dist is the distance table coercion but it doesn't seem to work.
# well, it will work if tabe is symmetric
# dd<-as.dist(dtab)
# oDir<-toString(args[1])
# mtab<-cmdscale(dtab, k=2)
# mtab<-cmdscale(dd, k=2)
# ptitle<-paste("MDS Plot of ", toString(args[1]), sep="")
# plot(mtab,type="n", xlab="Dim1", ylab="Dim2",main = ptitle) 
# text(mtab,labels=names(dtab))
