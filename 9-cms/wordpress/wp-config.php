<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'cms' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '2ShT7]y}+t+S!Hr?H|:O3<yW!_b>#Lp7N~.ROrp}w_&JYnEW<E.F`Cj7nR*D_,Ij' );
define( 'SECURE_AUTH_KEY',  'V>7U1JD[{jNGF},[rA*5x19j?4;81&S>Ldx]RC$fJqQF4@c)6+E0x! &6<_Le9R_' );
define( 'LOGGED_IN_KEY',    ' ]@2T=&!B+UF&Afor3uVzMYIo8g^!/jG7t2kbuZ=R,0ovSg[lunC#,m[ $UvUsv{' );
define( 'NONCE_KEY',        'jK+c0eq5ek8oY[=n,|Is}%C/d)/(f7xiz@+{3HsIO-z%LoBwBZ4poThEHH}58b(K' );
define( 'AUTH_SALT',        '8*NN7m.[Mw`)|wB//_AE+uLWsMl9~/c}x.;{jeczSWD^&bd2bX-Nk[?&Xnw7Wu0|' );
define( 'SECURE_AUTH_SALT', 'L0)7ukqV]I1,!IRSkx`:{^(e1/RQ??NTYp8DNVvGOmbAzd~IW{`N<3*cgI`ZJvg:' );
define( 'LOGGED_IN_SALT',   'LJgbhZGRNj[=kkpbx01+~67+dnSUmsCoBE)Su!lpL]) RrXhYos99>BGdgM)cLL~' );
define( 'NONCE_SALT',       'CXLU&x=0ujuf5EA|ju-1nN+Og7~@VpAU}T~N>.9zK!IgAajt(t*dAfNLjGmLwM^;' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

define('FS_METHOD', 'direct');

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
