require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

# Commonly used webrat steps
# http://github.com/brynary/webrat

Допустим /^я на (.+)$/ do |page_name|
  visit path_to(page_name)
end

Если /^я посещаю (.+)$/ do |page_name|
  visit path_to(page_name)
end

Если /^я нажимаю "([^\"]*)"$/ do |button|
  click_button(button)
end

Если /^я следую по ссылке "([^\"]*)"$/ do |link|
  click_link(link)
end

Если /^я заполняю "([^\"]*)" значением "([^\"]*)"$/ do |field, value|
  fill_in(field, :with => value) 
end

Если /^я выбираю "([^\"]*)" в качестве "([^\"]*)"$/ do |value, field|
  select(value, :from => field) 
end

# Use this step in conjunction with Rail's datetime_select helper. For example:
# Если I select "December 25, 2008 10:00" as the date and time 
Если /^я выбираю "([^\"]*)" как дату и время$/ do |time|
  select_datetime(time)
end

# Use this step when using multiple datetime_select helpers on a page or 
# you want to specify which datetime to select. Допустим the following view:
#   <%= f.label :preferred %><br />
#   <%= f.datetime_select :preferred %>
#   <%= f.label :alternative %><br />
#   <%= f.datetime_select :alternative %>
# The following steps would fill out the form:
# Если I select "November 23, 2004 11:20" as the "Preferred" data and time
# And I select "November 25, 2004 10:30" as the "Alternative" data and time
Если /^я выбираю "([^\"]*)" как "([^\"]*)" дату и время$/ do |datetime, datetime_label|
  select_datetime(datetime, :from => datetime_label)
end

# Use this step in conjunction with Rail's time_select helper. For example:
# Если I select "2:20PM" as the time
# Note: Rail's default time helper provides 24-hour time-- not 12 hour time. Webrat
# will convert the 2:20PM to 14:20 and then select it. 
Если /^я выбираю "([^\"]*)" как время$/ do |time|
  select_time(time)
end

# Use this step when using multiple time_select helpers on a page or you want to
# specify the name of the time on the form.  For example:
# Если I select "7:30AM" as the "Gym" time
Если /^я выбираю "([^\"]*)" как время для "([^\"]*)"$/ do |time, time_label|
  select_time(time, :from => time_label)
end

# Use this step in conjunction with Rail's date_select helper.  For example:
# Если I select "February 20, 1981" as the date
Если /^я выбираю "([^\"]*)" как дату$/ do |date|
  select_date(date)
end

# Use this step when using multiple date_select helpers on one page or
# you want to specify the name of the date on the form. For example:
# Если I select "April 26, 1982" as the "Date of Birth" date
#Если /^I select "([^\"]*)" as the "([^\"]*)" date$/ do |date, date_label|
#  select_date(date, :from => date_label)
#end

Если /^я отмечаю "([^\"]*)"$/ do |field|
  check(field) 
end

Если /^снимаю отметку "([^\"]*)"$/ do |field|
  uncheck(field) 
end

Если /^я выбираю "([^\"]*)"$/ do |field|
  choose(field)
end

#Если /^I attach the file at "([^\"]*)" to "([^\"]*)"$/ do |path, field|
#  attach_file(field, path)
#end

То /^я должен увидеть "([^\"]*)"$/ do |text|
  response.should contain(text)
end

То /^я не должен увидеть "([^\"]*)"$/ do |text|
  response.should_not contain(text)
end

То /^галочка "([^\"]*)" должна быть отмечена$/ do |label|
  field_labeled(label).should be_checked
end