echo "Updating repository, this may take up to 15 seconds."

echo "Removing old packages file..."
rm -r Packages.bz2

sleep 3

echo "Adding packages to repository..."
dpkg-scanpackages -m . /dev/null >Packages
bzip2 Packages

sleep 3

echo "Finished updating packages!"