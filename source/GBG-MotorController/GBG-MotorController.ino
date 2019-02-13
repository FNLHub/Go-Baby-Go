// Modified Servo.h REFRESH_INTERVAL from 20000 to 16666. This will set the Frequency from 50hz to 60hz.
#include <Servo.h>
#include <SimpleTimer.h>

Servo MotorController; // Output for Motor Controller
SimpleTimer t; // Timer used for acceleration and deceleration over time
int timerID;

// Pin Alocations
const int throttle = 2;
const int BBButton = 4;
const int motor = 5;
const int BBB_mode = 6;
const int remote_mode = 7;

const int A_Max_Speed = 0;

// Used to record data from radio pwm signal
volatile int radio_pwm_value = 0;
volatile int radio_prev_time = 0;

// Used to store potentiometer values
volatile double Max_Speed_Value = 0;

// Stores max speed from Acceleration Table Lookup
int maxSpeedIterator = 0;

// Acceleration and deceleration intervals
const int Acceleration_Speed_Value = 400;
const int Deceleraation_Speed_Value = 100;

// Stores BBButton State
int BBButtonState = 0;
int BBB_mode_state = 0;
int remote_mode_state = 0;

// Used to keep track of steps on acceleration curve
int accelerationIterator = 0;
int accelerationTable[] = {76,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126};

void setup()
{
 // Instantiation of Pins
 attachInterrupt(0, Radio_PWM_Rising, RISING); // 0 in this function means PIN 2
 pinMode(BBB_mode, INPUT);
 pinMode(remote_mode, INPUT);
 pinMode(BBButton, INPUT);
 MotorController.attach(motor); // Attach Servo Library to motor pin
 
 pinMode(A_Max_Speed, INPUT);

 timerID = t.setInterval(1000, accelerationCurve);
 
 Serial.begin(9600); // setup Serial Port
}

void loop()
{
  // Get current value of mode select switch
  BBB_mode_state = digitalRead(BBB_mode);
  remote_mode_state = digitalRead(remote_mode);

  // Get value from Max Speed Potentiometer and convert it to an Acceleration Table iterator limit
  getMaxSpeedIterator();
  
  // BBB_mode == HIGH && remote_mode == LOW; Fully remote control (No Big Blue Button)
  // BBB_mode == LOW && remote_mode == HIGH; Big Blue Button Throttle control
  // BBB_mode == LOW && remote_mode == LOW; Diagnostic Mode
  if ( BBB_mode == HIGH && remote_mode == LOW){
    // Directly pass input from radio to Motor Controller
    MotorController.write(calculateLinearAcceleration(radio_pwm_value));
  } else if (BBB_mode == LOW && remote_mode == HIGH) {
    // Use acceleration curve to gradually increase speed over time
    Serial.println(radio_pwm_value);
    if (radio_pwm_value < 1400){
      t.run();
    } else {
      decelerate();
    }
  } else if ( BBB_mode == LOW && remote_mode == LOW) {
    // Print out all variables to serial to see live output
    DiagnosticMode();
  } else {
    Serial.println("Mode Select Error! Check Mode Switch!");
  }
}

// Read the max Speed potentiometer and return its corresponding value in the AccelerationTable.
void getMaxSpeedIterator(){

  Max_Speed_Value = analogRead((A_Max_Speed/1023.0));
  
  maxSpeedIterator = round(Max_Speed_Value*44);
}

// Outputs to Motor Controller using modified servo library
void writeToMotorController(int speedVal){
    MotorController.write(speedVal);
}


// Gradually iterate through lookup table until max speed.
void accelerationCurve()
{
  BBButtonState = digitalRead(BBButton);
  
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
    if (accelerationIterator <= 44){
      if (accelerationIterator < maxSpeedIterator){
        accelerationIterator += 1;
      }
      writeToMotorController(accelerationTable[accelerationIterator]);
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
      writeToMotorController(accelerationTable[accelerationIterator]);
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

void DiagnosticMode(){

  // Get current value of BBButton
  BBButtonState = digitalRead(BBButton);

  Serial.println("Diagnostic Mode");
  Serial.println("Remote Control Mode Settings:");
  Serial.println("-------------------------------------");
  Serial.println("Throttle Value from radio: " + radio_pwm_value);
  Serial.println("LinearAcceleration Conversion Value: " + String(calculateLinearAcceleration(radio_pwm_value)));
  Serial.println("-------------------------------------");
  Serial.println("Semi-Remote Control Mode Settings:");
  Serial.println("-------------------------------------");
  Serial.println("Child Throttle Button Value: " + BBButtonState);
  Serial.println("Max Speed Value: " + String(accelerationTable[maxSpeedIterator]));
  Serial.println("Acceleration delay in miliseconds between steps: " + Acceleration_Speed_Value);
  Serial.println("Deceleration delay in miliseconds between steps: " + Deceleraation_Speed_Value);
  Serial.println("-------------------------------------");
}
