module MoviesHelper
    def sort_link(column, title = nil)
      title ||= column.titleize
      direction = (column == @sort_column && @sort_direction == 'asc') ? 'desc' : 'asc'
      icon = sort_icon(column, direction)
      css_class = if column == @sort_column
                    @sort_direction == 'asc' ? 'sorted-asc' : 'sorted-desc'
                  else
                    ''
                  end

      link_to "#{title} #{icon}".html_safe, { sort: column, direction: direction }, class: css_class
    end
  
    private
  
    def sort_icon(column, direction)
      return '' unless column == @sort_column  
      direction == 'asc' ? '▼' : '▲'
    end
  end