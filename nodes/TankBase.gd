extends Area2D
signal hit

export var speed = 50 # How fast the tank will move (pixels/sec).
export var bulletCount = 1 # Bullet limit at one time
export var bulletType = "normal"
export var mineCount = 2
export var userControlled = false # controls how movement is controlled

# Variables that are controlled by class, not externally
var activeMines = 0
var activeBullets = 0 # Keeps track of how many bullets are active
var screen_size # Size of the game window.

func _init(_speed=50, 
		   _bCount=1,
		   _bType="normal",
		   _mCount=2,
		   _userCont=false):
	speed = _speed
	bulletCount = _bCount
	bulletType = _bType
	mineCount = _mCount
	userControlled=_userCont
	

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	# hide()

func start(pos):
	position = pos
	show()
	$CollisionShape2D.disabled = false
