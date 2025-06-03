<?php

define('DB_NAME', 'wordpress');
define('DB_USER', 'wordpress');
define('DB_PASSWORD', 'ZigZag16');
define('DB_HOST',  'mariadb:3306');
define('DB_CHARSET', 'utf8' );
define('DB_COLLATE', '');

define('AUTH_KEY',         'Y#X+?sts>?5}Zmy*+:7Q<>r^blOB4GZt?=x;ri86HD|:1D`701_$J2y_{GF4n9(#');
define('SECURE_AUTH_KEY',  'B^P Jb}L32=nDmPI=e5O9o%Rj%m[t)9ez3KI#cZaw:jJ;dn>Kr9jko|*,</5dY#k');
define('LOGGED_IN_KEY',    'c4ZyY+CukX22,:XG^cqiz~pcw7L!=!^z5:- ^~M,bC]n!tbQZ9RU-6i^/N9<:+af');
define('NONCE_KEY',        'b&PBm/*&RZx`F~=|i5PPMt6J5u`~+Je^{2EtcXeao|hha_O-S%|heLig@#AHc~d,');
define('AUTH_SALT',        '$b(}23N-+lAwl}~tooDAKj$]x^WnPg1]c+9YP;+)Sd%_SgQCCcG-_}CR]0#Be2^Y');
define('SECURE_AUTH_SALT', 'bU=7W-[hlc*DUSxFHY#ny~SXg-#gb-?Fr#%YYb*4uz|N_8D9I>*M[W~`&TgE9s-y');
define('LOGGED_IN_SALT',   ']S`R&H`OjZq(Ktb]0|:_HpJ/Tpa-o_FM3u}4M|n+^]QRMF,l]LLXJ|T5+B)Ht_ZD');
define('NONCE_SALT',       '7,`L!a9STD0+<xM^jj[PO+B|{ yqFU%a%9jVPo)eoQZ6eL|(E(X(b%|_9AzXp_A{');

define( 'WP_DEBUG', true );
$table_prefix = 'wp_';
// Définir explicitement l'URL du site pour éviter des problèmes de récupération de HTTP_HOST
if ( ! defined( 'WP_HOME' ) ) {
    define('WP_HOME', getenv('DOMAIN_NAME') ? getenv('DOMAIN_NAME') : 'http://localhost');
}
if ( ! defined( 'WP_SITEURL' ) ) {
    define('WP_SITEURL', getenv('DOMAIN_NAME') ? getenv('DOMAIN_NAME') : 'http://localhost');
}
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';