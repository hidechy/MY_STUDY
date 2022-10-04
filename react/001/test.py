import matplotlib.pyplot as plt        #  初回実行時のみ1-2分かかるかも．
import numpy

x = numpy.linspace(0.0, 2*3.1415, 100)   # [0,2¥pi]を100分割する実数配列
y = numpy.sin(x)                         # もちろん正弦波
z = numpy.cos(x)                         # もちろん余弦波

plt.plot(x,y)
plt.plot(x,z)

plt.show()
