// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery-1.11.1.min
//= require jquery_ui/jquery-ui.min
//= require admin-forms/js/jquery.validate.min
//= require admin-forms/js/jquery.steps.min
//= require admin-forms/js/additional-methods.min
//= require canvasbg/canvasbg
//= require datatables/media/js/jquery.dataTables
//= require datatables/extensions/TableTools/js/dataTables.tableTools.min
//= require datatables/extensions/ColReorder/js/dataTables.colReorder.min
//= require datatables/extensions/FixedColumns/js/dataTables.fixedColumns
//= require datatables/media/js/dataTables.bootstrap
//= require mixitup/jquery.mixitup.min
//= require holder/holder.min
//= require magnific/jquery.magnific-popup
//= require admin-forms/js/jquery.spectrum.min
//= require admin-forms/js/jquery.stepper.min
//= require globalize/globalize.min
//= require fullcalendar/lib/moment.min
//= require fullcalendar/fullcalendar.min
//= require duallistbox/jquery.bootstrap-duallistbox.min
//= require maxlength/bootstrap-maxlength.min
//= require select2/select2.min
//= require typeahead/typeahead.bundle.min
//= require daterange/daterangepicker
//= require datepicker/js/bootstrap-datetimepicker
//= require summernote/summernote.min
//= require jquerymask/jquery.maskedinput.min
//= require tagmanager/tagmanager
//= require highcharts/highcharts
//= require sparkline/jquery.sparkline.min
//= require jvectormap/jquery.jvectormap.min
//= require jvectormap/assets/jquery-jvectormap-us-lcc-en
//= require utility/utility
//= require demo/demo
//= require main
//= require demo/widgets
//= require jquery_ujs
//= require turbolinks


 $(function(){

   

    $('.table').on('draw.dt', function() {
      $('.navbar-color input[type=radio]:checked').click();
    });

 $('.navbar-color input[type=radio]').click(function() {
      var btnData = $(this).data('form-skin');
      $('.navbar-color input[type=radio]').removeClass('item-active');
      $(this).addClass('item-active')

      $('.admin-form').each(function(i, e) {
        var skins = 'theme-primary theme-info theme-success theme-warning theme-danger theme-alert theme-system theme-dark';
        var panelSkins = 'panel-primary panel-info panel-success panel-warning panel-danger panel-alert panel-system panel-dark';
        $(e).removeClass(skins).addClass('theme-' + btnData);
        $('.admin-form').find('.panel').removeClass(panelSkins).addClass('panel-' + btnData);
      });

      $(".index").each(function(i, e) {
        if ($(e).hasClass('block')) {
          $(e).removeClass().addClass('block mt15 option option-' + btnData);
        } else {
          $(e).removeClass().addClass('panel-heading index index-'+btnData);
        }
      });

      $(".dash_panel").each(function(i, e) {
        $(e).removeClass().addClass('panel dash_panel panel-'+btnData);
      });

      $('.cursor').each(function(i, e) {
        if ($(e).hasClass('block')) {
          $(e).removeClass().addClass('block mt15 option option-' + btnData);
        } else {
          $(e).removeClass().addClass('input-group-addon cursor cursor-' + btnData);
        }
      });

      $('.icon').each(function(i, e) {
        var iconskins = 'glyphicon-primary glyphicon-info glyphicon-success glyphicon-warning glyphicon-danger glyphicon-alert glyphicon-system glyphicon-dark';
        if ($(e).hasClass('block')) {
          $(e).removeClass().addClass('block mt15 option option-' + btnData);
        } else {
          $(e).removeClass(iconskins).addClass('icon glyphicon-' + btnData);
        }
      });

      $('.nav-tabs-color').each(function(i, e) {
        var tabskins = 'tab-primary tab-info tab-success tab-warning tab-danger tab-alert tab-system tab-dark';
        if ($(e).hasClass('block')) {
          $(e).removeClass().addClass('block mt15 option option-' + btnData);
        } else {
          $(e).removeClass(tabskins).addClass('tab-' + btnData);
        }
      });

      $('.admin-form').find('.option').each(function(i, e) {
        if ($(e).hasClass('block')) {
          $(e).removeClass().addClass('block option option-' + btnData);
        } else {
          $(e).removeClass().addClass('option option-' + btnData);
        }
      });

      $(".admin-form").find('.switch').each(function(i, ele) {
        if ($(ele).hasClass('switch-round')) {
          if ($(ele).hasClass('block')) {
            $(ele).removeClass().addClass('block mt15 switch switch-round switch-' + btnData);
          } else {
            $(ele).removeClass().addClass('switch switch-round switch-' + btnData);
          }
        } else {
          if ($(ele).hasClass('block')) {
            $(ele).removeClass().addClass('block mt15 switch switch-' + btnData);
          } else {
            $(ele).removeClass().addClass('switch switch-' + btnData);
          }
        }

      });
      var buttonskins = 'btn-primary btn-info btn-success btn-warning btn-danger btn-alert btn-system btn-dark';
      $('.admin-form').find('.btn').removeClass(buttonskins).addClass('btn btn-xs btn-' + btnData);
      $('.btn').removeClass(buttonskins).addClass('btn btn-xs btn-' + btnData);
      $('.admin-form').find('.button').removeClass(buttonskins).addClass('button btn-' + btnData);
      $('.btn-rounded').removeClass(buttonskins).addClass('btn btn-rounded btn-xs btn-' + btnData);
    });


  function isNumber(evt, element) {
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (
      (charCode != 45 || $(element).val().indexOf('-') != -1) &&      // “-” CHECK MINUS, AND ONLY ONE.
      (charCode != 46 || $(element).val().indexOf('.') != -1) &&      // “.” CHECK DOT, AND ONLY ONE.
      (charCode < 48 || charCode > 57))
      return false;
    return true;
  }
  
  });
 function remove_sub_topic_fields(link){
  $(link).prevAll("input[type=hidden]").first().val("1");
  $(link).parent().parent().remove();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g");
  //$(link).parent().before(content.replace(regexp, new_id));  
  $(".sections-wrapper").append(content.replace(regexp, new_id));
  $('.navbar-color input[type=radio]:checked').click();
}

function add_fields_3(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g");
  //$(link).parent().before(content.replace(regexp, new_id));  
  $(".sections-wrapper78").append(content.replace(regexp, new_id));
  $('.navbar-color input[type=radio]:checked').click();
}

function add_fields_2(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g");
  //$(link).parent().before(content.replace(regexp, new_id));  
  // $(".sections-wrapper2").append(content.replace(regexp, new_id));
   $(link).parent().before(content.replace(regexp, new_id));  
  $('.navbar-color input[type=radio]:checked').click();
}

function add_employee_experience_fields(link,association,content){
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g");
  $(link).parent().before(content.replace(regexp, new_id));  
}

function remove_fields_1(link) {
  $(link).prevAll("input[type=hidden]").first().val("1");
    $(link).closest(".fields").hide();
    $(".fields input[type=text]").filter(':hidden').removeAttr("required");
  $(".fields input[type=time]").filter(':hidden').removeAttr("required");
}

function remove_fields_2(link) {
  $(link).prevAll("input[type=hidden]").first().val("1");
    $(link).closest(".fields").hide();
    $(".fields input[type=text]").filter(':hidden').removeAttr("required");
  $(".fields input[type=time]").filter(':hidden').removeAttr("required");
}

function remove_daily_plan_fields(link) {
  $(link).prevAll("input[type=hidden]").first().val("1");
  $(link).closest(".fields").hide();
  $('.fields textarea').filter(':hidden').removeAttr('required');
  $('.fields input[type=date]').filter(':hidden').removeAttr('required');
}

function add_fields_1(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g");
  //$(link).parent().before(content.replace(regexp, new_id));  
  $(".sections-wrapper1").append(content.replace(regexp, new_id));
  $('.navbar-color input[type=radio]:checked').click();
}
function remove_fields_sub_type(link) {
  $(link).prevAll("input[type=hidden]").first().val("1");
  $(".fields input[type=text]").removeAttr("required");
  $(".fields input[type=time]").removeAttr("required");
  $(link).closest(".fields").hide();
}

function add_fields_sub_type(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).parent().before(content.replace(regexp, new_id));  
  $('.navbar-color input[type=radio]:checked').click();
}
function remove_fields_sub_category(link) {
  $(link).prevAll("input[type=hidden]").first().val("1");
  $(".fields input[type=text]").removeAttr("required");
  $(".fields input[type=time]").removeAttr("required");
  $(link).closest(".fields").hide();
}

function add_fields_sub_category(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).parent().before(content.replace(regexp, new_id));  
  $('.navbar-color input[type=radio]:checked').click();
}
function remove_fields_e(link) {
  $(link).prevAll("input[type=hidden]").first().val("1");
  $(".fields input[type=text]").removeAttr("required");
  $(".fields input[type=time]").removeAttr("required");
  $(link).closest(".fields").hide();
}

function add_fields_e(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).parent().before(content.replace(regexp, new_id));  
  $('.navbar-color input[type=radio]:checked').click();
}
setTimeout("$('.alert').fadeOut('slow')", 10000);