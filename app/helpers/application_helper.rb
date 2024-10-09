module ApplicationHelper
    def sortable(column, title = nil)
      title ||= column.titleize
      direction = (column == params[:sort] && params[:direction] == "asc") ? "desc" : "asc"
      css_class = column == params[:sort] ? "current #{params[:direction]}" : nil
      direction_symbol = column == params[:sort] ? (params[:direction] == "asc" ? " ↑" : " ↓") : ""
      link_to "#{title}#{direction_symbol}".html_safe, { sort: column, direction: direction }, { class: css_class }
    end
  end