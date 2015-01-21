namespace :project do

 task :permissions do
   on release_roles :all do
     execute :chmod, "-R", "g+w", release_path
   end
 end

 after "deploy:updating", "project:permissions"

end