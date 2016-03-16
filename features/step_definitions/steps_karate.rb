Given(/^I navigate to Google$/) do
  @browser.goto "http://www.google.co.in"
end

When(/^I enter Wado into the search field$/) do
  @browser.text_field(:name => 'q').set "Wado"
  @browser.button(:name => 'btnG').click
end

Then(/^the text DICOM should be present$/) do
  @browser.div(:id => 'rcnt').wait_until_present
  (@browser.text.include? 'DICOM').should == true
end

