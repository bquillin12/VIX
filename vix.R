

############################################
### Plot CBOE Volatility Index (VIX)    ###
############################################

# packages
# install.packages(c("quantmod", "PerformanceAnalytics", "ggplot2", "zoo"))
library(quantmod)
library(PerformanceAnalytics)
library(ggplot2)
library(zoo)

# read data from St. Louis Federal Reserve Bank (FRED)
vix_fred <- na.omit(getSymbols("VIXCLS", src = "FRED", auto.assign = FALSE, method = "curl")) 

# subset for time period
# vix.subset <- vix_fred["2020-01-01/2020-03-03"] 

# Plot daily values
autoplot.zoo(vix_fred, color = "red") +
  ggtitle("CBOE Volatility Index (VIX), Daily") +
  ylab("") +
  xlab("") +
  theme_minimal() +
  theme(legend.position = "none") +
  theme(plot.title = element_text(hjust = 0.5)) 

# Select end of quarter values
vix_fred_q <- vix_fred[endpoints(vix_fred, on = "quarters")]

# plot end of quarter values
autoplot.zoo(vix_fred_q, color = "red") +
  ggtitle("CBOE Volatility Index (VIX), Quarter Ends") +
  ylab("") +
  xlab("") +
  theme_minimal() +
  theme(legend.position = "none") +
  theme(plot.title = element_text(hjust = 0.5)) 


