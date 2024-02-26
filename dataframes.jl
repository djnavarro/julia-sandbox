using DataFrames
using CSV
using Statistics

# manually defines a data frame 
states = DataFrame(
    name = [
        "New South Wales", "Victoria", "Queensland", "Western Australia", 
        "South Australia", "Tasmania", "Australian Capital Territory",
        "Northern Territory"
    ],
    capital = [
        "Sydney", "Melbourne", "Brisbane", "Perth", "Adelaide", "Hobart", 
        "Canberra", "Darwin"
    ],
    population = [
        8339347, 6812477, 5459413, 2527013, 1851704, 572780, 466813, 252473
    ]
)

# imports a data frame from csv, treating "NA" as missing
starwars = DataFrame(CSV.File("starwars.csv"; missingstring = "NA"))

# access the columns directly
starwars.name 

# subsetting by indices
starwars[1:3, 1:5]

# subsetting with column names
starwars[:, [:gender, :homeworld]]

# subsetting with logicals (note use of . to vectorise the operators)
starwars[starwars.skin_color .== "fair", :]starwars[@. startswith(starwars.name, "L"), :] 

# choosing columns with selectors
starwars[:, Not(:hair_color)]
starwars[:, Between(:sex, :homeworld)]
starwars[:, All()]

# the Cols() selector can take an anonymous function (defined with ->)
starwars[:, Cols(x -> endswith(x, "color"))] # see also startswith(), contains() 

# groupby() and combine() allow summaries 
combine(groupby(starwars, :gender), :mass => rand) 
