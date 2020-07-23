namespace :user do

	task :weekly_kudos_available_reset => [:environment] do
		User.set_kudos_available(3)
	end

end