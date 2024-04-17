#* 721. Accounts Merge
accounts = [["John","johnsmith@mail.com","john_newyork@mail.com"],["John","johnsmith@mail.com","john00@mail.com"],["Mary","mary@mail.com"],["John","johnnybravo@mail.com"]]
# @param {String[][]} accounts
# @return {String[][]}
def accounts_merge(accounts)
  p accounts.group_by(&:first)    
end

def accounts_merge(accounts)
  data = Hash.new { |hash, key| hash[key] = [] }

  accounts.each do |acc|
    name, emails = acc[0], Set.new(acc[1..])

    (data[name].length - 1).downto(0) do |idx|
      if (emails & data[name][idx]).any?
        emails |= data[name].delete_at(idx)
      end
    end

    data[name] << emails
  end

  result = []
  data.each do |name, emails_list|
    emails_list.each do |emails|
      result << [name] + emails.sort
    end
  end
  result
end

#* CONCISE BUT FAILS 47
def accounts_merge(accounts)
  data = Hash.new { |hash, key| hash[key] = [] }

  accounts.each do |name, *emails|
    emails_set = Set.new(emails)
    data[name].reverse_each do |existing_emails|
      if (emails_set & existing_emails).any?
        emails_set |= data[name].pop
      end
    end

    data[name] << emails_set
  end
  data.flat_map { |name, emails_list| emails_list.map { |emails| [name] + emails.sort } }
end
p accounts_merge(accounts)


#* MIX OF GOOD N CONCISE
def accounts_merge(accounts)
  data = Hash.new { |hash, key| hash[key] = [] }
  
  accounts.each do |acc|
    name, emails = acc[0], Set.new(acc[1..-1])
    (data[name].length - 1).downto(0) do |index|
      if (emails & data[name][index]).any?
        emails |= data[name].delete_at(index)
      end
    end
    data[name] << emails
  end
  
  data.map { |name, emails_list| emails_list.map { |emails| [name] + emails.sort } }.flatten(1)
end
p accounts_merge(accounts)

p 'COMMENTS'


require 'set'

def accounts_merge(accounts)
  data = Hash.new { |hash, key| hash[key] = [] }
  
  accounts.each do |acc|
    name, emails = acc[0], Set.new(acc[1..])
    (data[name].length - 1).downto(0) do |idx|
      if (emails & data[name][idx]).any?
        emails |= data[name].delete_at(idx)
      end
    end
    data[name] << emails
  end
  
  data.map { |name, emails_list| emails_list.map { |emails| [name] + emails.sort } }.flatten(1)
end


puts accounts_merge(accounts)

def merge_accounts(accounts)
  result = []
  
  # Group accounts by email addresses
  grouped_accounts = accounts.group_by { |account| account[1..] }
  
  grouped_accounts.each do |emails, accounts|
    merged_names = merge_names(accounts)
    result << merged_names + emails
  end
  
  result
end

# Helper method to merge names
def merge_names(accounts)
  names = accounts.map { |account| account[0] }.uniq
  names.sort
end


#*
def merge_accounts(accounts)
  
    def merge_names(accounts)
      names = accounts.map { |account| account[0] }.uniq
      names.sort
    end
    
  result = []
  
  # Group accounts by email addresses
  grouped_accounts = accounts.group_by { |account| account[1..] }
  
  grouped_accounts.each do |emails, accounts|
    merged_names = merge_names(accounts)
    result << merged_names + emails
  end
  
  result
end

# Helper method to merge names


# Test cases
accounts1 = [["John","johnsmith@mail.com","john_newyork@mail.com"],["John","johnsmith@mail.com","john00@mail.com"],["Mary","mary@mail.com"],["John","johnnybravo@mail.com"]]
puts merge_accounts(accounts1).inspect
# Output: [["John", "john00@mail.com", "john_newyork@mail.com", "johnsmith@mail.com"], ["Mary", "mary@mail.com"], ["John", "johnnybravo@mail.com"]]

accounts2 = [["Gabe","Gabe0@m.co","Gabe3@m.co","Gabe1@m.co"],["Kevin","Kevin3@m.co","Kevin5@m.co","Kevin0@m.co"],["Ethan","Ethan5@m.co","Ethan4@m.co","Ethan0@m.co"],["Hanzo","Hanzo3@m.co","Hanzo1@m.co","Hanzo0@m.co"],["Fern","Fern5@m.co","Fern1@m.co","Fern0@m.co"]]
puts merge_accounts(accounts2).inspect
# Output: [["Gabe", "Gabe0@m.co", "Gabe1@m.co", "Gabe3@m.co"], ["Kevin", "Kevin0@m.co", "Kevin3@m.co", "Kevin5@m.co"], ["Ethan", "Ethan0@m.co", "Ethan4@m.co", "Ethan5@m.co"], ["Hanzo", "Hanzo0@m.co", "Hanzo1@m.co", "Hanzo3@m.co"], ["Fern", "Fern0@m.co", "Fern1@m.co", "Fern5@m.co"]]




# # Define a lambda for merging names
# merge_names = ->(accounts) { accounts.map(&:first).uniq.sort }

# # Define the merge_accounts method using the lambda
# merge_accounts = ->(accounts) {
#   accounts.group_by { |account| account[1..] }
#           .map { |emails, accounts| merge_names[accounts] + emails }
# }
#* 
def merge_accounts(accounts)
  merge_names = ->(accounts) { accounts.map(&:first).uniq.sort }
  accounts.group_by { |account| account[1..] }
          .map { |emails, accounts| merge_names[accounts] + emails }
end

def merge_accounts(accounts)
  # Define the merge_names lambda inside the function
  merge_names = ->(accounts) { accounts.map(&:first).uniq.sort }
  # Group accounts by emails and merge names
  accounts.group_by { |account| account[1..] }
          .map { |emails, accounts| merge_names[accounts] + emails }
end

# Test cases
accounts1 = [["John","johnsmith@mail.com","john_newyork@mail.com"],["John","johnsmith@mail.com","john00@mail.com"],["Mary","mary@mail.com"],["John","johnnybravo@mail.com"]]
puts merge_accounts(accounts1).inspect
# Output: [["John", "john00@mail.com", "




