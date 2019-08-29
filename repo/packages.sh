cd '/Users/gebruiker/Documents/GitHub/ud-team.github.io/repo/StopAnemone'
find . -name '.DS_Store' -type f -delete
cd '/Users/gebruiker/Documents/GitHub/ud-team.github.io/repo/StopSnowboard'
find . -name '.DS_Store' -type f -delete
cd '/Users/gebruiker/Documents/GitHub/ud-team.github.io/repo/StopWinterboard'
find . -name '.DS_Store' -type f -delete
cd '/Users/gebruiker/Documents/GitHub/ud-team.github.io/repo/ClassicAppleBoot'
find . -name '.DS_Store' -type f -delete

cd '/Users/gebruiker/Documents/GitHub/ud-team.github.io/repo'
dpkg-deb -b StopAnemone
dpkg-deb -b StopSnowboard
dpkg-deb -b StopWinterboard
dpkg-deb -b ClassicAppleBoot
