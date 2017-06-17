class User < ActiveRecord::Base
    validates :name, precedence: true, lenght: { maximum: 50 } 
    VALID_EMAIL_REGEX	=	/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, precedence: true , format: { with : VALID_EMAIL_REGEX} 

    
    before_save {self.email = email.downcase}
    
    has_secure_password
    
    validates :password, length: {minimum: 6}
end
