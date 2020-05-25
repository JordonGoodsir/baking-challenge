def cakes(recipe, available)  
    
amounts = []
#checking if both are same
    recipe.keys.each{|k|  
        if available.has_key?(k) and recipe.length == available.length   
        else 
        puts "extra ingreedient detected" 
            exit
        end  
    }  

    recipe.each {|k,v|   
    if  available[k] >=  recipe[k]
    amounts.push(available[k]  / recipe[k]) 
    else  
        puts "insufficent ingredient: #{k} detected"  
        exit
    end
    }


puts "of your recipe you can make #{amounts.sort.first} batch/es!"

end


  
  cakes({potatos: 2, milk: 200}, { potatos: 6, milk: 400})