def moveTower(height, fromPole, toPole, withPole):
    if height >= 1:
        # Move top n-1 disks from source to auxiliary
        moveTower(height - 1, fromPole, withPole, toPole)
        # Move the bottom disk from source to destination
        moveDisk(fromPole, toPole)
        # Move the n-1 disks from auxiliary to destination
        moveTower(height - 1, withPole, toPole, fromPole)

def moveDisk(fp, tp):
    print("moving disk from", fp, "to", tp)

# Call the function for 2 disks
moveTower(2, "A", "B", "C")
