module ApplicationHelper

def nav_link(link_text, link_path)
  id_name = current_page?(link_path) ? 'selected' : ''

  content_tag(:li, :id => id_name) do
    link_to link_text, link_path
  end
end

end
