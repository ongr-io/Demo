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

    var Loader = function(loaderContainer) {
        var container = loaderContainer;
        var loaderTmpl = "<div class='loader'>Loading</div>";

        return {
            start: function() {
                $(container).append(loaderTmpl);
                $(container).addClass('loader-container');
            },
            stop: function() {
                $(container).find('.loader').remove();
                $(container).removeClass('loader-container');
            }
        };
    };

    window.Ongr = window.Ongr || {};
    window.Ongr.Components = {Loader: Loader};

})(jQuery, window);
