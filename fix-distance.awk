# Syntax:
# 	<DistanceMeters>5880.140137</DistanceMeters>
#

/<DistanceMeters>[0-9]+\.[0-9]+<\/DistanceMeters>/ {
	distance=$0
	n = gsub(/[ 	]*<DistanceMeters>|<\/DistanceMeters>[ 	]*$/, "", distance)
	newdist = sprintf("%f", distance * 0.89)

	sub(distance, newdist, $0)
	print $0
	next
}

{
	print $0
	next
}
