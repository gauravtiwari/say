class Slack::Response

  def initialize(message)
    @message = message
  end

  def respond?
    response.present?
  end

  def response
    @response ||= "You asked: #{message}"
  end

  private

  attr_reader :message
end