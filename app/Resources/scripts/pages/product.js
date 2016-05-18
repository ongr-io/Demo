/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

"strict mode";

(function($, window) {

    var Product = function() {
        var locale = appLocale;
        var selectors = {
            images:      '.image-select',
            mainImage:   '.product-image',
        };

        var bindImageSlider = function(images, mainImage) {
            $(images).on('click', function(){
                $(mainImage).attr('src', $(this).attr('src'));
            });
        };
        return {
            init: function() {
                bindImageSlider(selectors.images, selectors.mainImage);
            }
        };
    };

    window.Ongr = window.Ongr || {};
    window.Ongr.Pages = {Product: Product};

})(jQuery, window);
