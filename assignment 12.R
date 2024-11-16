
months <- c("Jan", "Feb", "March", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
charges_2012 <- c(31.9, 27, 31.3, 31, 39.4, 40.7, 42.3, 49.5, 45, 50, 50.9, 58.5)
charges_2013 <- c(39.4, 36.2, 40.5, 44.6, 46.8, 44.7, 52.2, 54, 48.8, 55.8, 58.7, 63.4)


plot(charges_2012, type = "o", col = "blue", xlab = "Month", ylab = "Charges", xaxt = "n", ylim = c(20, 70))
lines(charges_2013, type = "o", col = "red")
axis(1, at = 1:12, labels = months)
legend("topright", legend = c("2012", "2013"), col = c("blue", "red"), lty = 1)


library(forecast)


ts_2012 <- ts(charges_2012, start = c(2012, 1), frequency = 12)
ts_2013 <- ts(charges_2013, start = c(2013, 1), frequency = 12)

model_2012 <- HoltWinters(ts_2012, beta = FALSE, gamma = FALSE)
model_2013 <- HoltWinters(ts_2013, beta = FALSE, gamma = FALSE)


summary(model_2012)
summary(model_2013)


plot(model_2012, main = "Exponential Smoothing for 2012")
plot(model_2013, main = "Exponential Smoothing for 2013")
