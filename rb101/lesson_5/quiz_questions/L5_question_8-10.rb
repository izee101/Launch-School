=begin #### Problem Description ####
Your team is working on some reporting functionality for the Sales Department. Your brief is to produce code that lets the Sales Department report on the value of orders per customer. Each order is represented by a hash within an array, but there may be more than one order per customer. The Sales Department wants to report two things:

The total value of orders for each customer
The total value of fulfilled orders for each customer
This is an example of the provided data:
=end

order_data = [
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 351, order_date: '12/04/16', order_fulfilled: true, order_value: 135.99},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 383, order_date: '12/04/16', order_fulfilled: true, order_value: 289.49},
  {customer_id: 12, customer_name: 'Emma Lopez', order_id: 392, order_date: '01/10/17', order_fulfilled: false, order_value: 58.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 241, order_date: '11/10/16', order_fulfilled: true, order_value: 120.00},
  {customer_id: 32, customer_name: 'Michael Richards', order_id: 395, order_date: '01/10/17', order_fulfilled: false, order_value: 85.65},
  # rest of data...
]

=begin #### Approach ####
 Your team decides to approach the problem in two stages:
  -Convert the initial data structure to a more usable format
  -Extract the required information from the restructured data
=end

customer_orders = {}

order_data.each do |row|
  if customer_orders.has_key?(row[:customer_id])
    customer_orders[row[:customer_id]][:orders] << {
      order_fulfilled: row[:order_fulfilled],
      order_value: row[:order_value]
    }
  else
    customer_orders[row[:customer_id]] = {
      customer_id: row[:customer_id],
      customer_name: row[:customer_name],
      orders: [
        {
          order_fulfilled: row[:order_fulfilled],
          order_value: row[:order_value]
        }
      ]
    }
  end
end

customer_orders = customer_orders.values

=begin #### OUTPUT ####
[
  {
    :customer_id=>12,
    :customer_name=>"Emma Lopez",
    :orders=>[
      {:order_fulfilled=>true, :order_value=>135.99},
      {:order_fulfilled=>true, :order_value=>289.49},
      {:order_fulfilled=>false, :order_value=>58.0}
      ]
  },
  {
    :customer_id=>32,
    :customer_name=>"Michael Richards",
    :orders=>[
      {:order_fulfilled=>true, :order_value=>120.0},
      {:order_fulfilled=>false, :order_value=>85.65}
      ]
  }
]
=end

# For the second part of the solution, extracting the data, the format that is required in each case is as follows:


all_orders = []

customer_orders.each do |customer_data|
  cust_arr = [
    [:customer_id, customer_data[:customer_id]],
    [:customer_name, customer_data[:customer_name]],
    [:total_order_value]
  ]

  order_value = 0
  customer_data[:orders].each do |order|
    order_value += order[:order_value]
  end

  cust_arr[2] << order_value

  all_orders << cust_arr
end


=begin #### OUTPUT ####
all_orders =[
  {customer_id: 12, customer_name: 'Emma Lopez', total_order_value: 483.48},
  {customer_id: 32, customer_name: 'Michael Richards', total_order_value: 205.65},
  # rest of data
]
=end


=begin ### Alternate Solutions for all_orders ###
all_orders = customer_orders.map do |customer|
  {
    customer_id: customer[:customer_id],
    customer_name: customer[:customer_name]
  }
end

customer_orders.each_with_index do |data, index|
  order_value = data[:orders].reduce(0) do |total, order|
    total + order[:order_value]
  end

  all_orders[index][:total_order_value] = order_value
end


                  ## OR ##

all_orders = customer_orders.map do |customer_data|
  order_value = customer_data[:orders].inject(0) do |total, order_data|
    total + order_data[:order_value]
  end

  {
    customer_id: customer_data[:customer_id],
    customer_name: customer_data[:customer_name],
    total_order_value: order_value
  }
end
=end

fulfilled_orders = customer_orders.map do |customer|
  {
    customer_id: customer[:customer_id],
    customer_name: customer[:customer_name]
  }
end

customer_orders.each_with_index do |data, index|
  order_value = data[:orders].reduce(0) do |total, order|
    # total + order[:order_value] if order[:order_fulfilled]         #Previous Code
      if order[:order_fulfilled]
        total + order[:order_value]
      else
        total
      end
  end

  fulfilled_orders[index][:order_value] = order_value
end


=begin #### OUTPUT ####
fulfilled_orders =[
  {customer_id: 12, customer_name: 'Emma Lopez', order_value: 425.48},
  {customer_id: 32, customer_name: 'Michael Richards', order_value: 120.00},
  # rest of data
]

If the conditional is not executed then the block will return nil for that iteration;
based on the sample data this means that rather than the total values of the fulfilled orders,
the order_value will be nil. If there was an fulfilled order after an unfulfilled order then
an exception would be raised.

You could fix this by adding an else clause to return total from the block for unfulfilled orders.
=end

puts all_orders
puts fulfilled_orders

=begin #### FINAL OUTPUT ####

#total of all_orders by customer
  customer_id
  12
  customer_name
  Emma Lopez
  total_order_value
  483.48

  customer_id
  32
  customer_name
  Michael Richards
  total_order_value
  205.65

#total of fulfilled_orders by customer
  {:customer_id=>12, :customer_name=>"Emma Lopez", :order_value=>425.48}
  {:customer_id=>32, :customer_name=>"Michael Richards", :order_value=>120.0}
=end