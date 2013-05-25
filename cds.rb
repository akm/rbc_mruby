#
# MIT LICENSE
#
# Copyright Takeshi AKIMA, Minoru UCHIDA
#
a0 = AnalogIO.new(A0, INPUT)
d0 = DigitalIO.new(D0, OUTPUT)
while true
  if a0.read > 0
    d0.write(1)
  else
    d0.write(0)
  end
  sleep(1)
end



d = DigitalIO.new(D0, OUTPUT)
while true
  d.write(1)
  sleep(1)
  d.write(0)
  sleep(1)
end
