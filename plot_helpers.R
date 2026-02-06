theme_presentation <- function(
  base_size = 14,
  base_family = "",
  grid = TRUE
) {
  theme_bw(base_size = base_size, base_family = base_family) +
    theme(
      # Make lines and points bolder
      line = element_line(linewidth = 0.8),

      # Larger, bolder text
      plot.title = element_text(
        size = rel(1.5),
        face = "bold",
        margin = margin(b = 0.5, unit = "cm")
      ),
      plot.subtitle = element_text(
        size = rel(1.2),
        margin = margin(b = 0.3, unit = "cm")
      ),
      axis.title = element_text(
        size = rel(1.2),
        face = "bold"
      ),
      axis.text = element_text(size = rel(1.1)),
      legend.title = element_text(
        size = rel(1.1),
        face = "bold"
      ),
      legend.text = element_text(size = rel(1.0)),

      # Grid lines
      panel.grid.major = element_line(
        color = "gray90",
        linewidth = 0.4
      ),
      panel.grid.minor = element_blank(),

      # Legend positioning
      legend.position = "bottom",
      legend.box = "horizontal",

      # Spacing
      plot.margin = margin(t = 0.5, r = 0.5, b = 0.5, l = 0.5, unit = "cm")
    )
}

theme_presentation_small <- function(
  base_size = 11,
  base_family = "",
  grid = TRUE
) {
  theme_presentation(
    base_size = base_size,
    base_family = base_family,
    grid = grid
  ) +
    theme(
      plot.title = element_text(size = rel(1.1), face = "bold"),
      plot.margin = margin(t = 0.2, r = 0.2, b = 0.2, l = 0.2, unit = "cm")
    )
}


theme_rotate <- function(angle = 90, axis = "x", hjust = 1, vjust = NULL) {
  # Auto-adjust vjust if not specified
  if (is.null(vjust)) {
    vjust <- if (angle == 90) 0.5 else 1
  }

  # Build theme based on axis
  if (axis == "x") {
    theme(
      axis.text.x = element_text(angle = angle, hjust = hjust, vjust = vjust)
    )
  } else if (axis == "y") {
    theme(
      axis.text.y = element_text(angle = angle, hjust = hjust, vjust = vjust)
    )
  } else if (axis == "both") {
    theme(
      axis.text.x = element_text(angle = angle, hjust = hjust, vjust = vjust),
      axis.text.y = element_text(angle = angle, hjust = hjust, vjust = vjust)
    )
  } else {
    stop("axis must be 'x', 'y', or 'both'")
  }
}

update_geom_defaults("line", list(linewidth = 2))
update_geom_defaults("point", list(size = 3))
