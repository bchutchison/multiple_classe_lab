require('minitest/autorun')
require('minitest/rg')
require_relative('../person.rb')


class PersonTest < MiniTest::Test

  def setup()

    @person = Person.new("Ben", 33)

  end

  def test_person_name()
    assert_equal("Ben", @person.name())
  end

  def test_person_age()
    assert_equal(33, @person.age())
  end

  






























end
