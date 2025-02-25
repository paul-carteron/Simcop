#' add_non_simulated_zone
#'
#' @param stand_data data.frame from the use of "import_stand_data" function
#' @param coeff_traj coefficient a, b, a0, and b0 of the mortality trajectory (cf : Ningre et al "Trajectoires d auto-eclaircie du Douglas en France)
#' @param grab_force force apply to connect point together. Defaults to 2
#' @param show_point if TRUE point used to find isolines are shown
#'
#' @return A ggplot object corresponding to the zone of non-simulated data
#' @export
#'
#' @importFrom dplyr filter bind_rows group_by mutate select slice_max ungroup
#' @importFrom ggforce geom_mark_hull
#' @importFrom ggplot2 aes last_plot geom_line geom_point
#' @importFrom tidyr pivot_longer
#'
add_non_simulated_zone = function(stand_data,
                                  coeff_traj = c(a = 13.532,
                                                 b = -1.461,
                                                 a0 = 14.21,
                                                 b0 = -1.79),
                                  grab_force = 2,
                                  show_point = FALSE){

   Cg <- Nha <- Nha_DTDM <- density <- value <- NULL

   max_x = last_plot()$coordinates$limits$x[2]

   min_density = min(stand_data$density)

   extreme_point = stand_data %>%
      group_by(density) %>%
      slice_max(Cg) %>%
      ungroup() %>%
      select(Cg, Nha) %>%
      mutate(Nha_DTDM = Cg^coeff_traj["b"] * exp(coeff_traj["a"])) %>%
      filter(Nha < Nha_DTDM - 1) %>%
      pivot_longer(cols = c(Nha_DTDM,Nha)) %>%
      bind_rows(data.frame(Cg = max_x, name = "max") %>%
                   mutate(value = Cg^coeff_traj["b"] * exp(coeff_traj["a"]))) %>%
      bind_rows(data.frame(Cg = max_x, name = "max") %>%
                   mutate(value = calculate_traj(cg_range = max_x,
                                                 density_init = min_density)))

   if (length(unique(stand_data$density)) == 1){
      res = list(geom_line(data = extreme_point,
                           aes(x = Cg, y = value),
                           alpha = 0.6,
                           color = "grey",
                           size = 4))
   }else{
      res = list(geom_mark_hull(data = extreme_point,
                                aes(x = Cg, y = value),
                                concavity = grab_force,
                                expand = 0,
                                radius = 0,
                                alpha = 0.6,
                                color = NA,
                                fill = "grey"))
   }

   if (show_point){
         res = c(res,
                 geom_point(data = extreme_point,
                            aes(x = Cg, y = value)))
   }

   return(res)
}

