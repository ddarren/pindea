namespace :test do
  task :init do
    p `thin start`
  
  end
  
end