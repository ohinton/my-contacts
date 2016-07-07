class Contact
  @@contacts = []
  attr_reader(:first_name, :last_name, :company, :job_title)

  define_method(:intialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @company = attributes.fetch(:company)
    @job_title = attributes.fetch(:job_title)
    @addresses = []
    @phone_numbers = []
    @emails = []
  end

  define_method(:save) do
  @@contacts.push(self)
  end

  define_singleton_method(:clear) do
  @@contacts = []
  end

end
