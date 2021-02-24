module MembersHelper
  def member_actions(member)
    view_link = link_to('view', member_path(member))
    edit_link = link_to('edit', edit_member_path(member))

    "#{view_link} #{edit_link}".html_safe
  end

  def child_name(child)
    "#{child.first_name} #{child.last_name}"
  end

  def child_actions(member, child)
    link_to('view', member_child_path(member, child))
  end
end
