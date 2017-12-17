# Cruise-control-design-using-PID
A simple cruise control system with PID controller; design done in Simulink.

The cruise control system design is for a Compact Sedan (system parameters for modelling such as weight of the car, dimensions, drag coefficient, rolling resistance, max torque and so on has been for a Honda City 1.5L)

System is first-order mass damper model, the modeling has been done in simulink in both discrete and continuous modes, with and without a PID controller. The tuning of the PID parameters has been done using the matlab pid tuner tool. The system objective was to maintain the speed of the car at 100 km/h (27.78 m/s). System stability was checked by applying disturbance similar to that of a car running from a plain road to an inclined terrain. Rise time is designed to be less than 12 seconds, as the car in modelling (honda city 1.5l) can do 0-100km/h in 10.8 seconds.


## Simulink model for the controller and plant are as follows : 
* cruise_model_open_loop.slx	//open loop system in s-domain 
* cruise_model.slx	//closed loop system with PID controller in s-domain 
* cruise_open_loop_discrete.slx	//open loop system in z-domain 
* cruise_discrete.slx	//closed loop system with PID controller

## Matlab file for analysis : 
* system_analyis.m	//contains system parameters and response analysis 
* discrete_transfer_function_analysis.m	//system transfer function analysis

## Results from the tests can be found in the results folder.
