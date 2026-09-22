import numpy as np
from PIL import Image
from Crypto.Cipher import AES
from Crypto.Random import get_random_bytes
from Crypto.Util.Padding import pad

img = Image.open("linux_penguin.jpg").convert()
data = np.array(img)
flat_data = data.flatten()

key = get_random_bytes(16)
iv = get_random_bytes(16)
nonce = get_random_bytes(4)

# ECB
cipher = AES.new(key, AES.MODE_ECB)
padded_data = pad(flat_data.tobytes(), AES.block_size)
encrypted_ecb = cipher.encrypt(padded_data)
enc_array = np.frombuffer(encrypted_ecb, dtype=np.uint8)[:flat_data.size]
enc_array = enc_array.reshape(data.shape)
img_array = Image.fromarray(enc_array)
img_array.save("linux_penguin_ecb.jpg")

# CBC
cipher = AES.new(key, AES.MODE_CBC, iv)
padded_data = pad(flat_data.tobytes(), AES.block_size)
encrypted_ecb = cipher.encrypt(padded_data)
enc_array = np.frombuffer(encrypted_ecb, dtype=np.uint8)[:flat_data.size]
enc_array = enc_array.reshape(data.shape)
img_array = Image.fromarray(enc_array)
img_array.save("linux_penguin_cbc.jpg")

# CTR

cipher = AES.new(key, AES.MODE_CTR, nonce=nonce, initial_value=0)
encrypted_ecb = cipher.encrypt(flat_data.tobytes())
enc_array = np.frombuffer(encrypted_ecb, dtype=np.uint8)[:flat_data.size]
enc_array = enc_array.reshape(data.shape)
img_array = Image.fromarray(enc_array)
img_array.save("linux_penguin_ctr.jpg")

