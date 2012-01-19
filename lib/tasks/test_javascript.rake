namespace :test do
  namespace :js do 
    desc "javascript test server"
    task :server do
      port = 4000
      puts "Booting JsTestDriver server on http://localhost:#{port}"
      puts "Access the url with your browser to setup"
      puts "Do 'rake test:js' "
      p `java -jar test/javascript/JsTestDriver-1.3.3d.jar --port #{port}`
    end
  end

  desc "run all javascript tests"
  task :js do
    cmd = "java -jar test/javascript/JsTestDriver-1.3.3d.jar --config test/javascript/jsTestDriver.conf --basePath . --tests all"
    puts "execute: #{cmd}"
    puts `#{cmd}`
    exit
  end
end