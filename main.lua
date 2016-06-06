BRIGHT = 350
INHALE = 1250
PULSE  = INHALE*1000/BRIGHT
REST   = 1000
PIN    = 3

gpio.mode(PIN, gpio.OUTPUT)

while true do
    for i=1, BRIGHT, 1 do
        gpio.write(PIN, gpio.LOW)
        tmr.delay(i*10)
        gpio.write(PIN, gpio.HIGH)
        tmr.delay(PULSE-i*10)
    end        
    for j=(BRIGHT-1), 1, -1 do
        gpio.write(PIN, gpio.LOW)
        tmr.delay(j*10)
        gpio.write(PIN, gpio.HIGH)
        tmr.delay(PULSE-j*10)
        j = j - 1
    end
    tmr.delay(REST)

end
