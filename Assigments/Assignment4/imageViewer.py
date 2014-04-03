import Image

content = open("hw4-image.txt").read().split("\n")
im = Image.new("RGB", (407, 516), "black")
pixels = im.load()
for j in range(im.size[0]):
    for i in range(im.size[1]):
        intArray = content[i*im.size[0] + j].split(' ')
        pixels[j, i] = (int(intArray[0]), int(intArray[1]), int(intArray[2]));

im.show()
        
