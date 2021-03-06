require 'name_of_person/person_name'

module NameOfPerson
  module AssignableName
    # Assigns name_first and name_last attributes as extracted from a supplied full name.
    def name=(name)
      full_name = NameOfPerson::PersonName.full(name)
      self.name_first, self.name_last = full_name&.first, full_name&.last
    end

    # Returns a PersonName object created from the name_first and name_last attributes.
    def name
      NameOfPerson::PersonName.new(name_first, name_last) if name_first.present?
    end
  end
end
