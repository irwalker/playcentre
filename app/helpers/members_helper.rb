module MembersHelper
  def member_actions(member)
    link_to('view', member_path(member))
  end

  def child_actions(member, child)
    link_to('view', member_child_path(member, child))
  end
end
