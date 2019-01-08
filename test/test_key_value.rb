require 'test/unit'
require_relative '../key-value'

class KeyValueTest < Test::Unit::TestCase
  
  def setup
    @key_value_tester = KeyValue.new
  end

  def test_must_exit
    assert_equal "Bye!", @key_value_tester.exit
  end

  def test_must_store_value
    assert_equal "ok", @key_value_tester.store("favorite_color", "purple")
  end

  def test_must_fetch_value
    @key_value_tester.store("frog_color", "green")
    assert_equal "green", @key_value_tester.fetch("frog_color")
  end

  def test_must_return_on_unknown_command
    assert_equal "Unknown command. Known commands are: put, fetch, exit", @key_value_tester.unknown
  end

  def test_fetch_fails_on_bad_retrieve
    assert_equal "value not found", @key_value_tester.fetch("sun_color")
  end

end