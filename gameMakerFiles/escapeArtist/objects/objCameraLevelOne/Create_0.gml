/// @description Initializes camera

camera = camera_create();

camera_set_view_size(camera, 1920, 1080);

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm =  matrix_build_projection_ortho(640, 500, 1, 10000);

camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);

view_camera[0] = camera;

follow = objCharacter; 

xTo = x;
yTo = y;
