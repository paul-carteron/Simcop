#' stand_data_ecl_example
#'
#' A dataset containing 50 simulations with 7 thinnings from SimCop corresponding to :
#' \enumerate{
#'   \item Initial densities stem/ha : 1111
#'   \item Fertility : 34 (dominant height at 50 year)
#'   \item 50 repetitions are made for each pair of modalities
#'   }
#'
#' @format A data frame with 4305 rows and 36 variables:
#' \describe{
#'   \item{parameters_id}{unique id for each density-fertility couple i.e. 12*3 = 36 id}
#'   \item{thin_parameters_id}{unique id for each thinning}
#'   \item{repetitions}{number id of the actual repetitions between 0 and 15 for this dataset}
#'   \item{rotations}{rotation time of the forest stand}
#'   \item{stand_age}{age of the stand during simulation}
#'   \item{Nha}{number of stem per hectare}
#'   \item{Gha}{basal area in square meters per hectare}
#'   \item{Vha}{volmue of alive trees in cubic meters per hectare}
#'   \item{Hdom}{average height of the hightest trees in the stand (100 hightest) in meters}
#'   \item{Hg}{average height of trees in the stand in meters}
#'   \item{Cdom}{quadratic mean circonference of the largest trees in the stand (100 largest) in centimeters}
#'   \item{Cg}{quadratic mean circonference of trees in the stand in centimeters}
#'   \item{Vha_dead}{volume of dead trees in cubic meters per hectare per years}
#'   \item{Dg}{quadratic mean diameter of trees in the stand in centimeters}
#'   \item{Ddom}{quadratic mean diameter of the largest trees in the stand (100 largest) in centimeters}
#'   \item{K}{value of thinning coefficient}
#'   \item{Total_crown_cover_ha}{sum of all crowns area in square meters}
#'   \item{Out_of_cover_crown_cover_ha}{sum of all crowns area out of cover in square meters}
#'   \item{Nha_thinned}{number of thinned tree per hectare}
#'   \item{Vha_thinned}{volume of thinned tree the year of the thinning in cubic meters per hectare}
#'   \item{Gha_thinned}{basal area of thinned tree the year of the thinning in cubic meters per hectare}
#'   \item{Vha_Tot}{cumulative volume of alive, thinned and dead trees in cubic meters per hectare}
#'   \item{Vha_mean}{average volume in cubic meters per tree}
#'   \item{plot_dimension}{dimension of the plot for the simulation in meters}
#'   \item{initial_spacing}{Spacing between stem in meters}
#'   \item{fertility}{stand height at 50m in meters}
#'   \item{density}{initial density of the stand in stem per hectare}
#'   \item{ecl_name}{name of csv file used for describe thinning}
#'   \item{criteria_trigger}{Criterion determining timing of thinning (Age, Hdom, RDI)}
#'   \item{criteria_value_type}{Criterion determining intensity of thinning (DensityAfterThinning or NbTreesToPickPerHa)}
#'   \item{criteria_value}{Value of criterion determining timing of thinning (years, m, -)}
#'   \item{nb_trees_ha}{Value of criterion determining intensity of thinning (trees/ha)}
#'   \item{size_class_weights}{weight for k size classes}
#'   \item{distance_factors}{minimum distance between thinned treees in a size class is obtained as product of distance factor and theoretical average distance given by an assumed regular spacing of trees}
#'   \item{average_distance_method}{assumed regular configuration of tress (triange / square) used to compute theoretical average distance between thinned trees}
#'   \item{integer_bounds}{whether size classes are formed from integer_bounded range of size variable}
#' }
"stand_data_ecl_example"


