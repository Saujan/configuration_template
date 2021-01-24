class ApplicationController < ActionController::Base
    before_action do
        Honeybadger.context({
          user_id: 1,
          user_email: 'saujan@gmail.com'
        })
    end
end
