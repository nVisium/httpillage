Rails.application.routes.draw do
	namespace 'api' do
	  get 'health', to: 'health#index'
	  get 'poll(/:nodeid(/:jobid))', to: 'dispatcher#poll'

	  # Intruder will use the following endpoints to create and manage jobs
	  post 'job/create', 							to: 'job#create'

	  post 'job/:jobid/saveResponse', to: 'job_response#create'
	end

	get 'jobs', to: 'job#index'
	get 'nodes', to: 'node#index'
	delete 'job/:jobid', to: 'job#destroy', as: 'job'
end
