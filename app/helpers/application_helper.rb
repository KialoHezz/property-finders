module ApplicationHelper
    
    def profile_picture account
        # return a thumbnail
         thumb = account.image.present? ? account.image.thumb.url : "profile.png"
         image_tag thumb, class:"profile-pic img-circle"
    end
end
