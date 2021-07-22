week7(eigen) -> eigen_practice
rosrun ...
week7(D-H parameters) -> my_tf_practice & get_homogenous_transform
rosrun get ... 
week7(forward kinematics) -> ur5_description
week7_hw(calc_base2end_tf) -> homegeneous transform matrix
roslaunch ur5_description...
rviz
roslaunch calc_base2end_tf ...
rosrun tf tf_echo /base /tool0

week8(manipulator) -> mybot_description
roslaunch mybot_description ...
rviz

week9(mobile robot) -> mobile_robot & mobile_robot_description
week9_hw -> setparam/getparam

week10(odometry) -> mobile_robot & mobile_robot_description
roslaunch mobile_robot mobile_robot.launch
rosrun rqt_tf_tree rqt_tf_tree
subscribe : /gazebo/link_states
output : /custom_odom(nav_msgs::Odometry)
/custom_odom, /custom_base, /base_link
rosmsg show gazebo_msgs/link_states
rostopic echo /gazebo/link_states -> L&R velocity
week10_hw ->
roslaunch mobile_robot mobile_robot_odometry.launch

week11(map&localization) -> fourth_robot_navigation & fourth_robot_pkg
roslaunch fourth_robot_navigation fourth_robot_gazebo.launch -> gazebo
roslaunch fourth_robot_navigation fourth_robot_mapping.launch -> gazebo & rviz
map making -> 
1. roslaunch fourth_robot_navigation fourth_robot_mapping.launch
2. rviz -> add map
3. rosrun teleop_twist_keyboard teleop_twist_keyboard.py /cmd_vel:=/diff_drive_controller/cmd_vel
4. 직진으로만 가면 안됨(비스듬)
5. ('map' folder in fourth_robot_navigation -> cd map ->) rosrun map_server map_saver -f playground 
roslaunch fourth_robot_navigation fourth_robot_localization.launch

week12(planning&navigation) -> fourth_robot_navigation & fourth_robot_pkg
roslaunch fourth_robot_navigation fourth_robot_move_base.launch
dwa_local_planner_params.yaml, local_costmap_params.yaml, costmap_common_params.yaml
roslaunch fourth_robot_navigation fourth_robot_localization.launch, fourth_robot_move_base.launch
rviz -> fixedframe(map), tf, map(/map), laserscan(/front/scan), localpath(/move_base/.../global_plan),
localcostmap(/move_base/local_costmap/...), globalcostmap(/move_base/global_costmap/...),
globalpath(/move_base/.../plan),goalpose(/move_base_simple/goal)

week14 ->
project.world 파일을 fourth_robot_pkg/fourth_robot_gazebo/worlds 안에 넣어준다.
fourth_robot_navigation/fourth_robot_mapping.launch 파일에서 불러오는 파일 명령어가 fourth_robot_gazebo로 되어있다.
따라서 fourth_robot_gazebo.launch로 가서 include file 부분을 project.world로 변경해준다. 
fourth_robot_mapping 실행 시키면 불러온 파일이 뜬다.
fourth_robot_mapping 안에 파라미터 변경가능성 있음
map 생성후 fourth_robot_localization에서 include file 부분, 35줄 yaml 파일도 변경해준다.
fourth_robot_localization 실행
rviz작동시 로봇이 보이지 않는다면 두가지 방법으로 해결
1. source /usr/share/gazebo/setup.bash
2. 1번 방법이 안되면 roscore를 따로 키고 1번이랑 source devel/setup.bash
하고 다시 실행 
진짜 안되면 다음 방법 수행
1. roscore
2. source /opt/ros/melodic/setup.bash
3. source /usr/share/gazebo/setup.bash
4. source devel/setup.bash
<최종해결>
1. roscore
2. rviz
3. fourth_robot_localization 켰다끄고 다시 실행
fourth_robot_move_base 실행
costmap_common_params.yaml 파일에서 obastacle_range 변경해줘보자(예시 1.5 /n 2.0)
local_costmap_params.yaml 파일에서는 costmap size 변경할 수 있음 (예시 2, 2)
% 하나의 레이저만 사용할경우 fornt_lrf_link 그리고 토픽이름도 변경해야한다.