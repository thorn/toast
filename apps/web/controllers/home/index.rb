module Web::Controllers::Home
  class Index
    include Web::Action

    expose :now
    expose :container

    def call(params)
      @now = Time.now.utc
      @container = `hostname`.strip || 'unknown'
      Web::Logger.info "Enlightened at #{@now}"
    end
  end
end
