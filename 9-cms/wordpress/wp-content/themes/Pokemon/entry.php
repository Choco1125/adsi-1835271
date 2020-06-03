<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
<header>
<?php if ( is_singular() ) {
echo '<h3 class="entry-title">';
} else {
echo '<h3 class="entry-title">';
} ?>
<?php the_title() ?>
<?php if ( is_singular() ) {
echo '</h3>';
} else {
echo '</h3>';
} ?>

<?php get_template_part( 'entry',('content') ); ?>
<?php if ( is_singular() ) { get_template_part( 'entry-footer' ); } ?>
</article>