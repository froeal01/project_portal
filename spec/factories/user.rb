
FactoryGirl.define do 
	sequence :account_name do |n|
		"Mr.Alex#{n}"
	end

	sequence :email do |n|
		"Mr.Alex#{n}@gmail.com"
	end


	factory :user do 
		account_name {generate(:account_name)}
		email {generate(:email) }
		password "password"
		password_confirmation "password"
	end
end