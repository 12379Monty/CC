################################################################
# Define Gene/Probe Set lists
################################################################
library(hgu133plus2.db)

GSE.Symbol.vec <-
  unlist(mget(colnames(GSE.Data.lst[[1]]$NormExpr.mtx),
              hgu133plus2SYMBOL))

GSE.Symbol.vec[1:5]
#007_s_at   1053_at    117_at    121_at 1255_g_at
   #"DDR1"    "RFC2"   "HSPA6"    "PAX8"  "GUCA1A"

## Note that these may not be unique
length(unique(colnames(GSE.Data.lst[[1]]$NormExpr.mtx)))
##[1] 54675

length(unique(GSE.Symbol.vec))
###[1] 20324


