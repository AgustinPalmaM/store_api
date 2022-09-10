require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validaciones del modelo user' do
    subject { build(:user) } 
    it 'validar si el email esta presente en el usuario' do
      should validate_presence_of(:email) 
    end
    it 'validar si age esta presente en el usuario' do
      should validate_presence_of(:age) 
    end
    it 'validar si el password esta presente en el usuario' do
      should validate_presence_of(:password_digest) 
    end
    it 'validar si el type esta presente en el usuario' do
      should validate_presence_of(:type) 
    end
    it 'validar si el email es unico' do
      should validate_uniqueness_of(:email)
    end
    it 'validar si el correo ingresado no es erroneo' do
      should_not allow_value("test").for("email")
    end
    it 'validar si age es un numero entero' do
      should validate_numericality_of(:age).only_integer
    end
    it 'validar si age es mayor o igual a 18' do
      should validate_numericality_of(:age).is_greater_than_or_equal_to(18)
    end
    it 'validar si age es menor o igual a 100' do
      should validate_numericality_of(:age).is_less_than_or_equal_to(100)
    end
  end

end
