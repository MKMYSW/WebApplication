module PostsHelper
    
    def log_in(user)
        session[:id] = user.id
    end
    
    def current_user
        if session[:id]
            @current_user = User.find_by(id: session[:id])
        end
    end
    
    def logged_in?
        !current_user.nil?
    end
    
    def log_out
        session.delete(:id)
    end
end
