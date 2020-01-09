require_relative "./store.rb"
# store_1 = Store.new(1000, "new", 5)
# p store_1
# store_1.print_info
# store_1.quantity = 10
# p store_1
# store_1.print_info

store_1 = StoreFront::Store.new(price: 1000, age: "new", quantity: 5)
p store_1
store_1.print_info
store_1.quantity = 10
p store_1
store_1.print_info