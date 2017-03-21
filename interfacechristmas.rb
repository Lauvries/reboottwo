# Pseudo-code:
require "open-uri"
require "nokogiri"
# 1. Welcome
puts "Welcome dear customer"
# 3. Get user action
gift_list = {}
action = ""

while action != "exit"
  puts "What do you want to do [List | Add | Delete | Mark | Exit]"
  action = gets.chomp.downcase

  case action
  when "list"
    puts ""
    puts "you currently have #{gift_list.length} items in your list"
    gift_list.each do |item, status|
      puts "#{status ? "[X]" : "[ ]"} - #{item}"
    end

  when "add"
    puts "What item would you like to add to your gift list?"
    item = gets.chomp.capitalize
    gift_list[item] = false
    puts "#{item} has been added to your list"
  when "delete"
    puts "What would you like to delete?"
    delete = gets.chomp.capitalize
    gift_list.delete("#{delete}")
    puts "Your #{delete} has been deleted from the list"
  when "mark"
    puts "What item would you like to mark"
    mark = gets.chomp.capitalize
    gift_list[mark] = !gift_list[mark]
  else
    puts "Incorrect action" unless action == "exit"
  end
end


# 4. Perform the right action
