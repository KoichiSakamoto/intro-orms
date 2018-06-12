class Tweet
  attr_accessor :message, :username

  def initialize(props={})
    @message = props['message']
    @username = props['username']
    # ALL << self
  end

  ### CREATE ###

  def save_new
    # SQL insert
    # self
  end

  ### READ ###
  def self.find(tweet_id)
    sql_string = <<-SQL_STRING
      select *
      from tweets
      where id = ?
    SQL_STRING
    array_of_hashes = DB[:conn].execute(sql_string, tweet_id)
    Tweet.new(array_of_hashes[0])
  end

  def self.all
    sql_string = <<-SQL_STRING
      select *
      from tweets
    SQL_STRING

    array_of_hashes_from_the_database = DB[:conn].execute(sql_string)
    array_of_hashes_from_the_database.map do |hashy_tweet|
      Tweet.new(hashy_tweet)
    end
  end

  ### UPDATE ###

  def update(props={})
    # sql update
    # make sure we update the instance variables through accessors
    # self
  end
  ### DELETE ###

  def delete
    # SQL delete
    # true
  end


end
