// Modified Servo.h REFRESH_INTERVAL from 20000 to 16666. This will set the Frequency from 50hz to 60hz.
#include <Servo.h>
#include <SimpleTimer.h>

Servo MotorController; // Output for Motor Controller
SimpleTimer t; // Timer used for acceleration and deceleration over time

// Pin Alocations
int throttle = 2;
int modeSelect = 3;
int BBButton = 4;
int motor = 5;

int A_Max_Speed = A0;
int A_Acceleration_Speed = A1;

// Used to record data from radio pwm signal
volatile int radio_pwm_value = 0;
volatile int radio_prev_time = 0;

// Used to store potentiometer values
volatile int Max_Speed_Value = 0;
volatile int Acceleration_Speed_Value = 0;

// Used to keep track of steps on acceleration curve
int accelerationIterator = 0;
int accelerationTable[] = {1,2,3,4,5,6,7,8};

void setup()
{
 // Instantiation of Pins
 attachInterrupt(0, Radio_PWM_Rising, RISING); // 0 in this function means PIN 2
 pinMode(modeSelect, INPUT);
 pinMode(BBButton, INPUT);
 MotorController.attach(motor); // Attach Servo Library to motor pin
 
 pinMode(A_Max_Speed, INPUT);
 pinMode(A_Acceleration_Speed, INPUT);
 
 
 Serial.begin(9600); // setup Serial Port
}

void loop()
{
  // modeSelect == HIGH; fully remote control (No Big Blue Button)
  // modeSelect == LOW; Big Blue Button Throttle control
  if ( modeSelect == HIGH){
    // Directly pass input from radio to Motor Controller
    MotorController.write(calculateLinearAcceleration(radio_pwm_value));
  } else {
    // Use acceleration curve to gradually increase speed over time
    t.run();
  }
}


// Gradually iterate through lookup table until max speed.
void accelerationCurve()
{
  // BBButton == HIGH; iterate up though acceleration table until end then maintain speed
  // BBButton == LOW; iterate down through acceleration table until stop then maintain speed
  if (BBButton == HIGH)
  {
    // Bounds check to verify iterator doesn't exceed the bounds of the array
    if (accelerationIterator < sizeof(accelerationTable)){
      if (accelerationIterator < sizeof(accelerationTable) - 1){
        accelerationIterator += 1;
      }
      MotorController.write(accelerationTable[accelerationIterator]);
    } else {
      Serial.println("Iterator Out of Bounds ++");
    }
  } 
  else if (BBButton == LOW) 
  {
    if (accelerationIterator > 0){
      if (accelerationIterator >= 1){
        accelerationIterator -= 1;
      }
      MotorController.write(accelerationTable[accelerationIterator]);
    } else {
      Serial.println("Iterator Out of Bounds --");
    }
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

/*
 *  t.setInterval(Speed, Function); Goes in setup
 *  t.run(); Goes in loop
 */
