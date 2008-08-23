require File.expand_path("#{File.dirname(__FILE__)}/../../../test_helper")

class Piston::Git::TestGitWorkingCopyExistence < PistonTestCase
  def setup
    super
    @wcdir = Pathname.new("tmp/wc")
    @wc = Piston::Git::WorkingCopy.new(@wcdir)
  end


  def test_exist_false_when_no_dir
    deny @wc.exist?
  end

  def test_exist_true_when_dir_present
    @wcdir.mkdir
    assert @wc.exist?
  end
end
