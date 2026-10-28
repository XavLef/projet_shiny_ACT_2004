#' @export
graph_Z_diff <- function(Z, t, n, couleur = "cornflowerblue")
{
    ggplot() +
        geom_segment(aes(x = t[1], xend = t[which(t == n) - 1],
                         y = 0, yend = 0), linewidth = 1,
                     col = couleur) +
        geom_point(aes(x = n, y = 0), size = 2,
                   col = couleur) +
        geom_line(aes(x = t[t >= n], y = Z[t >= n]), linewidth = 1,
                  col = couleur) +
        geom_point(aes(x = n, y = Z[t == n]),
                   fill = "white", col = couleur, pch = 21, size = 2) +
        labs(title = "Valeur actualisée (assurance différée)")
}
