%%
rosshutdown;
rosinit; % conexion a roscore
%%
velPub = rospublisher("/turtle1/cmd_vel","geometry_msgs/Twist"); % publicacion
velMsg = rosmessage(velPub); % declaracion
%%
velMsg.Linear.X = 1; % set de mensaje
send(velPub, velMsg); % enviar mensaje
pause(1)

