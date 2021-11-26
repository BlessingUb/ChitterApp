module UsersHelper
    def nick_name
        @user.firstname + " " + @user.lastname
    end 
end
