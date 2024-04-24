#* 1030. Matrix Cells in Distance Order
rows = 1; cols = 2; r_center = 0; c_center = 0
# @param {Integer} rows
# @param {Integer} cols
# @param {Integer} r_center
# @param {Integer} c_center
# @return {Integer[][]}
#*
def all_cells_dist_order(rows, cols, r_center, c_center)
    result = []
    (0...rows).each do |row|
        (0...cols).each do |cell|
            result.push([[row, cell], (row - r_center).abs + (cell - c_center).abs])
        end
    end
    result.sort_by(&:last).map(&:first)
end
p all_cells_dist_order(rows, cols, r_center, c_center)

#* SOMEONES CRAZY ONELINER | DIDINT EVEN KNOW ARRAY COULD CALL BLOCK { |WOW| LOL }
def all_cells_dist_order(rows, cols, r_center, c_center)
    Array.new(rows * cols) { |i| [i / cols, i % cols] }.sort_by { |r, c| (r - r_center).abs + (c - c_center).abs }
end
p all_cells_dist_order(rows, cols, r_center, c_center)