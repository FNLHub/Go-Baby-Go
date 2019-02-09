// Modified Servo.h REFRESH_INTERVAL from 20000 to 16666. This will set the Frequency from 50hz to 60hz.
#include <Servo.h>
#include <SimpleTimer.h>

Servo MotorController; // Output for Motor Controller
SimpleTimer t; // Timer used for acceleration and deceleration over time
int timerID;

// Pin Alocations
const int throttle = 2;
const int modeSelect = 3;
const int BBButton = 4;
const int motor = 5;

const int A_Max_Speed = 0;

// Used to record data from radio pwm signal
volatile int radio_pwm_value = 0;
volatile int radio_prev_time = 0;

// Used to store potentiometer values
volatile int Max_Speed_Value = 0;

// Acceleration and deceleration intervals
const int Acceleration_Speed_Value = 400;
const int Deceleraation_Speed_Value = 100;

// Stores BBButton State
int BBButtonState = 0;

// Used to keep track of steps on acceleration curve
int accelerationIterator = 0;
int accelerationTable[] = {76,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126};

void setup()
{
 // Instantiation of Pins
 attachInterrupt(0, Radio_PWM_Rising, RISING); // 0 in this function means PIN 2
 pinMode(modeSelect, INPUT);
 pinMode(BBButton, INPUT);
 MotorController.attach(motor); // Attach Servo Library to motor pin
 
 pinMode(A_Max_Speed, INPUT);
 pinMode(A_Acceleration_Speed, INPUT);

 timerID = t.setInterval(1000, accelerationCurve);
 
 Serial.begin(9600); // setup Serial Port
}

void loop()
{
  // modeSelect == HIGH; fully remote control (No Big Blue Button)
  // modeSelect == LOW; Big Blue Button Throttle control
  //if ( modeSelect == HIGH){
    // Directly pass input from radio to Motor Controller
  //  MotorController.write(calculateLinearAcceleration(radio_pwm_value));
  //} else {
    // Use acceleration curve to gradually increase speed over time
    Serial.println(radio_pwm_value);
    if (radio_pwm_value < 1400){
      t.run();
    } else {
      decelerate();
    }
  //}
}


// Gradually iterate through lookup table until max speed.
void accelerationCurve()
{
  BBButtonState = digitalRead(BBButton);
  //Serial.println(BBButtonState);
  
  // BBButtonState == HIGH; iterate up though acceleration table until end then maintain speed
  // BBButtonState == LOW; iterate down through acceleration table until stop then maintain speed
  if (BBButtonState == HIGH)
  {
    accelerate();
  } 
  else if (BBButtonState == LOW) 
  {
    decelerate();
  } 

}

void accelerate(){
  // Bounds check to verify iterator doesn't exceed the bounds of the array
    if (accelerationIterator < sizeof(accelerationTable)){
      if (accelerationIterator < 44){
        accelerationIterator += 1;
      }
      //Serial.println(accelerationTable[accelerationIterator]);
      MotorController.write(accelerationTable[accelerationIterator]);
      t.deleteTimer(timerID);
      timerID = t.setInterval(Acceleration_Speed_Value, accelerationCurve);
    } else {
      Serial.println("Iterator Out of Bounds ++");
    }
}

void decelerate(){
  if (accelerationIterator >= 0){
      if (accelerationIterator >= 1){
        accelerationIterator -= 1;
      }
      MotorController.write(accelerationTable[accelerationIterator]);
      //Serial.println(accelerationTable[accelerationIterator]);
      t.deleteTimer(timerID);
      timerID = t.setInterval(Deceleraation_Speed_Value, accelerationCurve);
    } else {
      Serial.println("Iterator Out of Bounds --");
    }
}

// y=0.08276545x-36.33122 linear. Y == output to motor controller
// Functioned used to calculate the control speed from the given pwm value of the radio.
double calculateLinearAcceleration(int radio_pwm_value){
  double controlSpeed = 0.08276545*radio_pwm_value-36.33122;
  Serial.println(controlSpeed);
  return controlSpeed;
}

// When PWM signal from Radio is HIGH
void Radio_PWM_Rising(){
  attachInterrupt(0, Radio_PWM_Falling, FALLING);
  radio_prev_time = micros();
}

// When PWM signal from Radio is LOW
void Radio_PWM_Falling(){
  attachInterrupt(0, Radio_PWM_Rising, RISING);
  radio_pwm_value = micros()-radio_prev_time;
}
