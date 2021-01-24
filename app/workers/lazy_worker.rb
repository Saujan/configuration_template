class LazyWorker
    include Sidekiq::Worker
    sidekiq_options retry: 1
  
    def perform(lazy_type)
        case lazy_type
        when 'hard'
            puts ssss
            # while true do
            #     sleep 3
            #     puts 'stuck in loop'
            # end
        when 'medium'
            sleep 5
            puts 'that was quite bit of work'
        else
            sleep 3
            puts 'that was not a lot of work'
        end
    end
end