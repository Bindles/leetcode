# @param {String} address
# @return {String}
def defang_i_paddr(address="1.1.1.211")
  res=[]
   address.each_char.with_index do |a,ind|
      a.include?(".") ? res << "[.]" : res << a
   end
   res.join
end
p defang_i_paddr

def defang_i_paddr(address)
  res=[]; address.each_char.with_index { |a,ind|a.include?(".") ? res << "[.]" : res << a} and  res.join
end