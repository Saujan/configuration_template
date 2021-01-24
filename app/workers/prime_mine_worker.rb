class PrimeMineWorker
    include Sidekiq::Worker
    sidekiq_options retry: 0
  
    def perform(prime_position)
      # do something
      raise 'error calculation prime value'
      puts prime_position
    end
end