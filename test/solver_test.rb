require 'minitest/autorun'
require 'minitest/pride'
require '../lib/solver'

class PuzzleSolverTest < Minitest::Test

  def test_it_exists

    solver = Solver.new
    assert solver   
  end

  def test_can_find_value_of_one_missing_number

    solver = Solver.new
    puzzle = ["8","2","6","5","9","4","3","","7"]
    assert_equal "1", solver.solve(puzzle)   
  end

end






# filename = ARGV[0]
# puzzle = File.read(filename)
# solver = Solver.new
# solution = solver.solve(puzzle)
# puts solution


