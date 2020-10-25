module Services
  class WelcomeEvent
    include ActiveModel::Model
    attr_accessor :welcome_event_id
    attr_accessor :welcome_event_name
    attr_accessor :welcome_event_description
    attr_accessor :welcome_event_is_published

    attr_accessor :each_events

    def create
    
    end

    def save!
      WelcomeEvent.new()
    end

    def self.find welcome_event_id
      @welcome_event = WelcomeEvent.find_by_id(welcome_event_id)
      Services::WelcomeEvent.new(
                                  welcome_event_id: @welcome_event.id,
                                  welcome_event_name: @welcome_event.name,
                                  welcome_event_description: @welcome_event.description,
                                  welcome_event_is_published: @welcome_event.is_published,
                                  each_events: @welcome_event.each_events
                                )
    end
  end
end