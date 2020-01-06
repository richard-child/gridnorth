module LinkHelpers
    def header_nav_selected_class(page)
      classes = page_classes.split(" ")
      if classes.include?(page)
        "selected"
      else
        ""
      end
    end
  end
  