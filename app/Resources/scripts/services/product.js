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

        var setApiGetProductUrl = function(id) {
            return Routing.generate('ongr_api_v3_product_get',
                {documentId: id}
            );
        };

        var setApiGetProductVariantUrl = function(id) {
            return Routing.generate('ongr_api_v3_product_get_variant',
                {
                    documentId: id
                }
            );
        };

        return {
            get: function(id) {
                return $.ajax({
                    url: setApiGetProductUrl(id),
                    method: 'GET'
                });
            },
            getVariants: function(id) {
                return $.ajax({
                    url: setApiGetProductVariantUrl(id),
                    method: 'GET'
                });
            }
        };
    };

    window.Ongr = window.Ongr || {};
    window.Ongr.Services = {Product: Product};

})(jQuery, window);
