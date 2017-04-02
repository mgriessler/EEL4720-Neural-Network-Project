import gzip
import pickle
import matplotlib.cm as cm
import matplotlib.pyplot as plt
import numpy

# http://stackoverflow.com/questions/11305790/pickle-incompatability-of-numpy-arrays-between-python-2-and-3
# http://stackoverflow.com/questions/24906126/how-to-unpack-pkl-file

filename = "../data/mnist.pkl.gz"
with gzip.open(filename, 'rb') as f:
    train_set, valid_set, test_set = pickle.load(f, encoding='latin1')

train_in, train_out = train_set
valid_in, valid_out = valid_set
test_in, test_out = valid_set
print(numpy.shape(train_in))
print(numpy.shape(train_in[0]))

for x in train_in[0]:
    print(x)
"""
plt.imshow(train_in[0].reshape((28,28)),cmap=cm.Greys_r)
plt.show()
plt.imshow(valid_in[0].reshape((28,28)),cmap=cm.Greys_r)
plt.show()
plt.imshow(test_in[0].reshape((28,28)),cmap=cm.Greys_r)
plt.show()
"""
