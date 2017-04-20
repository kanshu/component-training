cd /mnt/project
cp /mnt/project/web/sites/default/settings.vm.php /mnt/project/web/sites/default/settings.php
composer install --no-progress --profile --prefer-dist
