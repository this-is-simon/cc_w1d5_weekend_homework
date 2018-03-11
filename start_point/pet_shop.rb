def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, money_difference)
  shop[:admin][:total_cash] += money_difference
end

def pets_sold(number)
  return number[:admin][:pets_sold]
end

def increase_pets_sold(original_number,sales)
 original_number[:admin][:pets_sold] += sales
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed_name)
  number_of_dogs_for_breed = []
  for singular_pet in pet_shop[:pets]
    if singular_pet[:breed] == breed_name
      number_of_dogs_for_breed.push(singular_pet[:name])
    end
  end
  return number_of_dogs_for_breed
end

def find_pet_by_name(pet_shop, pet_name)
  pet_cage = Hash.new
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      pet_cage[:name] = pet_name
    end
  end
  return pet_cage unless pet_cage.empty?
end

# def add_things_together(x, y)
#   return x + y
# end
#
# add_things_together(3, 7)
