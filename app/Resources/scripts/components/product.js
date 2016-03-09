/*
 * This file is part of the ONGR package.
 *
 * (c) NFQ Technologies UAB <info@nfq.com>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

(function($, window) {

    var Product = function() {

        var setApiUrl = function(id) {
            return Routing.generate('ongr_api_v3_product_get',
                {documentId: id}
            );
        };

        return {
            get: function(id) {
                return $.ajax({
                    url: setApiUrl(id),
                    method: 'GET'
                });
            }
        };
    };

    window.Ongr = window.Ongr || {};
    window.Ongr.Product = Product;

})(jQuery, window);

