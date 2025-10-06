# Horse Tinder Sample Data
# This file creates sample horse profiles for testing and demonstration

puts "Creating sample horses..."

# Clear existing horses
Horse.destroy_all

# Sample horse data
horses_data = [
  {
    name: "Thunder",
    age: 8,
    sex: true, # Stallion
    breed: "Arabian",
    color: "Bay",
    location: "Austin, Texas",
    personality: "Energetic, Spirited, Loyal, Playful",
    bio: "Thunder is a magnificent Arabian stallion with a heart of gold. He loves long trail rides and has a playful personality that will keep you entertained. He's looking for a mare who shares his love for adventure and can keep up with his energetic spirit."
  },
  {
    name: "Luna",
    age: 6,
    sex: false, # Mare
    breed: "Thoroughbred",
    color: "Chestnut",
    location: "Denver, Colorado",
    personality: "Gentle, Intelligent, Calm, Affectionate",
    bio: "Luna is a gentle soul who loves quiet moments and gentle rides. She's incredibly intelligent and responds well to kind treatment. She's looking for a calm, patient stallion who appreciates the finer things in life and enjoys peaceful trail rides."
  },
  {
    name: "Spirit",
    age: 12,
    sex: true, # Stallion
    breed: "Quarter Horse",
    color: "Palomino",
    location: "Phoenix, Arizona",
    personality: "Confident, Strong, Reliable, Protective",
    bio: "Spirit is a seasoned Quarter Horse with years of experience. He's incredibly reliable and has a protective nature that makes him perfect for families. He's looking for a mare who values stability and wants a partner for life."
  },
  {
    name: "Bella",
    age: 4,
    sex: false, # Mare
    breed: "Friesian",
    color: "Black",
    location: "Portland, Oregon",
    personality: "Elegant, Graceful, Curious, Social",
    bio: "Bella is a stunning Friesian mare with an elegant presence. She's naturally curious and loves meeting new horses. She's looking for a stallion who appreciates beauty and grace, and who enjoys socializing with other horses."
  },
  {
    name: "Ranger",
    age: 10,
    sex: true, # Stallion
    breed: "Mustang",
    color: "Dun",
    location: "Boulder, Colorado",
    personality: "Wild, Free-spirited, Independent, Adventurous",
    bio: "Ranger is a true wild spirit who loves the open range. He's independent but loyal to those who earn his trust. He's looking for a mare who shares his love for freedom and adventure, and who isn't afraid to explore new trails."
  },
  {
    name: "Rose",
    age: 7,
    sex: false, # Mare
    breed: "Paint",
    color: "Tobiano",
    location: "Nashville, Tennessee",
    personality: "Artistic, Creative, Expressive, Fun-loving",
    bio: "Rose is a beautiful Paint mare with a creative spirit. She loves to express herself and has a fun-loving personality that brings joy to everyone around her. She's looking for a stallion who appreciates her artistic nature and loves to have fun."
  },
  {
    name: "Apollo",
    age: 9,
    sex: true, # Stallion
    breed: "Andalusian",
    color: "Gray",
    location: "San Diego, California",
    personality: "Noble, Proud, Athletic, Disciplined",
    bio: "Apollo is a noble Andalusian stallion with a proud bearing. He's incredibly athletic and disciplined, perfect for dressage or show jumping. He's looking for a mare who shares his passion for excellence and isn't afraid of a challenge."
  },
  {
    name: "Willow",
    age: 5,
    sex: false, # Mare
    breed: "Appaloosa",
    color: "Leopard",
    location: "Seattle, Washington",
    personality: "Unique, Special, Caring, Nurturing",
    bio: "Willow is a unique Appaloosa mare with a special spotted coat. She has a caring and nurturing personality that makes her perfect for families with children. She's looking for a stallion who appreciates her uniqueness and shares her caring nature."
  }
]

# Create horses
horses_data.each do |horse_attrs|
  Horse.create!(horse_attrs)
  puts "Created horse: #{horse_attrs[:name]}"
end

puts "Created #{Horse.count} horses successfully!"
puts "You can now visit http://localhost:3000 to see your Horse Tinder app!"
