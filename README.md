[![security](https://hakiri.io/github/CoastDigitalGroup/cdg-subengine/master.svg)](https://hakiri.io/github/CoastDigitalGroup/cdg-subengine/master)
[![Code Climate](https://codeclimate.com/github/CoastDigitalGroup/cdg-subengine/badges/gpa.svg)](https://codeclimate.com/github/CoastDigitalGroup/cdg-subengine)
[![Coverage Status](https://coveralls.io/repos/CoastDigitalGroup/cdg-subengine/badge.svg?branch=master&service=github)](https://coveralls.io/github/CoastDigitalGroup/cdg-subengine?branch=master)
[![Build Status](https://travis-ci.org/CoastDigitalGroup/cdg-subengine.svg?branch=master)](https://travis-ci.org/CoastDigitalGroup/cdg-subengine)

### CDG Subengine Documentation
CoastDigitalGroup subengine gem adds multi-tenancy and additional user account management features to rails devise authentication system. Users can now have multiple accounts, features subdomain data scoping, a master app login page and sub-domain login pages.
  
#### Step 1 - Add user model to your app
Generate a user.rb file in your mainapp and add the code below 

    rails g model User  

    include Subengine::UserStorage
  
#### Step 2 - Add Subengine to your gemfile
    gem 'subengine'
    bundle exec install

#### Step 3 - Add and migrate subengine database tables
    rake railties:install:migrations  
    rake db:migrate

#### Step 4 - Configure ActionMailer
+ Mailer functions are required in order for subengine to operate.
+ Mailer is used for confirmation and password reset functions.

#### Step 5 - Mount the Engine in your Routes File
Add this line at the end of the routes file.  
  
    mount Subengine::Engine, :at => '/'

#### Step 6 - Constrain the routs you want secured
All the routes you want to have multi-tenacy login functions goes in between the constraints block.

    constraints(Subengine::Constraints::SubdomainRequired) do  
      # Routes Requiring Security & Multi-Tenancy Routes    
    end  
  
#### Step 7 - Modifications to MainApp Controllers & Database  
Your app needs modification to [controllers (example)](https://github.com/CoastDigitalGroup/cdg-subengine/wiki/Scoped-Controller-Example) and corresponding tables must have an accounts_id column.  
  
    accounts_id  
  
#### Step 8 - Add subengine extension to models  
Add the subengine extension to the top of all models for the routes configured in the previous step.  
  
    extend Subengine::ScopedTo  
  
#### Step 9 - Configure scopes in your controller
Scope your controllers. Examples on github wiki or cdg-substarter app.

    .scoped_to(current_account)  
  
### Additional Information  
  
#### Views - Subengine Views Can be Customized  
Once installed views can be generated and customized to your apps needs.  
  
    rails generate subengine:views  
  
#### Having troubles ?  
[Multi-Tenant Starter App](https://github.com/CoastDigitalGroup/cdg-substarter)  
[Documentation (Github Wiki)](https://github.com/CoastDigitalGroup/cdg-subengine/wiki)  
[Issues & Bug Reports](https://github.com/CoastDigitalGroup/cdg-subengine/issues)  
[Managed by CoastDigitalGroup](http://coastdigitalgroup.com/)  