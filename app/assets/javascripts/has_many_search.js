// belongs_to form
$(function() {
  $(".field-unit--has-many-search select").each(function initializeSelectize(index, element) {
    var $element = $(element);
    $element.selectize({
      valueField: 'id',
      labelField: 'dashboard_display_name',
      searchField: 'dashboard_display_name',
      create: false,
      searchUrl: $element.data('url') + '?search=',
      limitPerPage: $element.data('limit'),

      load: function(query, callback) {
        if (!query.length) return callback();
        var searchUrl = this.settings.searchUrl;
        var limit = this.settings.limitPerPage;
        $.ajax({
          url: searchUrl + encodeURIComponent(query) + '&per_page=' + encodeURIComponent(limit),
          type: 'GET',
          error: function() {
            callback();
          },
          success: function(res) {
            callback(res.resources);
          }
        });
      },
    });
  });
});
