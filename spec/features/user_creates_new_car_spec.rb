require 'spec_helper'

feature 'user creates a new car' do
  scenario 'user submits valid information' do
    color = FactoryGirl.create(:color)
    visit new_car_path
    select(1999, from: 'Year')
    fill_in 'Mileage', with: 90
    fill_in 'Description', with: 'Excellent Condition'
    select(color.name, from: 'Color')
    click_on 'Create Car'
    expect(page).to have_content 'Car created successfully'
    expect(current_path).to eq(new_car_path)
  end

  scenario 'user submits invalid information' do
    color = FactoryGirl.create(:color)
    visit new_car_path
    click_on 'Create Car'
    within(".mileage") do
      have_content "can't be blank"
    end
    within(".color") do
      have_content "can't be blank"
    end
    within(".year") do
      have_content "can't be blank"
    end
  end

end
