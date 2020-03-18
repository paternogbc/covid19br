# Function to generate predictions from (log(2) regression models)
#' @export
predic_covid <- function(model, date_interval){
  future <-
    data.frame(
      date = date_interval, by = 1)
  pred <-exp(predict(model, newdata = future, interval = "confidence"))
  future <- cbind(future, pred)
  return(future)
}

# Function to generate predicted vs observed trends in covid
#' @export
plot_future <-
  function(obs, pred, pred_lab = "Previsto", obs_lab = "Observado", ylab = "Casos confirmados covid-19", xlab = "Data",
         title = "covid-19 | Brazil",
         subtitle = "Corona virus spreads exponentially",
         caption = "Data source: Minstério da Saúde | Predicted on 2020-03-15") {
  gpred <- ggplot(pred, aes(y = fit, x = date)) +
    geom_ribbon(data = pred, aes(ymax = upr, ymin = lwr, x = date), fill = "gray", alpha = .5) +
    geom_line(data = pred, aes(y = fit, color = pred_lab), lty = "dashed") +
    geom_line(data = obs,
              aes(y = confirmed_cases, x = date,
                  color = obs_lab)) +
    geom_point(data = obs,
               aes(y = confirmed_cases, x = date,
                   color = obs_lab)) +
    scale_color_manual(values = c(2,1), name = "") +
    scale_x_date(date_breaks = "7 days", date_labels =  "%d %b") +
    theme_cowplot(font_size = 20) +
    labs(y = ylab,
         x = xlab,
         title = title,
         subtitle = subtitle,
         caption =  caption) +
    theme(
      plot.title = element_text(size = 22),
      plot.subtitle = element_text(size = 18),
      plot.caption = element_text(size = 12, hjust = 1))
  return(gpred)
}
