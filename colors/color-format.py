import sys
import argparse

p = argparse.ArgumentParser()
p.add_argument("filename")
args = p.parse_args()

def read(args):
    colors = {}
    with open(args.filename) as file:
        for row in file:
            if 'color' in row:
                row = row.replace('*color','')
                index = int(row[0:row.find(':')].strip())
                color = row[row.find('#'):].strip()
                colors[index] = color
    return colors

def output_x(colors):
    with open('colors.x', 'w') as outfile:
        for index in colors:
            outfile.write('*color' + str(index) + ': ' + colors[index] + '\n')

def output_sh(colors):
    with open('colors.sh', 'w') as outfile:
        for index in colors:
            outfile.write('color' + str(index) + '=' + colors[index] + '\n')

def output_css(colors):
    with open('colors.css', 'w') as outfile:
        outfile.write(":root {\n")
        for index in colors:
            outfile.write('--color' + str(index) + ':' + colors[index] + ';\n')
        outfile.write("}\n")

def output_less(colors):
    with open('colors.less', 'w') as outfile:
        for index in colors:
            outfile.write('@color' + str(index) + ':' + colors[index] + ';\n')


colors = read(args)

output_x(colors)
output_sh(colors)
output_css(colors)
output_less(colors)
