as yet unclassified
initializeEvents
	"This well be in contention with several users performing events at the same time.
	There may be a need to use a Reduced Conflict class, or disable event logging.
	To manage memory, this variable may need to be clustered in its own bucket, or perhaps
	all event logging should be moved to their own class to make sure they are not sitting
	in the Shared Page Cache."
	events := Array new