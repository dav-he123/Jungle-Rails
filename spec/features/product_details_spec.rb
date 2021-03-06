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
    visit root_path

    path = Product.all[9]
    p path.name

    # DEBUG
    # expect(page).to have_text(path.name)
    page.find(:link, "#{path.name}").click

    expect(page).to have_selector 'section.products-show'


    # VERIFY
    save_screenshot
  end

end
