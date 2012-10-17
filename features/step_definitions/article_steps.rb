

Given /^I am logged in as a non admin$/ do
  visit '/accounts/login'
  fill_in 'user_login', :with => 'bob'
  fill_in 'user_password', :with => '12345'
  click_button 'Login'
  if page.respond_to? :should
    page.should have_content('Login successful')
  else
    assert page.has_content?('Login successful')
  end
end


