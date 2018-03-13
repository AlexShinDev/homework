
class Investor
  attr_accessor
  def initialize(first_name, last_name, id)
    @first_name = first_name
    @last_name = last_name
    @id = id
  end
end

investor_bob = Investor.new('Bob', 'Jones', 8675309)
investor_nancy = Investor.new('Nancy', 'Khan', 161803)
investor_zaphod = Investor.new('Zaphod', 'Beeblebrox', 42)
investor_peter = Investor.new('Peter', 'Piper', 60221023)

class Account
  attr_accessor
  def initialize(name, id)
    @name = name
    @id = id
  end
end

account1 = Account.new('Global Opportunity', 2525)
account2 = Account.new('Big Mountains', 19551105)
account3 = Account.new('Large Trees', 314159)
account4 = Account.new('Strong Like Bear', 271828)

class Document
  attr_accessor :name, :size, :id
  def initialize(name, size, id)
    @name = name
    @size = size
    @id = id
  end
end

document1 = Document.new('meeting_notes_jan.pdf', 4815162342, 1984)
document2 = Document.new('secret_meeting_notes_jan.pdf', 4815162342, 1492)
document3 = Document.new('super_secret_meeting_notes_jan.pdf', 5971024, 1929)
document4 = Document.new('actual_notes.txt', 8088, 1215)


class Relation
  
end
# :Documents to Accounts Relations:
# Document ID, Account ID
# 1984, 19551105
# 1929, 271828
# 1984, 2525
# 1492, 314159
# 1984, 314159
# :Investors to Documents Relations:
# Investor ID, Document ID
# 8675309, 1984
# 42, 1215
# 60221023, 1929
# 60221023, 1984
# :Investors to Accounts Relations:
# Investor ID, Account ID
# 42, 2525
# 42, 19551105
# 42, 314159
# 42, 271828
# 8675309, 19551105
# 8675309, 314159
