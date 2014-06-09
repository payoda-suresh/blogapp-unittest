require 'test_helper'

class ZombieTest < ActiveSupport::TestCase

	setup	do
		@z = zombies(:suresh)
	end	

  test "the truth" do
    assert true
  end

  test "test invalid without a name" do
  	z = Zombie.new
  	assert !z.valid?,"Name is not being validated"
  end

  test "valid with all attributes" do 
  	assert @z.valid?,"Zombie was not valid"
  end	

  test "invalid name gives error message" do
  	@z.name = nil
  	assert_presence(@z,:name)
  end

  test "invalid garveyard gives error message" do
  	@z.graveyard = nil
  	assert_presence(@z,:graveyard)
  end

  test "can generate avatar URL" do 
  	assert_equal "http://zombitar.com/#{@z.id}.jpg",@z.avatar_url
  end

  test "should respond to tweets" do
  	assert_respond_to @z,:tweets
  end	

  test "should contain only tweets that belong to zombie" do
  	assert @z.tweets.all? {|t| t.zombie == @z}
  end

  test "decapitate should set status to dead again" do 
  	@z.decapitate
  	assert_equal "dead again", @z.status
  end	

end
