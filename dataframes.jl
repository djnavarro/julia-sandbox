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

# reads a csv file, creating a CSV.file object
# https://csv.juliadata.org/stable/reading.html#CSV.File
starwars_csv = CSV.File("starwars.csv"; missingstring = "NA")

# CSV.file objects are row-oriented (like CSV itself): this is a "CSV.row"
# object with the entries from the first row of the CSV file
starwars_csv[1]

# this returns the actual value
starwars_csv[1].gender

# in practice we don't work with the CSV object, we convert it to a data frame
starwars = DataFrame(starwars_csv)

# data frames are columnar: we can access the columns directly, and this is a vector
starwars.name 

# subsetting by indices is similar to Matlab & R
starwars[1:6, 1:5]

# subsetting can also take a vector of column names (more precisely this is a
# vector of symbols)
starwars[1:6, [:name, :gender, :homeworld]]

# we can subset rows with a vector of booleans (note use of . to vectorise the operators)
# (technically fair_skinned here is a BitVector but it behaves as a vector of booleans)
fair_skinned = starwars.skin_color .== "fair"

# printing fair_skinned doesn't look like a vector of "true/false" values, but it's
# purely a printing thing: this returns a Bool
fair_skinned[1]

# anyway... back on topic...
starwars[fair_skinned, :]

# choosing columns with selectors
starwars[:, Not(:hair_color)]
starwars[:, Between(:sex, :homeworld)]
starwars[:, All()]

# the Cols() selector can take an anonymous function (defined with ->)
starwars[:, Cols(x -> endswith(x, "color"))] # see also startswith(), contains() 

# groupby() and combine() allow summaries; in this case select a random value
combine(groupby(starwars, :gender), :mass => rand) 
