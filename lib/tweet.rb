class Tweet
  attr_accessor :message, :username

  ALL = []

  def initialize(props={})
    @message = props['message']
    @username = props['username']
    ALL << self
  end

  def self.all
    ALL
  end

end
