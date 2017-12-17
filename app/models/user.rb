class User < ActiveRecord::Base
	has_secure_password
	has_many :posts # notethis was added per Avi's video but I haven't got this actually working yet.
end
