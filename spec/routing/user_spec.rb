require 'rails_helper'

describe 'Rutas resource User' do
  it 'registro de usuarios' do
    expect(post: 'v1/users').to route_to(
      format: 'json', 
      controller: 'v1/users', 
      action: 'create'
    )  
  end
end