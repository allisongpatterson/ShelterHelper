module ApplicationHelper

  def sort_by(param, label = param.to_s.humanize) # allows nicer erb for making columns sortable
    link_to label, sort: param
  end
  
end
