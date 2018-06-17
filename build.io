AddonBuilder clone do(
	if(platform == "darwin",
		dependsOnLib("c++")
	)
	dependsOnLib("SoundTouch")
	dependsOnHeader("soundtouch/SoundTouch.h")

	debs	atPut("SoundTouch", "libsoundtouch1-dev")
	ebuilds atPut("SoundTouch", "soundtouch")
	pkgs    atPut("SoundTouch", "soundtouch")
	rpms    atPut("SoundTouch", "soundtouch-devel")
)

