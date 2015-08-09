-- First argument - slides count
-- Second argument - code background path

on run argv
	tell application "Keynote"
		tell the front document
			set theSlide to slide (first item of argv as number)
			set theImage to second item of argv as POSIX file
			set docWidth to its width
			set docHeight to its height

			tell theSlide
				make new image with properties {opacity:80, file:theImage, width:docWidth - 180, position:{90, 240}}
			end tell
		end tell
	end tell
end run