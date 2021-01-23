class PrimeMineWorker
    include Sidekiq::Worker
  
    def perform(prime_position)
      # do something
      puts prime_position
    end
  end