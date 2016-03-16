$(document).ready(function(){
  $('.jobs-table').DataTable();

  var clicked = 100;
  $("#addNewFlag").click(function () {
    clicked++;
    row = '<input class="input-field" type="text" name="job[response_flag_meta][' + clicked + '][match_value]" style="display:inline"><select name="job[response_flag_meta][' + clicked + '][match_type]" style="display:inline"><option value="string">String</option><option value="regex">Regex</option></select><br />';

      $("#response_flags").append(row);
      return false;
  });
    
  $("#job_attack_type").change(function () {
    var attack_type = $(this).val();
    
    if(attack_type == "dictionary") { 
      $("#dictionary").show();
      $("#charset").hide();
    } else if(attack_type == "bruteforce") {
      $("#charset").show();
      $("#dictionary").hide();
    } else {
      $("#charset").hide();
      $("#dictionary").hide();
    }
  });
});
