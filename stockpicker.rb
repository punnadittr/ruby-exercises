def stock_picker(stock)

    buy_date, sell_date, 
    buy_price, sell_price, 
    result, lowest_result = 0, 0, 0, 0, 0, 0

    output = []

    stock.each_with_index do |price, main_index|
        stock.each_index do |index|
            unless ((stock[(main_index+1)+index]).nil?)
                result = price - (stock[(main_index+1)+index])
                if result < lowest_result 
                    lowest_result = result
                    buy_date = main_index
                    sell_date = (main_index+1)+index
                    buy_price = price
                    sell_price = (stock[(main_index+1)+index])
                end
            end
        end
    end

    output << buy_date
    output << sell_date
    print output 
    puts "\nfor a profit of $#{sell_price} - $#{buy_price} = $#{sell_price - buy_price}\n"
end