require File.dirname(__FILE__) + '/test_helper.rb'

class TestRhunspell < Test::Unit::TestCase

  def setup
    @dict = Hunspell.new("test/names.aff", "test/names.dic")
  end
  
  def test_truth
    assert @dict.check("acetech") == true
  	assert @dict.check("abcxyz")  == false
  	assert @dict.suggest("azetach") == ["acetech"]
  end
end
