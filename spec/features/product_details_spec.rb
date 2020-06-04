require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true do
  # pending "add some scenarios (or delete) #{__FILE__}"

  # SETUP
 before :each do
  @category = Category.create! name: 'Apparel'

  10.times do |n|
    @category.products.create!(
      name:  Faker::Hipster.sentence(3),
      description: Faker::Hipster.paragraph(4),
      image: open_asset('apparel1.jpg'),
      quantity: 10,
      price: 64.99
    )
    end
  end

   scenario "They see the product detail page" do

    # ACT
    path = Product.all.sample
    visit root_path

    # DEBUG
    expect(page).to have_text(path.name)
    # save_screenshot

    # VERIFY

    puts page.html
  end

end
