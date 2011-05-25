(in-package #:logi-commands)

(defjoystick g940-stick
    :model 60
    :axis (x y mini-x mini-y trim-y trim-x trim-z)
    :buttons (trigger1 fire s1 s2 s3 side pinky trigger2 mini-push)
    :hats (hat-stick))

(defjoystick g940-throttle
    :model 61
    :axis (right-throttle left-throttle rotary-right rotary-front)
    :buttons (right1 right2 front1 front2 p1 p2 p3 p4 p5 p6 p7 p8)
    :hats (upper-hat lower-hat))

(defjoystick g940-pedals
    :model 62
    :axis (right-brake left-brake z))

(bind mini-x :left "Trim" "Left" "Wing" :right "Trim" "Right" "Wing")
(bind mini-y :up "Trim" "Nose" "Down" :down "Trim" "Nose" "Up")
