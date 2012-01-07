#!/usr/bin/env ruby
# Excel::Writer::TestWorksheet -- Spreadheet -- 21.11.2007 -- hwyss@ywesee.com

require 'test/unit'
require 'spreadsheet/excel/writer/worksheet'

module Spreadsheet
  module Excel
    module Writer
class TestWorksheet < Test::Unit::TestCase
  def test_need_number
    sheet = Worksheet.new nil, nil
    assert_equal false, sheet.need_number?(10)
    assert_equal false, sheet.need_number?(114.55)
    assert_equal false, sheet.need_number?(0.1)
    assert_equal false, sheet.need_number?(0.01)
    assert_equal false, sheet.need_number?(0 / 0.0) # NaN
    assert_equal true, sheet.need_number?(0.001)
    assert_equal true, sheet.need_number?(10000000.0)
  end
  
  def test_write_merged_cells
  	sheet = Worksheet.new nil, nil
  	#check if the merged_cells method is called    
    #check merged_cells method working
  end
  
  def test_should_not_merge_if_no_merged_cells
  	sheet = Worksheet.new nil, nil  
		#sheet.write_merged_cells
		assert_equal '', sheet.data  			
  end
  
end
    end
  end
end
