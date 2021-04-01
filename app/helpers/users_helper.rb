module UsersHelper
    def image_for(user)
        if user.image?
            image_tag user.image.url(:thumb)
        else 
            image_tag "defaultimage.png"
        end
    end
end
