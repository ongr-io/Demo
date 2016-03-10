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
        var selectors = {
            //productGallery:      '.product-gallery',
            productGalleryItem:  '#product-gallery-item',
            smoothProducts:      '.product-gallery .product-media',
            productId:           '.product-variants .product-id',
            variants:            '.product-variants .product-variant',
            colorSelector:       '.product-color-name',
            materialSelector:    '.product-material-name'
        };

        var colorSelected, materialSelected;

        var bindSmoothProducts = function(smoothProducts) {
            $(smoothProducts).smoothproducts();
        };

        var focusVariant = function(obj) {
            $(selectors.variants).removeClass('active');
            $(obj).addClass('active');
        };

        var bindProductVariantSelected = function(variants) {
            var product = new Ongr.Services.Product();
            var productId = $(selectors.productId).text();
            $(variants).each(function(i, variant) {
                $(variant).unbind('click');
                $(variant).bind('click', function() {
                    focusVariant(this);
                    bookmarkVariantSelected(this);
                    product.getVariants(productId).then(loadVariant);
                });
            });
        };

        var bookmarkVariantSelected = function(obj) {
            var temp = $(obj).find(selectors.colorSelector).text();
            colorSelected = (temp != '') ? temp: colorSelected;
            temp = $(obj).find(selectors.materialSelector).text();
            materialSelected = (temp != '') ? temp: materialSelected;
        };

        var checkVariantSelected = function(variants) {
            if (!colorSelected) {
                colorSelected = variants[0]['color']['en']['text'];
            }
            if (!materialSelected) {
                materialSelected = variants[0]['material']['en']['text'];
            }
        };

        var mapVariant = function(variant) {
            if(colorSelected != variant['color']) {
                return false;
            } else if (materialSelected != variant['material']) {
                return false;
            }

            return true;
        };

        var loadVariantImages = function(images) {
            $(selectors.smoothProducts).empty();
            $.each(images, function(i, image) {
                var link = $('<a>'), img = $('<img>');
                link.attr('href', image['thumbnail']);
                img.attr('src', image['image']);
                link.append(img);
                $(selectors.smoothProducts).append(link);
            });

            bindSmoothProducts(selectors.smoothProducts);
        };

        var loadVariant = function(variants) {
            if($.isArray(variants)) {
                checkVariantSelected(variants);
                $.each(variants, function(i, variant) {
                    if(mapVariant({
                        'color': variant['color']['en']['text'],
                        'material': variant['material']['en']['text']
                    })) {
                        loadVariantImages(variant['images']);
                        return false;
                    }
                })
            }
        };

        return {
            init: function() {
                bindSmoothProducts(selectors.smoothProducts);
                bindProductVariantSelected(selectors.variants);
            }
        };
    };

    window.Ongr = window.Ongr || {};
    window.Ongr.Pages = {Product: Product};

})(jQuery, window);
