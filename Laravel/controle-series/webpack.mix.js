const mix = require('laravel-mix');
mix.disableNotifications()


mix
    .sass('resources/css/app.scss', 'public/css')
