class User < ApplicationRecord
    has_one_attached :photo

    enum gender: { male: 0, female: 1 }
end
