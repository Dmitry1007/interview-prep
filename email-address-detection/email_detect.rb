class EmailDetector
  attr_reader :text, :email_addresses
  def initialize(text)
    @text = [text]
    @email_addresses = []
  end

  def find_email
    email = text[0].scan(/\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b/i).join
    email_addresses << email + ";"
    return email
  end
end
