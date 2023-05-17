class Property < ApplicationRecord
    mount_uploader :photo, PhotoUploader

    belongs_to :account

    # set a new scope
    scope :latest, -> { order created_at: :desc }
end
