def pet_shop_name(pet_shop)
  pet_shop[:name]
end

def total_cash(pet_shop)
  pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, added_or_removed_cash)
  pet_shop[:admin][:total_cash] += added_or_removed_cash
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, pet_increase)
  pet_shop[:admin][:pets_sold] += pet_increase
end

def stock_count(pet_shop)
  pet_shop[:pets].count
end

def pets_by_breed(pet_shop, animal_breed)
  animal_count = []
  for animals in pet_shop[:pets]
    if animals[:breed] == animal_breed
      animal_count.push(animals)
    end
  end
  return animal_count
end

def find_pet_by_name(pet_shop, pet_name)
  animal_cage = {}
  for animals in pet_shop[:pets]
    if animals[:name] == pet_name
      animal_cage[:name] = pet_name
    end
  end
  return animal_cage unless animal_cage.empty?
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
  return pet_shop[:pets].length
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] < new_pet[:price]
    return false
  else
    return true
  end
end

#2. Check if we can find the pet
#3. Check can customer afford pet
#4. Move pet hash to customer pets
#5. Increase admin sales / pets sold
#6. Increase shop cash
def sell_pet_to_customer(pet_shop, pet, customer)
  #1. Search pet shop for pet name
  if find_pet_by_name && customer_can_afford_pet == true
    add_pet_to_customer
    increase_pets_sold
    add_or_remove_cash
  end
end
