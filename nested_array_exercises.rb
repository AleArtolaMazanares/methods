def blank_seating_chart(number_of_rows, seats_per_row)
  mutable = Array.new(number_of_rows) {Array.new(seats_per_row)}
p mutable
end
blank_seating_chart(2, 3)



def add_seat_to_row(chart, row_index, seat_to_add)
  chart[row_index].push(seat_to_add)
  p chart
end

lista = [[nil, 'Bob', 'Joe'], [nil, nil, 'Bill']]
add_seat_to_row(lista,1,"jack")



def add_another_row(chart, row_to_add)
  chart.push(row_to_add)
  p chart
end

lista2 = ['Bo', nil, 'Kim']
add_another_row(lista, lista2)



def delete_seat_from_row(chart, index, index2 )
   chart[index].delete_at(index2)
   p chart
end
 listDelete =[[nil, 'Bob', 'Joe'], [nil, nil, 'Bill']]
 delete_seat_from_row(listDelete, 0, 1)

def delete_row_from_chart(chart, index)
   chart.delete_at(index)
 chart
end

lista4 = [[nil, 'Bob'], ['Joe', nil], [nil, 'Bill']]
delete_row_from_chart(lista4, 1)

def count_empty_seats(chart)
  count  = 0
  chart.flatten.collect {|seat| count += 1 if seat.nil?}
   count
end

arr = [[nil, 'Bob', 'Joe'], [nil, nil, 'Bill']]
count_empty_seats(arr)


def find_favorite(array_of_hash_objects)
   array_of_hash_objects.each do | value|
    return value if value[:is_my_favorite?] == true
  end
  nil
end

lista3 = [
  { name: 'JavaScript', is_my_favorite?: false },
  { name: 'Ruby', is_my_favorite?: true },
  { name: 'HTML', is_my_favorite?: false }
]
find_favorite(lista3)

