

############################################
### Plot CBOE Volatility Index (VIX)    ###
############################################

# packages
# install.packages(c("quantmod", "PerformanceAnalytics", "ggplot2"))
library(quantmod)
library(PerformanceAnalytics)
library(ggplot2)

# load data
vix_fred <- na.omit(getSymbols("VIXCLS", src = "FRED", auto.assign = FALSE, method = "curl")) 

# subset for time period
# vix.subset <- vix_fred["2020-01-01/2020-03-03"] 

# Plot
autoplot.zoo(vix_fred, color = "red") +
  ggtitle("CBOE Volatility Index (VIX)") +
  ylab("") +
  xlab("") +
  theme_minimal() +
  theme(legend.position = "none") +
  theme(plot.title = element_text(hjust = 0.5)) 

