require File.dirname(__FILE__) + '/test_helper.rb'

class DojofyTest < Test::Unit::TestCase
  def test_dojofy
    path = File.join(File.dirname(__FILE__),'root')
    DojoSrc.dojofy(path,'1.4.1')
  end
end
