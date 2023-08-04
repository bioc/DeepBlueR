#.onAttach <- function(libname, pkgname){
#    packageStartupMessage("Welcome to the DeepBlueR package")

#    if(RCurl::url.exists("http://deepblue.mpi-inf.mpg.de")){
#        packageStartupMessage("DeepBlue is online")
#    }else{
#        warning("DeepBlue could not be reached. Check network connectivity.")
#    }
#}

.onAttach <- function(libname, pkgname) {
    msg <- sprintf(
        "Package '%s' is deprecated and will be removed from Bioconductor
         version %s", pkgname, "3.19")
    .Deprecated(msg=paste(strwrap(msg, exdent=2), collapse="\n"))
}

