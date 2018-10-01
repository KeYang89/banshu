<?php
$view->style('superslides', 'slideshow-widget:app/css/superslides.css');

// TODO: Only load if selected in the config
$view->script('extra-effects-slides', 'slideshow-widget:app/js/jquery.animate-enhanced.js', 'jquery');
$view->script('superslides', 'slideshow-widget:app/js/jquery.superslides.js', 'extra-effects-slides');
?>
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
<div id="slideshowWindow" <?php if($config != null): ?> style="height: <?= $config['height'] ?>px;" <?php endif; ?>>
    <div class="loading-container">
        <div class="pulse"></div>
    </div>
    <div id="slides">
        <ul class="slides-container">
            <?php
                foreach($images as $image):
                    if($image == null) continue;
                    ?>
                    <li>
                        <img src="<?= $image['src'] ?>" alt="<?= $image['alt'] ?>">

                        <?php if(key_exists('header', $image) || key_exists('text', $image)): ?>
                            <div class="text-overlay">
                                <?php if(key_exists('header', $image) && strlen($image['header']) > 0): ?>
                                    <h1 class="header" <?= key_exists('color', $image) ? 'style="color: '.$image['color'].'; border-color: '.$image['color'].';"' : '' ?>>
                                        <?= $image['header'] ?>
                                    </h1>
                                <?php endif; ?>

                                <?php if(key_exists('text', $image) && strlen($image['text']) > 0): ?>
                                    <div class="text" <?= key_exists('color', $image) ? 'style="color: '.$image['color'].'; border-color: '.$image['color'].';"' : '' ?>>
                                        <?= $image['text'] ?>
                                    </div>
                                <?php endif; ?>
                            </div>
                        <?php endif; ?>
                    </li>
                    <?php
                endforeach;
            ?>

        </ul>
    </div>
</div>

<script>
    $(function () {
        $('#slides').superslides({
            animation: '<?= key_exists('animation', $config) ? $config['animation'] : 'slide' ?>',
            animation_speed: '<?= key_exists('animation_speed', $config) ? $config['animation_speed'] : 'normal' ?>',
            animation_easing: 'linear',
            play: <?= key_exists('time_interval', $config) ? $config['time_interval'] : 2500 ?>,
            pagination: <?= key_exists('pagination', $config) ? $config['pagination'] : true ?>,
            inherit_height_from: $('#slideshowWindow')
        });
    });
</script>