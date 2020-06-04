require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature, js: true do
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

   scenario "Test for the Cart being updated," do

    # ACT
    # path = Cart.all.sample
    visit root_path

    # DEBUG/VERIFY
    # expect(page).to have_text(path.name)
    page.find(:button, "Add", match: :first).click


    expect(page).to have_text "My Cart (1)"
    save_screenshot

  end
end
