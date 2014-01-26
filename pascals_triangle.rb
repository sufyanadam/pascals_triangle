def generate_rows(n)
  rows = [[1]]


  (n - 1).times do |i|
    rows << get_next_row(rows[i])
  end if n > 1

  print_triangle rows
end

def get_next_row(previous_row)
  next_row = []
  next_row_size = previous_row.length
  next_row[0] = 1
  next_row[next_row_size] = 1
  (1..next_row_size - 1).each do |i|
    next_row[i] = previous_row[i - 1] + previous_row[i]
  end

  next_row
end

def print_triangle(rows)
  last_row = rows.last
  last_row_size = last_row.size
  rows.each_with_index do |row, index|
    if index < 5
      puts (' ' * (last_row_size - index) ) +  row.join(("\u2008".encode('UTF-8') * 3)) + (' ' * (last_row_size - index))
    else
      puts (' ' * (last_row_size - index) ) +  row.join(' ') + (' ' * (last_row_size - index))
    end
  end
end

generate_rows(ARGV[0].to_i)
