# Accessing variables ina one to many/many-many relationsship
#Select the building: Building.first, or Building.find(3), etc.
#Select the office: .offices[2]
#Find the company: .company
#Select the employee: .employees[0]

class User < ApplicationRecord
  has_many :books, through: :libraries, dependent: :destroy
  has_many :libraries
end
