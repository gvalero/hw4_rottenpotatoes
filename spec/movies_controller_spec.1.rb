require 'spec_helper'

describe MoviesController do
  describe 'edit page for a movie' do
    it 'should call the model to get the movie with params id'
    it 'should select the edit page for a movie template for rendering'
    it 'should make that movie available to the view'
  end 
  describe 'Update Movie Info' do
    it 'should call the method to get the Movie to update' do
      post :update, {:id => 1}
    end
    it 'should update the paramas obtained'
    it 'should save a message in the flash variable'
    it 'should redirect to the movie updated'
  end
  
  describe 'details page for a movie' do
    it 'should call the model to get the movie with params id'
    it 'should select the details page for a movie template for rendering'
    it 'should make that movie avialable to the view'
  end
  
  describe 'Find Movies With Same Director' do
    it 'should call the model to get the movie with params id'
    it 'should call the model to find other movies with the same director'
    it 'should select the Find Movies With Same Director template for rendering'
    it 'should make the that movie available to the view'
    it 'should make the other movies available to the view'
    #Aqui falta el sad path que es que la película no tenga director
  end
end
