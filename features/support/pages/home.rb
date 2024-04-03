

class HomePage
   include Capybara::DSL

    def open
        visit 'https://starbugs-qa.vercel.app/'
    end

    def coffe_list
        return all('.coffee-item')
    end

    def buy(coffe_name)
        product = find('.coffee-item', text: coffe_name)
        product.find('.buy-coffee').click
    end 

end