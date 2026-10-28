#' @export
graph_Z_mixte <- function(Z, t, n, couleur = "chartreuse4")
{
    cap_diff <- Z[t == n]
    ggplot() +
        geom_line(aes(x = t[t <= n], y = Z[t <= n]), linewidth = 1,
                  col = couleur) +
        geom_segment(aes(x = n, xend = t[length(t)],
                         y = cap_diff, yend = cap_diff), linewidth = 1,
                     col = couleur) +
        labs(title = "Valeur actualisée (assurance mixte)")
}
