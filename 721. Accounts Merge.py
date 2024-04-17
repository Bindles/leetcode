#* 721. Accounts Merge
accounts = [["John","johnsmith@mail.com","john_newyork@mail.com"],["John","johnsmith@mail.com","john00@mail.com"],["Mary","mary@mail.com"],["John","johnnybravo@mail.com"]]
from typing import List
from collections import defaultdict
#import collections
#* SOL | GOT HELP =(
class Solution:
    def accountsMerge(self, accounts: List[List[str]]) -> List[List[str]]:
        data = defaultdict(list)
        for acc in accounts:
            name, emails = acc[0], set(acc[1:])
            for idx in range(len(data[name]) - 1, -1, -1):
                if emails & data[name][idx]:
                    emails |= data[name].pop(idx)
            data[acc[0]].append(emails)
        return [[name] + sorted(emails) for name, emails_list in data.items() for emails in emails_list]
    
print(Solution().accountsMerge(accounts))

#* OTHER SOLS
#* . . . . . . . . . . . . . . .

#*
class Solution:
  def accountsMerge(self, accounts: List[List[str]]) -> List[List[str]]:
      graph = defaultdict(set) #collections.defaultdict
      for acc in accounts:
          for email in acc[1:]:
              graph[acc[1]].add(email)
              graph[email].add(acc[1])
      
      res = []
      visit = set()

      for acc in accounts:
          if acc[1] not in visit:
              name = acc[0]
              stack = [acc[1]]
              emails = []
              while stack:
                  node = stack.pop()
                  if node not in visit:
                      visit.add(node)
                      stack.extend(graph[node])
                      emails.append(node)

              res.append([name] + sorted(emails))
      return res
  
print(Solution().accountsMerge(accounts))

#*SET | NO GRAPH
class Solution:
    def accountsMerge(self, accounts: List[List[str]]) -> List[List[str]]:
        email_list = []
        index_to_names = {}
        index = 0
        for account in accounts:
            index_to_names[index] = account[0]
            index += 1
            emails = set()
            for i in range(1, len(account)):
                emails.add(account[i])
            email_list.append(emails)

        changed = set()
        for i in range(len(email_list)):
            for j in range(i + 1, len(email_list)):
                if len(email_list[i].intersection(email_list[j])) >= 1:
                    email_list[i] = email_list[i].union(email_list[j])
                    email_list[j] = set()
                    changed.add(i)
        
        while len(changed) != 0:
            i = changed.pop()
            for j in range(len(email_list)):
                if i == j:
                    continue
                if len(email_list[i].intersection(email_list[j])) >= 1:
                    email_list[i] = email_list[i].union(email_list[j])
                    email_list[j] = set()
                    changed.add(i)

        result = []
        for key, value in index_to_names.items():
            if len(email_list[key]) == 0:
                continue
            current = [value]
            emails = list(email_list[key])
            emails.sort()
            current.extend(emails)
            result.append(current)
        return result
    
print(Solution().accountsMerge(accounts))
        

      
#* 3 2 way dict:
class Solution:
    def accountsMerge(self, accounts: List[List[str]]) -> List[List[str]]:
        emails = {} # {"232@gmail":1}
        merged_accounts = {} # {1: ["name", "232@gmail"]}

        for i, account in enumerate(accounts):
            account_emails = [account[0]]
            for email in account[1:]:
                if email not in emails.keys(): 
                    emails[email] = i # Email -> Account Index
                    account_emails.append(email) # Account -> Email

                elif email in emails.keys() and emails[email] != i:
                    # If email was seen previously with another account,
                    # we merge the accounts
                    prev_account = merged_accounts[emails[email]]
                    merged_accounts.pop(emails[email])

                    # For all the emails in the earlier account,
                    # we update the pointer to the new account
                    for email in prev_account[1:]:
                        emails[email] = i
                    # Add the other emails seen in the previous account 
                    # to this account
                    account_emails += prev_account[1:]
            # Insert the account number and emails to the dictionary
            merged_accounts[i] = account_emails
        
        result = []
        for _key, value in merged_accounts.items():
            result.append([value[0]]+sorted(value[1:]))

        return result
    
print(Solution().accountsMerge(accounts))
    

#* Beats 99.74% Runtime | Easy python hashmap
class Solution:
    def accountsMerge(self, accounts: List[List[str]]) -> List[List[str]]:
        accounts_len = len(accounts)
        def isAccMerged():
            acc_merged = False
            account_index_map = {}
            mail_account_map = {}
            for i in range(accounts_len):
                if accounts[i] is None: continue
                if accounts[i][0] not in account_index_map:
                    account_index_map[accounts[i][0]] = i
                other_account_found = False
                for mail in accounts[i][1:]:
                    if mail in mail_account_map:
                        other_account_found = True
                        break
                if other_account_found:
                    acc_merged = True
                    account_name = mail_account_map[mail]
                    account_index = account_index_map[account_name]
                    accounts[account_index] += accounts[i][1:]
                    accounts[i] = None
                else:
                    for mail in accounts[i][1:]:
                        mail_account_map[mail] = accounts[i][0]
            return acc_merged
        while True:
            if not isAccMerged(): break
        res = []
        for account in accounts:
            if account is None: continue
            res.append([account[0]] + sorted(set(account[1:])))
        return res
    
print(Solution().accountsMerge(accounts))
