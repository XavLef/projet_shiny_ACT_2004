#' @export
graph_FZ_diff <- function(Z, t, tqx, n, couleur = "cornflowerblue")
{
    ggplot() +
        geom_segment(aes(x = Z[t == n], xend = 1.1, y = 1, yend = 1),
                     linewidth = 1,
                     col = couleur) +
        geom_line(aes(x = Z[t >= n], y = 1 + tqx[t == n] - tqx[t >= n]),
                  linewidth = 1,
                  col = couleur) +
        geom_segment(aes(x = 0,
                         xend = Z[length(Z)],
                         y = tqx[t == n],
                         yend = tqx[t == n]), linewidth = 1,
                     col = couleur) +
        geom_segment(aes(x = -0.1, xend = 0, y = 0, yend = 0), linewidth = 1,
                     col = couleur) +
        geom_point(aes(x = 0, y = 0), size = 2,
                   col = couleur) +
        geom_point(aes(x = 0, y = tqx[t == n]),
                   fill = "white", col =  couleur, pch = 21, size = 2) +
        labs(title = "Fonction de répartition (assurance différée)")
}
