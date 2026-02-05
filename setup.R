# load this after we define GITROOT

DDATA <- fs::path(GITROOT, "data")

# folders outside of the git repo
DBEA <- fs::path("D:/", "data", "bea") # bea data
DCES <- fs::path("D:/", "data", "ces") # current employment statistics
DCESNY <- fs::path(DCES, "cesny") # current employment statistics ny state
DPITNY <- fs::path("D:/", "data", "nyspit") # current employment statistics
DQCEW <- fs::path("D:/", "data", "qcew")

source(fs::path(GITROOT, "libraries.R"))
source(fs::path(GITROOT, "libraries_ts.R"))
source(fs::path(GITROOT, "plot_helpers.R"))
