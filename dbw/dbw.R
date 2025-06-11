# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Doubly Robust Distribution Balancing Weighting Estimation Use dbw With (In) R Software
install.packages("dbw")
library("dbw")
dbw = read.csv("https://raw.githubusercontent.com/timbulwidodostp/dbw/main/dbw/dbw.csv",sep = ";")
# Estimation Doubly Robust Distribution Balancing Weighting Estimation Use dbw With (In) R Software
formula_ps_c <- stats::as.formula(treat ~ x1 + x2 + x3 + x4)
formula_ps_m <- stats::as.formula(treat ~ x1mis + x2mis + x3mis + x4mis)
formula_y <- stats::as.formula(y ~ x1mis + x2mis + x3mis + x4mis)
dbw <- dbw(formula_y = formula_y, formula_ps = formula_ps_c, estimand = "ATE", method = "dbw", 
method_y = "wls", data = dbw, normalize = TRUE, vcov = TRUE, lambda = 0, weights = NULL, clevel = 0.95)
summary(dbw)
# Doubly Robust Distribution Balancing Weighting Estimation Use dbw With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished