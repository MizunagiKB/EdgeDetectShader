extends Particles


var color_value = Color.white


func set_color_value(new_color: Color):
    self.color_value = new_color
    self.material_override.set_shader_param("color", self.color_value)


func set_shader_off():
    self.material_override.set_shader_param("color_mode", 0)


func set_shader_edge():
    self.material_override.set_shader_param("color_mode", 0)


func set_shader_normal():
    self.material_override.set_shader_param("color_mode", 1)


func set_shader_depth():
    self.material_override.set_shader_param("color_mode", 0)


func _ready():

    self.material_override = ShaderMaterial.new()
    self.material_override.shader = load("res://shader/visual_shader.tres")
    self.material_override.set_shader_param("color_mode", 0)
    self.material_override.set_shader_param("color", self.color_value)


func _process(delta):

    var vct_gra = Vector3.DOWN

    self.process_material.gravity = vct_gra.normalized() * 9.8

