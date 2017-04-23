#!/usr/bin/env Rscript
# Another script concentrating on argument handling, i.e. input output.
# here we use an argument to form a new directory name and create it, then even output a vector into as a file into that directory.
args <- commandArgs(trailingOnly = TRUE)
numargs <- length(args)
enumargs <- 1 # expected numargs
if(numargs != enumargs) {
    ostr<-sprintf("Usage: %i argument(s) required (hint: a distinct number for the creation of an output directory)", enumargs)
    print(ostr)
    stop("Bailing out ..")
}
# we can add something to the arg if we want:
# oDir<-paste("nDir", toString(args[1]), sep="")
# or not:
oDir<-toString(args[1])
dir.create(oDir)
outF<-"arboututfilename"
a<-seq(2,20,3)
# usage of paste an idiom in R, concatenates strings.
write.csv(a, paste(oDir, "/", outF, sep=""))
