define("www_question_ask",["throttle","ajax","objhelper","msg"],function(t,o,e,i){var n=function(){this.__name="QuestionAsk"};return n.prototype={constructor:n,initCKEditor:function(t){this.editor=CKEDITOR.replace("body",{height:231,width:700,extraPlugins:"autogrow,uploadimage,flash,video",autoGrow_onStartup:!0,autoGrow_minHeight:231,autoGrow_maxHeight:1e3}),this.editor.on("change",function(o){t.form.body=o.editor.getData()})},initAskForm:function(t){if(!(document.querySelector("#v-askForm")instanceof HTMLElement))return this;var i=this,n={content:"",id:0,num:0,pool:0,sort_order:0};this.form=new Vue({el:"#v-askForm",validators:{num:{check:function(t){return/^[1-9][0-9]*$/.test(t)||"0"===t}},atwho:{check:function(t,o){return 0===o||/^@\S+$/.test(t)}}},data:function(){return{form:{user_code:"",userId:-1,id:-1,catalog:"",askUserId:0,subject:"",relatedProject:[],body:"",notifyMethod:0,expertPresent:0,closeAnswer:"",togglePoll:-1,independentPoll:-1,expiration:0,visible:0,scoreLimit:0,postsLimit:0,multiple:0,maxSelect:0,pollOption:[],pollOptionId:[],verifyCode:""},pollId:0,pollOptions:[],relatedProjectTemp:""}},methods:{addSoftware:function(){var t=this.relatedProjectTemp;t&&(this.form.relatedProject.push(t),this.relatedProjectTemp="")},removeSoftware:function(t){this.form.relatedProject.splice(t,1)},addPollOptions:function(){this.pollOptions.push(e.copy(n))},removePollOptions:function(t){var e=this,i=this.pollOptions[t];return 0===i.id?e.pollOptions.splice(t,1):void swal({title:"危险操作(即将删除一条问答)",text:"您正在执行一项危险的操作!删除问答后，数据将无法恢复！如果您仍有疑虑，请点击取消项。",type:"warning",showCancelButton:!0,confirmButtonColor:"#DD6B55",confirmButtonText:"Yes,删除!",cancelButtonText:"No,取消!",closeOnConfirm:!1},function(){o.post("/action/pool/del_option",{id:e.form.id,pid:e.pollId,opid:i.id},function(o){e.pollOptions.splice(t,1),swal({title:"操作成功!",text:"删除成功",type:"success",timer:2e3,allowOutsideClick:!0,showConfirmButton:!1})})})},submitForm:function(){var t,e=this,i=e.form;return i.subject?i.body?($("#submit-question-btn").attr("disabled",!0),e.pollOptions.forEach(function(t){"string"==typeof t.content&&t.content.replace(/(^\s*)|(\s*$)/g,"")&&(i.pollOptionId.push(t.id),i.pollOption.push(t.content))}),t=$("[data-name='question-ask-url']").attr("data-value"),void o.post(t,i,function(t){var o="string"==typeof t?JSON.parse(t):t;return o.result?swal({title:"操作成功!",text:o.msg,type:"success",timer:2e3,allowOutsideClick:!1,showConfirmButton:!1,allowEscapeKey:!0},function(){window.onbeforeunload=null,window.location.href="/question/my"}):(swal({title:"操作失败!",text:o.msg,type:"error",timer:2e3,allowOutsideClick:!0,showConfirmButton:!1}),void $("#submit-question-btn").attr("disabled",!1))},!0)):void swal({title:"",text:"内容不能为小于10个字",type:"error",timer:2e3,allowOutsideClick:!0,showConfirmButton:!1}):void swal({title:"",text:"标题不能为空",type:"error",timer:2e3,allowOutsideClick:!0,showConfirmButton:!1})}},ready:function(){var t=this;window.pollOptions&&pollOptions instanceof Array&&(t.pollOptions=pollOptions),window.questionTags&&questionTags instanceof Array&&(t.form.relatedProject=questionTags),i.initCKEditor(t)}})},autoComplete:function(){$("#relatedProject").autocomplete("/project/list_projects_of_prefix",{minChars:1,scroll:!0,width:310,matchContains:!0,autoFill:!1,formatItem:function(t,o,e,i){return o+": "+i},formatResult:function(t,o){return o}})},closeWindow:function(){window.onbeforeunload=function(){var t,o=$("#v-askForm"),e=$(o).find("input[name=subject]").val().trim(),i=$(o).find("textarea[name=body]").val().trim();if(""!=e||""!=i)return t="内容尚未保存，您确定要关闭此页页？"}},register:function(){var t=new Vue;this.initAskForm(t),this.autoComplete(),this.closeWindow(),this.g_user_login&&i.polling(this.polling_msg_tips_url)}},n});