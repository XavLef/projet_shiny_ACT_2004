#' @export
graph_Z_temp <- function(Z, t, n, couleur = "brown")
{
    ggplot() +
        geom_line(aes(x = t[t < n], y = Z[t < n]), linewidth = 1,
                  col = couleur) +
        geom_point(aes(x = n, y = Z[t == n]), size = 2,
                   col = couleur) +
        geom_segment(aes(x = n, xend = t[length(t)], y = 0, yend = 0),
                     linewidth = 1,
                     col = couleur) +
        geom_point(aes(x = n, y = 0),
                   fill = "white", col = couleur, pch = 21, size = 2) +
        labs(title = "Valeur actualisée (assurance temporaire)")
}
