superlative = [
    "ace", "amazing", "astonishing", "astounding", "awe-inspiring", 
    "awesome", "badass", "beautiful", "bedazzling", "bee's knees", 
    "best", "breathtaking", "brilliant", "cat's meow", "cat's pajamas", 
    "classy", "cool", "dandy", "dazzling", "delightful", "divine", 
    "doozie", "epic", "excellent", "exceptional", "exquisite", "extraordinary", 
    "fabulous", "fantastic", "fantabulous", "fine", "finest", "first-class", 
    "first-rate", "flawless", "funkadelic", "geometric", "glorious", 
    "gnarly", "good", "grand", "great", "groovy", "groundbreaking", 
    "hunky-dory", "impeccable", "impressive", "incredible", "kickass", 
    "kryptonian", "laudable", "legendary", "lovely", "luminous", 
    "magnificent", "majestic", "marvelous", "mathematical", "mind-blowing", 
    "neat", "outstanding", "peachy", "perfect", "phenomenal", "pioneering", 
    "polished", "posh", "praiseworthy", "premium", "priceless", "prime", 
    "primo", "rad", "remarkable", "riveting", "sensational", "shining", 
    "slick", "smashing", "solid", "spectacular", "splendid", "stellar", 
    "striking", "stunning", "stupendous", "stylish", "sublime", "super", 
    "super-duper", "super-excellent", "superb", "superior", "supreme", 
    "swell", "terrific", "tiptop", "top-notch", "transcendent", "tremendous", 
    "ultimate", "unreal", "well-made", "wicked", "wonderful", "wondrous", 
    "world-class"
]

adverb = [
    "beautifully", "bravely", "brightly", "calmly", "carefully", 
    "cautiously", "cheerfully", "clearly", "correctly", "courageously", 
    "daringly", "deliberately", "doubtfully", "eagerly", "easily", 
    "elegantly", "enormously", "enthusiastically", "faithfully", 
    "fast", "fondly", "fortunately", "frankly", "frantically", "generously", 
    "gently", "gladly", "gracefully", "happily", "healthily", "honestly", 
    "joyously", "justly", "kindly", "neatly", "openly", "patiently", 
    "perfectly", "politely", "powerfully", "quickly", "quietly", 
    "rapidly", "really", "regularly", "repeatedly", "rightfully", 
    "seriously", "sharply", "smoothly", "speedily", "successfully", 
    "swiftly", "tenderly", "thoughtfully", "truthfully", "warmly", 
    "well", "wisely"
]

exclamation = [
    "ah", "aha", "ahh", "ahhh", "aw", "aww", "awww", "aye", "gee", 
    "ha", "hah", "hmm", "ho-ho", "huh", "heh", "hooray", "hurrah", 
    "hurray", "huzzah", "mhm", "mm", "mmh", "mmhm", "mmm", "oh", 
    "ole", "uh-hu", "wee", "whee", "whoa", "wow", "wowie", "yahoo", 
    "yay", "yeah", "yee-haw", "yikes", "yippie", "yow", "yowza"
]

function praise(name)
    hey = rand(exclamation)
    sup = rand(superlative)
    adv = rand(adverb)
    "$hey $name you are $adv $sup"
end

function praise()
    hey = rand(exclamation)
    sup = rand(superlative)
    adv = rand(adverb)
    "$hey you are $adv $sup"
end