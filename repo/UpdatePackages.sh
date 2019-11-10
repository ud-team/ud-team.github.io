echo "Updating repository, this may take up to 15 seconds."

echo "Removing old packages file..."
rm -r Packages.bz2

echo "Removing old versions of the dummy packages..."
rm -r StopAnemone.deb
rm -r StopSnowboard.deb
rm -r StopWinterboard.deb
rm -r CustomBoot.deb

sleep 5

echo "Removing .DS_Store files..."
cd '/Users/gebruiker/Documents/GitHub/ud-team.github.io/repo/StopAnemone'
find . -name '.DS_Store' -type f -delete
cd '/Users/gebruiker/Documents/GitHub/ud-team.github.io/repo/StopSnowboard'
find . -name '.DS_Store' -type f -delete
cd '/Users/gebruiker/Documents/GitHub/ud-team.github.io/repo/StopWinterboard'
find . -name '.DS_Store' -type f -delete
cd '/Users/gebruiker/Documents/GitHub/ud-team.github.io/repo/CustomBoot'
find . -name '.DS_Store' -type f -delete

sleep 3

echo "Packaging dummy packages..."
cd '/Users/gebruiker/Documents/GitHub/ud-team.github.io/repo'
dpkg-deb -b StopAnemone
dpkg-deb -b StopSnowboard
dpkg-deb -b StopWinterboard
dpkg-deb -b CustomBoot

sleep 3

echo "Adding packages to repository..."
dpkg-scanpackages -m . /dev/null >Packages
bzip2 Packages

sleep 3

echo "Finished updating packages!"