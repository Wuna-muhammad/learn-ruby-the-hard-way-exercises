#coding -*- utf-8 -*-

# Bernard Pietraga
# Excercise No. 10 from Learn Ruby The Hard Way

# 2 Escape sequences with quotation marks.
puts "I am 6'2\" tall." # escape double-quote inside string
puts 'I am 6\'2" tall.' # escape single-quote inside string

# Actual exercise begins here.

tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = """
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
"""

slim_cat = '''
"\\Cat trapped in\fbox\a\fbackslash.\\ <- This is executed line down."
'''

slimmer_cat = "\\Cat trapped in\fbox\a\fbackslash.\\"

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat
puts slim_cat
puts slimmer_cat

