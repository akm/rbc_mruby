# -*- coding: utf-8 -*-

# ややこしいけど、ON(1)にすると消えて、OFF(0)なら光る
#
#     D1
#     a1
#   --------
# D6|      |D2
# f1|  D7  |b1
#   |  g1  |
#   --------
# D5|      |D3
# e1|  D4  |c1
#   |  d1  |
#   --------
#

DIOS = [D1, D2, D3, D4, D5, D6, D7]

dios = DIOS.map{|i| DigitalIO.new(i, OUTPUT)}
dios.each{|io| io.write(1) } # 全部消す

orders = [0,1,6,4,3,2,6,5]

p orders

prev = dios[orders.last]
curr = dios[orders.first]

while true
  orders.each do |idx|
    # p idx

    prev = curr
    curr = dios[idx]

    prev.write(1)
    curr.write(0)
    delay(100)
  end
end
