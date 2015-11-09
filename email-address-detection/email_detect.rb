class EmailDetector
  attr_reader :text
  def initialize(text)
    @text = [text]
  end

  def find_email
    text[0].scan(/\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b/i).join
  end
end
