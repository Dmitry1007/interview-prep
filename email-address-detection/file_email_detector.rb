class FileEmailDetector
  def find_email_addresses(file_name)
    email_addresses = []
    File.open(file_name, "r").each_line do |line|
      email_addresses << line.scan(/\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b/i).join
    end
    emails = email_addresses.map do |email_address|
      unless email_address.empty?
        email_address + ";"
      end
    end
    return emails.find_all { |email| email != nil}.sort.join
  end
end

file = FileEmailDetector.new
puts file.find_email_addresses("email_test_cases/01.txt")
