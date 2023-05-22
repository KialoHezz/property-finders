module PostsHelper
    def post_thumbnail_url post
        img = post.image.present? ? post.image.thumb.url : "placeholder.png"
        image_tag img, class: "property-thumb"
    end
end
