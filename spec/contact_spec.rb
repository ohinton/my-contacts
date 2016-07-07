require('rspec')
require('contact')

describe(Contact) do
  before() do
    Contact.clear()
  end

  describe(".clear") do
    it("empties out all of the saved contacts") do
      Contact.new(:first_name => "Olivia").save()
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('#first_name') do
    it('returns the first name of the contact') do
      test_contact = Contact.new(:first_name => "Olivia")
      expect(test_contact.name()).to(eq('Olivia'))
    end
  end

end
