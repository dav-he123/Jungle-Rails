require "rails_helper"

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it 'product is valid' do
      category = Category.new(name: "Microsoft Products")
      product = Product.new(name: "Microsoft Mouse", price: 35.00, quantity: 1, category: category)
      expect(product).to be_valid
    end
    it 'is not valid without name' do
      category = Category.new(name: "Microsoft Products")
      product = Product.new(name: nil, price: 35.00, quantity: 1, category: category)
      expect(product).not_to be_valid
    end

    it 'is not valid without price' do
      category = Category.new(name: "Microsoft Products")
      product = Product.new(name: "Microsoft Mouse", price: nil, quantity: 1, category: category)
      expect(product).not_to be_valid
    end
  end
end