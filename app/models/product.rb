class Product < ApplicationRecord
    #built-in rails method to validate
    validates :name, presence: true
    validate :no_more_platforms

    #custom validations
    def no_more_platforms
        if platform == "samsang"
            errors.add(:platform, "sorry no device")
        end
    end



    def name_serial_no
        "#{name}: #{serial}"
    end

end
