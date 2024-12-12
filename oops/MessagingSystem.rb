module Message
  def send_message(msg)
    raise NotImplementedError, " Subclass should have this method "
  end

  def self.se