
var last_click_input;
$(function(){
  //$(".ipt_text, .tableInput").live("mouseover",function(){$(this).addClass("ipt_text_active")}).live("mouseout",function(){$(this).removeClass("ipt_text_active")});
  $(".ipt_text, .ipt_text_w, .tableInput, .tableInput_s").live("click",function(){
              if(last_click_input!=this){
                $(this).addClass("ipt_text_active");
                $(last_click_input).removeClass("ipt_text_active");
                last_click_input = this;
                //if(this.tagName == 'SELECT') $(this).click();
              }
          });
});
