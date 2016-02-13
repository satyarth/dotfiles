from chromatography import Chromatography, bright_pixel

c = Chromatography('/tmp/wall.jpg')
p = c.get_palette(16, bright_pixel)


def rgb_to_hex(rgb):
    return '#%02x%02x%02x' % rgb

colors = {i: rgb_to_hex(p[i]) for i in range(16)}

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

output_x(colors)
output_sh(colors)
output_css(colors)
output_less(colors)
