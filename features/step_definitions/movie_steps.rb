# Add a declarative step here for populating the DB with movies.
Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create(
      :title => movie['title'], 
      :release_date => movie['release_date'],
      :rating => movie['rating'],
      :director => movie['director'])
  end
  if !Movie.find(:all).any? 
    flunk "Unimplemented"
  end
end

Given /I (un)?check the followings ratings: (.*)/ do |uncheck, rating_list|
  rating_list.split(%r{,\s*}).each do |rating|
    if uncheck 
      step "I uncheck \"#{rating}\""
    else 
      step "I check \"#{rating}\""
    end
  end
end

Then /^the director of "(.*)" should be "(.*)"$/ do |movie_title, movie_director|
  movie = Movie.find_by_title(movie_title)
  movie.director == movie_director
end

Then /^I should see all of the movies$/ do
  page.all('table#movies tbody tr').count.should == Movie.find(:all).count
end
