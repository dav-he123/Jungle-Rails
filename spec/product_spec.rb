require "rails_helper"

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it 'product is valid' do
      category = Category.new(name: "Microsoft Products")
      product = Product.new(name: "Microsoft Mouse", price: 40.00, quantity: 1, category: category)
      expect(product).to be_valid
    end
    it 'is not valid without name' do
      category = Category.new(name: "Microsoft Products")
      product = Product.new(name: nil, price: 40.00, quantity: 1, category: category)
      expect(product).not_to be_valid
    end

    it 'is valid with price' do
      category = Category.new(name: "Microsoft Products")
      product = Product.new(name: "Microsoft Mouse", price: 40.00, quantity: 1, category: category)
      expect(product).to be_valid
    end

    it 'is not valid without quantity' do
      category = Category.new(name: "Microsoft Products")
      product = Product.new(name: "Microsoft Mouse", price: 40.00, quantity: nil, category: category)
      expect(product).not_to be_valid
    end


    it 'is not valid without category' do
      category = Category.new(name: "Microsoft Products")
      product = Product.new(name: "Microsoft Mouse", price: 40.00, quantity: 1, category: nil)
      expect(product).not_to be_valid
    end


  end
end