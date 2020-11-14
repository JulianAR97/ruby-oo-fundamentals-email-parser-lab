# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    
    def initialize(email_string)
        @email_string = email_string
    end
    
    attr_accessor :email_string

    def parse
        email_arr = email_string.split(' ').map do |ele| 
            ele.include?(',')? ele[0..-2] : ele
        end  
        email_arr.uniq
    end
end

# e_s1 = "avi@test.com, avi@test.com"
# email_obj = EmailAddressParser.new(e_s1)

# puts email_obj.email_string
# print email_obj.parse
