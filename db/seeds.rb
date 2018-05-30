7.times do 
    Store.create(
        name:Faker::FunnyName.name
        description:Faker::MichaelScott.quote 
    )
end
