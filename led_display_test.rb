d1 = DigitalIO.new(D1, OUTPUT)
while true
  p 1
  d1.write(1)
  sleep(3)
  p 0
  d1.write(0)
  sleep(3)
end
