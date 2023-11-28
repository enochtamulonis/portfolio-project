class Contact < ApplicationRecord
  has_rich_text :body

  def full_name
    [first_name, last_name].compact.join(" ")
  end
end
