class User < ActiveRecord::Base
  validates(:title,
    presence:true)
  validates(:body,
            presence:{message:'must be entered'},
            length: {maximum: 500})
end
