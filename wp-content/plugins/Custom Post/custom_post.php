<?php 
/*
Plugin Name: Custom Post 
Description: custom plugin created for blog listing with pagination using shortcode 
Version: 1.0
Author: Pritesh Rajpura
*/

// Enqueue front-end styles and scripts
function my_custom_plugin_enqueue_scripts() {
    wp_enqueue_style('boostrap-style',plugin_dir_url(__FILE__) . '/assets/css/bootstrap.min.css',array(),'1.0', 'all');
    wp_enqueue_script('boostrap-js', plugin_dir_url(__FILE__) . '/assets/js/bootstrap.bundle.min.js',array('jquery'),'1.0',true  );
}
add_action('wp_enqueue_scripts', 'my_custom_plugin_enqueue_scripts');

// activated hooks create the page
register_activation_hook(__FILE__, 'create_custom_page');
function create_custom_page() {
    if(!is_page('blog-listing')) {
        $custom_page = array(
        'post_type' => 'page',
        'post_name' => 'blog-listing',
        'post_content'=>'[pixlogix_show_posts]',
        'post_title' => 'blog listing',
        'post_status' => 'publish',
        );
        wp_insert_post($custom_page);
    }
}

// deactivated hooks delete the page
register_deactivation_hook(__FILE__, 'delete_custom_page');
function delete_custom_page() {
    $page_id = get_page_by_title('blog listing');
    wp_delete_post($page_id->ID,true);
}

// Blog Listing shortcode
add_shortcode('pixlogix_show_posts','blogs_listing');
function blogs_listing($atts){

    ob_start();

    $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;

    $args = array(
        'post_type'=>'post',
        'post_status'=> 'publish',
        'posts_per_page'=>'5',
        'paged' => $paged,
    );

    $query = new Wp_query($args);

    if($query->have_posts()){ ?>
    <div class="row">
        <?php while($query->have_posts()){ $query->the_post();
            $post_image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ),'full');
            $title = get_the_title();
            $content = get_the_content(); ?>
            <div class="col-md-4">
                <div class="card">
                    <img class="card-img-top" src="<?php echo $post_image[0]; ?>" alt="Card image cap">
                    <div class="card-body">
                        <h2 class="card-title"><?php echo get_the_title(); ?></h2>
                        <p class="card-text"><?php echo wp_trim_words($content,'20',''); ?></p>
                        <a href="<?php echo get_the_permalink(); ?>" class="btn btn-primary">Read More</a>
                    </div>
                </div>
            </div>
        <?php } ?>
        <div class="">
            <?php $big = 999999999; // Need an unlikely integer for pagination
            echo $pagination = paginate_links(array(
                'base'    => str_replace($big, '%#%', esc_url(get_pagenum_link($big))),
                'format'  => '?paged=%#%',
                'current' => max(1, get_query_var('paged')),
                'total'   => $query->max_num_pages,
            )); ?>
        </div>
        <?php wp_reset_postdata();
       return ob_get_clean(); ?>
    </div>
<?php }
}