#' @export
graph_Z_cap_diff <- function(Z, t, n, couleur = "aquamarine4")
{
    cap_diff <- Z[t == n]
    ggplot() +
        geom_segment(aes(x = t[1], xend = t[which(t == n) - 1],
                         y = 0, yend = 0), linewidth = 1,
                     col = couleur) +
        geom_point(aes(x = n, y = 0), size = 2,
                   col = couleur) +
        geom_segment(aes(x = n, xend = t[length(t)],
                         y = cap_diff, yend = cap_diff), linewidth = 1,
                     col = couleur) +
        geom_point(aes(x = n, y = cap_diff),
                   fill = "white", col = couleur, pch = 21, size = 2) +
        labs(title = "Valeur actualisée (capital différé)")
}
