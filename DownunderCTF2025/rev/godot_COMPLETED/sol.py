from PIL import Image, ImageDraw

class Vector2i:
    def __init__(self, x, y):
        self.x = x
        self.y = y

coords = [
Vector2i(-5, -247), Vector2i(-4, -247), Vector2i(-1, -247), Vector2i(0, -247),
Vector2i(1, -247), Vector2i(3, -247), Vector2i(5, -247), Vector2i(-30, -247),
Vector2i(-28, -247), Vector2i(-27, -247), Vector2i(-25, -247), Vector2i(-24, -247),
Vector2i(-23, -247), Vector2i(-21, -247), Vector2i(-19, -247), Vector2i(-17, -247),
Vector2i(-16, -247), Vector2i(-15, -247), Vector2i(-13, -247), Vector2i(-12, -247),
Vector2i(7, -247), Vector2i(9, -247), Vector2i(10, -247), Vector2i(11, -247),
Vector2i(13, -247), Vector2i(15, -247), Vector2i(17, -247), Vector2i(19, -247),
Vector2i(20, -247), Vector2i(23, -247), Vector2i(24, -247), Vector2i(27, -247),
Vector2i(28, -247), Vector2i(31, -247), Vector2i(32, -247), Vector2i(-12, -255),
Vector2i(-13, -254), Vector2i(-13, -253), Vector2i(-13, -252), Vector2i(-12, -251),
Vector2i(-12, -253), Vector2i(-9, -255), Vector2i(-9, -254), Vector2i(-9, -253),
Vector2i(-9, -252), Vector2i(-9, -251), Vector2i(-10, -255), Vector2i(-8, -255),
Vector2i(-6, -255), Vector2i(-6, -254), Vector2i(-6, -253), Vector2i(-6, -252),
Vector2i(-6, -251), Vector2i(-5, -253), Vector2i(-4, -255), Vector2i(-4, -254),
Vector2i(-4, -253), Vector2i(-4, -252), Vector2i(-4, -251), Vector2i(-2, -255),
Vector2i(-2, -254), Vector2i(-2, -253), Vector2i(-2, -252), Vector2i(-2, -251),
Vector2i(-1, -251), Vector2i(0, -251), Vector2i(-1, -253), Vector2i(0, -253),
Vector2i(-1, -255), Vector2i(0, -255), Vector2i(2, -251), Vector2i(3, -251),
Vector2i(4, -251), Vector2i(6, -255), Vector2i(6, -254), Vector2i(6, -253),
Vector2i(6, -252), Vector2i(6, -251), Vector2i(7, -251), Vector2i(8, -252),
Vector2i(7, -253), Vector2i(8, -254), Vector2i(7, -255), Vector2i(10, -255),
Vector2i(10, -254), Vector2i(10, -253), Vector2i(10, -252), Vector2i(10, -251),
Vector2i(11, -251), Vector2i(12, -251), Vector2i(12, -252), Vector2i(12, -253),
Vector2i(12, -254), Vector2i(12, -255), Vector2i(11, -255), Vector2i(14, -255),
Vector2i(14, -254), Vector2i(16, -255), Vector2i(16, -254), Vector2i(15, -253),
Vector2i(15, -252), Vector2i(15, -251), Vector2i(18, -251), Vector2i(19, -251),
Vector2i(20, -251), Vector2i(22, -255), Vector2i(22, -254), Vector2i(22, -253),
Vector2i(22, -252), Vector2i(23, -251), Vector2i(24, -252), Vector2i(24, -253),
Vector2i(24, -254), Vector2i(24, -255), Vector2i(25, -251), Vector2i(26, -252),
Vector2i(26, -253), Vector2i(26, -254), Vector2i(26, -255), Vector2i(28, -255),
Vector2i(28, -254), Vector2i(28, -253), Vector2i(28, -252), Vector2i(28, -251),
Vector2i(30, -255), Vector2i(30, -254), Vector2i(30, -253), Vector2i(30, -252),
Vector2i(30, -251), Vector2i(31, -251), Vector2i(32, -251), Vector2i(34, -255),
Vector2i(34, -254), Vector2i(34, -253), Vector2i(34, -252), Vector2i(34, -251),
Vector2i(35, -251), Vector2i(36, -251), Vector2i(-30, -249), Vector2i(-30, -248),
Vector2i(-30, -246), Vector2i(-30, -245), Vector2i(-29, -248), Vector2i(-25, -249),
Vector2i(-25, -248), Vector2i(-25, -246), Vector2i(-25, -245), Vector2i(-24, -245),
Vector2i(-23, -245), Vector2i(-24, -249), Vector2i(-23, -249), Vector2i(-21, -249),
Vector2i(-21, -248), Vector2i(-21, -246), Vector2i(-20, -245), Vector2i(-19, -246),
Vector2i(-19, -248), Vector2i(-19, -249), Vector2i(-17, -249), Vector2i(-17, -248),
Vector2i(-17, -246), Vector2i(-17, -245), Vector2i(-16, -245), Vector2i(-15, -245),
Vector2i(-16, -249), Vector2i(-15, -249), Vector2i(-13, -249), Vector2i(-13, -248),
Vector2i(-13, -246), Vector2i(-13, -245), Vector2i(-12, -249), Vector2i(-11, -248),
Vector2i(-11, -245), Vector2i(-9, -245), Vector2i(-7, -245), Vector2i(-8, -245),
Vector2i(-5, -249), Vector2i(-5, -248), Vector2i(-5, -246), Vector2i(-5, -245),
Vector2i(-4, -249), Vector2i(-3, -248), Vector2i(-3, -245), Vector2i(-1, -249),
Vector2i(-1, -248), Vector2i(-1, -246), Vector2i(-1, -245), Vector2i(0, -245),
Vector2i(1, -245), Vector2i(0, -249), Vector2i(1, -249), Vector2i(3, -249),
Vector2i(3, -248), Vector2i(3, -246), Vector2i(3, -245), Vector2i(4, -248),
Vector2i(6, -248), Vector2i(7, -249), Vector2i(7, -248), Vector2i(7, -246),
Vector2i(7, -245), Vector2i(9, -249), Vector2i(9, -248), Vector2i(9, -246),
Vector2i(9, -245), Vector2i(10, -245), Vector2i(11, -245), Vector2i(10, -249),
Vector2i(11, -249), Vector2i(13, -249), Vector2i(13, -248), Vector2i(13, -246),
Vector2i(13, -245), Vector2i(14, -248), Vector2i(16, -248), Vector2i(17, -249),
Vector2i(17, -248), Vector2i(17, -246), Vector2i(17, -245), Vector2i(19, -249),
Vector2i(19, -248), Vector2i(19, -246), Vector2i(19, -245), Vector2i(20, -249),
Vector2i(21, -248), Vector2i(21, -246), Vector2i(20, -245), Vector2i(-27, -246),
Vector2i(-27, -245), Vector2i(-27, -248), Vector2i(-27, -249), Vector2i(-11, -246),
Vector2i(-3, -246), Vector2i(-29, -247), Vector2i(-28, -246), Vector2i(23, -249),
Vector2i(23, -248), Vector2i(23, -246), Vector2i(23, -245), Vector2i(24, -245),
Vector2i(25, -245), Vector2i(24, -249), Vector2i(25, -249), Vector2i(27, -249),
Vector2i(27, -248), Vector2i(27, -246), Vector2i(27, -245), Vector2i(28, -249),
Vector2i(29, -248), Vector2i(29, -246), Vector2i(29, -245), Vector2i(31, -249),
Vector2i(32, -248), Vector2i(32, -246), Vector2i(31, -245), Vector2i(-37, -244),
Vector2i(-38, -244), Vector2i(-39, -244), Vector2i(-40, -244), Vector2i(37, -245),
Vector2i(38, -245), Vector2i(39, -245), Vector2i(-34, -255), Vector2i(-33, -255),
Vector2i(-30, -255), Vector2i(-28, -255), Vector2i(-26, -255), Vector2i(-25, -255),
Vector2i(-24, -255), Vector2i(-22, -255), Vector2i(-21, -255), Vector2i(-20, -255),
Vector2i(-18, -255), Vector2i(-17, -255), Vector2i(-16, -255), Vector2i(-34, -254),
Vector2i(-32, -254), Vector2i(-30, -254), Vector2i(-28, -254), Vector2i(-26, -254),
Vector2i(-21, -254), Vector2i(-18, -254), Vector2i(-34, -253), Vector2i(-32, -253),
Vector2i(-30, -253), Vector2i(-28, -253), Vector2i(-26, -253), Vector2i(-21, -253),
Vector2i(-18, -253), Vector2i(-17, -253), Vector2i(-16, -253), Vector2i(-34, -252),
Vector2i(-32, -252), Vector2i(-30, -252), Vector2i(-28, -252), Vector2i(-26, -252),
Vector2i(-21, -252), Vector2i(-18, -252), Vector2i(-34, -251), Vector2i(-33, -251),
Vector2i(-30, -251), Vector2i(-29, -251), Vector2i(-28, -251), Vector2i(-26, -251),
Vector2i(-25, -251), Vector2i(-24, -251), Vector2i(-21, -251), Vector2i(-18, -251),
]

all_points = list(coords)

min_x = min(p.x for p in all_points)
max_x = max(p.x for p in all_points)
min_y = min(p.y for p in all_points)
max_y = max(p.y for p in all_points)

scale = 3
image_width = (max_x - min_x + 1) * scale
image_height = (max_y - min_y + 1) * scale

image = Image.new('RGB', (image_width, image_height), color = 'white')
draw = ImageDraw.Draw(image)

main_point_color = (0, 0, 0)

def world_to_image_coords(vec: Vector2i) -> tuple[int, int]:
    img_x = (vec.x - min_x) * scale
    img_y = (vec.y - min_y) * scale
    return img_x, img_y

for p in coords:
    img_x, img_y = world_to_image_coords(p)
    draw.rectangle([img_x, img_y, img_x + scale - 1, img_y + scale - 1], fill=main_point_color)

output_filename = "tile_map_output.png"
image.save(output_filename)
print("generated image")