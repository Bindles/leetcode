#* 721. Accounts Merge
accounts = [["John","johnsmith@mail.com","john_newyork@mail.com"],["John","johnsmith@mail.com","john00@mail.com"],["Mary","mary@mail.com"],["John","johnnybravo@mail.com"]]
# @param {String[][]} accounts
# @return {String[][]}
#* SOL 1.1 | MAP
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


#* SOL 1 | OG
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
p accounts_merge(accounts)




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

