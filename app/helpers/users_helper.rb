module UsersHelper
end


=begin
module UsersHelper

   def edit_user_link(user)
    link_to('Edit', edit_user_path(user))
  end
    def delete_user_link(user)
      link_to('Delete',user, method: :delete, data: {confirm: 'Are you sure you want to delete this?'})
  end

end
=end

