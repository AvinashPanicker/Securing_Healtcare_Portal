import cv2
import imutils
import numpy as np

import tkinter as tk
from tkinter import filedialog
from PIL import Image


def changeImageSize(maxWidth, maxHeight,image):
    widthRatio= maxWidth/image.size[0]
    heightRatio= maxHeight/image.size[1]

    newHeight=int(heightRatio*image.size[0])
    newWidth=int(widthRatio*image.size[1])
    newImage=image.resize((newHeight, newWidth))

    return newImage

realimage=cv2.imread("101.jpg")
resized = cv2.resize(realimage, (700, 700))
#cv2.imshow("Original Image",resized)

flipped=cv2.flip(realimage,1)
pil_A= Image.fromarray(realimage)
pil_B= Image.fromarray(flipped)

resizedpil_A=changeImageSize(400,400,pil_A)
resizedpil_B=changeImageSize(400,400,pil_B)

resizedpil_A=resizedpil_A.convert("RGBA")
resizedpil_B=resizedpil_B.convert("RGBA")

alphaBlended= Image.blend(resizedpil_A,resizedpil_B,alpha=.50)
open_cv_image= np.array(alphaBlended)
grayimage=cv2.cvtColor(open_cv_image, cv2.COLOR_BGR2GRAY)


f=open("filename.txt", "r")
if f.mode == 'r':
	contents =f.read()


resized = cv2.resize(grayimage, (700, 700))
#cv2.imshow("Generated Decoy Image", resized)
cv2.imwrite("decoy/"+contents, grayimage)
cv2.waitKey(0)
