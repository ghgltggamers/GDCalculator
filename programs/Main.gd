# This whole script is orignally written by ghgltggamer for all the functions for this project handle this with care , Written on Sun, Aug 11 2024 from 5:00pm to 8:01pm Timezone kolkata india

extends Node2D

var GDCALCULATOR_NONE = "GDCALCULATOR_NONE"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var val1:int = 0;
var val2:int = 0;
var val3:int = 0;
var operation = GDCALCULATOR_NONE;

func get_value():
	return int(get_node("resource/values").text);	
	
func greenlit():
	get_node("resource/keypad/indicators/keypress_indicator_red2").show();
	get_node("green-lit-timeout").start();
	
func redlit():
	get_node("resource/keypad/indicators/keypress_indicator_red3").show();
	get_node("green-lit-timeout").start();

func yellowlit():
	get_node("resource/keypad/indicators/keypress_indicator_red4").show();
	get_node("green-lit-timeout").start();
	
func set_value(value):
	if value == GDCALCULATOR_NONE:
		get_node("resource/values").text = "";
	else :
		get_node("resource/values").text = value;
	
func append_value(value):
	var old = get_node("resource/values").text;
	get_node("resource/values").text = old + value;

func reset_value():
	set_value(GDCALCULATOR_NONE);	
	
	
func open_settings():
	get_node("resource/Settings").show();
	
func close_settings():
	get_node("resource/Settings").hide();
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_1_pressed():
	greenlit();
	append_value("1");


func _on_2_pressed():
	greenlit();
	append_value("2");	


func _on_3_pressed():
	greenlit();
	append_value("3");	


func _on_4_pressed():	
	greenlit();
	append_value("4");	


func _on_5_pressed():
	greenlit();
	append_value("5");	


func _on_6_pressed():
	greenlit();
	append_value("6");	


func _on_7_pressed():
	greenlit();
	append_value("7");	


func _on_8_pressed():
	greenlit();
	append_value("8");	


func _on_9_pressed():
	greenlit();
	append_value("9");	


func _on_greenlittimeout_timeout():
	get_node("resource/keypad/indicators/keypress_indicator_red2").hide();
	get_node("resource/keypad/indicators/keypress_indicator_red3").hide();
	get_node("resource/keypad/indicators/keypress_indicator_red4").hide();


func _on_0_pressed():
	greenlit();
	append_value("0");


func _on_add_pressed():
	greenlit();
	val1 = get_value();
	print("Memory high level variable named val1 is defined as "+str(val1) + " Operation is selected as addition (+) operator - Output GDScript, Engine Godot 3");
	reset_value();
	operation = "+";


func _on_sub_pressed():
	greenlit();
	val1 = get_value();
	print("Memory high level variable named val1 is defined as "+str(val1) + " Operation is selected as addition (+) operator - Output GDScript, Engine Godot 3");	
	reset_value();	
	operation = "-";	


func _on_mul_pressed():
	greenlit();
	val1 = get_value();	
	print("Memory high level variable named val1 is defined as "+str(val1) + " Operation is selected as addition (+) operator - Output GDScript, Engine Godot 3");	
	reset_value();
	operation = "*";	


func _on_div_pressed():
	greenlit();
	val1 = get_value();	
	print("Memory high level variable named val1 is defined as "+str(val1) + " Operation is selected as addition (+) operator - Output GDScript, Engine Godot 3");	
	reset_value();
	operation = "/";	


func _on_mod_pressed():
	greenlit();
	val1 = get_value();	
	print("Memory high level variable named val1 is defined as "+str(val1) + " Operation is selected as addition (+) operator - Output GDScript, Engine Godot 3");	
	reset_value();
	operation = "r";	


func _on_equal_pressed():
	if operation == GDCALCULATOR_NONE:
		redlit();
		print("Red lit detected means you are trying to get the values without defining an operator so please define an inbuilt operator eg : '+','-','/','*','r' with the help of GUI");
	elif operation == "+":
		val2 = get_value();
		val3 = 	val1 + val2;
		set_value(str(val3));
	elif operation == "-":
		val2 = get_value();
		val3 = 	val1 - val2;
		set_value(str(val3));
	elif operation == "*":
		val2 = get_value();
		val3 = 	val1 * val2;
		set_value(str(val3));
	elif operation == "/":
		val2 = get_value();
		val3 = 	val1 / val2;
		set_value(str(val3));
	elif operation == "r":
		val2 = get_value();
		val3 = 	val1 % val2;
		set_value(str(val3));
	else:
		yellowlit();
		print("Yellow lit detected means you are trying to get the values with an faulty operator so please define an inbuilt operator eg : '+','-','/','*','r' with the help of GUI");		
	


func _on_c_pressed():
	greenlit();
	reset_value();


func _on_LinkButton_github_pressed():
	OS.shell_open("https://github.com/ghgltggamers/GDCalculator");


func _on_enginebtn_link_pressed():
	OS.shell_open("https://www.godotengine.org/");


func _on_youtubebtn_link_pressed():
	OS.shell_open("https://www.youtube.com/@ghgltggamer/");


func _on_settingsbutton_pressed():
	open_settings();


func _on_closesettings_pressed():
	close_settings();
