%%
rosshutdown;
rosinit; % Connection with roscore
%%
velPub = rospublisher("/turtle1/cmd_vel","geometry_msgs/Twist"); % Publisher declaration
velMsg = rosmessage(velPub); % Message declaration
%%
velMsg.Linear.X = 1; % Set message value
send(velPub, velMsg); % Send message to a topic
pause(1)

