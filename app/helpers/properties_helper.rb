module PropertiesHelper
      # Individual property doesn't have img then this helper to set a default image
      def property_thumbnail property
        img = property.photo.present? ? property.photo.thumb.url : "placeholder.png"
        # return a image tag
        image_tag img, class: "property-thumb"
    end
end
