# README

Deployment<br>
https://hello-rails-26995395de0a.herokuapp.com/movies <br>

version<br>
Ruby 3.3.4

Configuration
<ul>
<li>Check if you have ruby installed or else you can install rbenv and ruby-build also.
    sudo apt update 

    git clone https://github.com/rbenv/rbenv.git ~/.rbenv
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(rbenv init -)"' >> ~/.bashrc
    exec $SHELL

    git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
    echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
    exec $SHELL
    
<li>install bundle and gem
   <pre><code>rbenv install bundle
bundle install gem
</code></pre>
</li>
<li>Check if you rails and if not then
   <pre><code>gem install rails
</code></pre>
</li>
<li>verify if heroku-cli is installed into the command line and if not <a href="https://devcenter.heroku.com/articles/heroku-cli#install-with-ubuntu-debian-apt-get">Follow these instructions to install it</a>
</li>
<li>Install pkg-config
   <pre><code>ruby -v &&\
rails -v &&\
bundle -v &&\
heroku -v &&\
sudo apt-get update && sudo apt-get install pkg-config
</code></pre>
</li>
<li>Now, since it's time to create a new rails app with some starter code
   <pre><code>rails new rottenpotatoes --skip-test-unit --skip-turbolinks --skip-spring
</code></pre>
</li>
</ul>

Deployment instructions
<ul>
<li>Create the container from the command line:
   <pre><code>heroku create app_name
</code></pre>
</li>
<li>Authenticate through the command line by logging in to your Heroku account:
   <pre><code>heroku login
</code></pre>
</li>
<li>Push the app:
   <pre><code>git push heroku main
</code></pre>
</li>
<li>If there is some error while pushing the app, check the remote repository if your Heroku remote repository has been set up correctly:
   <pre><code>git remote -v
</code></pre>
</li>
<li>Run database migration on Heroku:
   <pre><code>heroku run rails db:migrate
</code></pre>
</li>
<li>Seed the data on Heroku:
   <pre><code>heroku run rails db:seed
</code></pre>
</li>
<li>The app would be deployed to Heroku. Go to the Heroku platform and open your app.
</li>
</ul>