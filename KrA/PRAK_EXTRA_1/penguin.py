import numpy as np
from PIL import Image
from Crypto.Cipher import AES
from Crypto.Random import get_random_bytes

img = Image.open("linux_penguin.jpg").convert()

data = np.array(img)
print(data)

flat_data = data.flatten()
print(flat_data)

enc_array = enc_array.reshape(enc_array)
