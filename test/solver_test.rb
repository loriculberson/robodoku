require 'minitest/autorun'
require 'minitest/pride'
require '../lib/solver'

class PuzzleSolverTest < Minitest::Test

  def test_it_exists

    puzzle = ["8","2","6","5","9","4","3","","7"]
    solver = Solver.new(puzzle)
    assert solver   
  end

  def test_can_find_value_of_one_missing_number

    puzzle = ["8","2","6","5","9","4","3","","7"]
    solver = Solver.new(puzzle)
   
    assert_equal ["1"], solver.solve   
  end

  def test_it_can_missing_value_of_two_squares
   
    puzzle = ["8","","6","5","9","4","3","","7"]
    solver = Solver.new(puzzle)
    assert_equal ["1","2"], solver.solve  
  end

  def test_it_can_id_index_of_one_missing_square
   
    puzzle = ["8","2","6","5","9","4","3","","7"]
    solver = Solver.new(puzzle)
    assert_equal [7], solver.missing_index_finder 
  end

  def test_it_can_id_index_of_two_missing_squares
   
    puzzle = ["8","","6","5","9","4","3","","7"]
    solver = Solver.new(puzzle)
    assert_equal [1,7], solver.missing_index_finder 
  end

  def test_it_can_find_missing_numbers_in_two_arrays
    puzzle =  ["8","","6","5","9","4","3","","7"].join
["7","1","","6","3","","9","4","2"]
    solver = Solver.new(puzzle)
    assert_equal [1,7][2,5], solver.solve.missing_index_finder 
  end

  # def test_case_name
    
  # end



end






# filename = ARGV[0]
# puzzle = File.read(filename)
# solver = Solver.new
# solution = solver.solve
# puts solution


