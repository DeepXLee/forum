define("www_question_list", [ "throttle", "ajax", "msg" ], function(t, o, e) {
	var n = function() {
		this.__name = "QuestionList"
	};
	return n.prototype = {
			constructor : n,
			unlogin : function() {
				swal({
					title : "用户尚未登录!",
					text : '用户尚未登录，点击<a href="' + page.goto_this_page + '" target="_blank">这里</a>登录',
					html : !0,
					showConfirmButton : !1,
					allowOutsideClick : !0
				})
			},
			initFollow : function() {
				$(".prj_auto_complete").autocomplete("/project/list_projects_of_prefix", {
					minChars : 1,
					scroll : !0,
					width : 158,
					matchContains : !0,
					autoFill : !1,
					formatItem : function(t, o, e, n) {
						return o + ": " + n
					},
					formatResult : function(t, o) {
						return o
					}
				})
			},
			initTags : function() {
				this.tagsVM = new Vue({
					el : "#v-addedTags",
					data : function() {
						return {
							tags : []
						}
					}
				})
			},
			followIt : function(t) {
				var e = $(".prj_auto_complete"),
					n = e.val(),
					i = this;
				n && o.post("/action/favorite/addFollow", {
					type : t,
					tag : n
				}, function(t) {
					var o = "string" == typeof t ? JSON.parse(t) : t;
					$(".tag_tip").remove(), i.tagsVM.tags.push(o), e.val("")
				})
			},
			deleteFollow : function() {
				$(".js-tags").delegate("span", "click", function(t) {
					var e = $(this),
						n = e.parent(),
						i = 33;
					return "tag other" === n.attr("class") && (i = 34), confirm("确定取消对该标签的关注？") && o.post("/action/favorite/cancel", {
							user : page.g_user_id,
							type : i,
							id : n.data("id")
						}, function(t) {
							t && n.remove()
						}), t.preventDefault(), !1
				})
			},
			sendMsg : function(t) {
				$(".tooltipstered").tooltipster("close");
				var e = this;
				return e.g_user_id ? void o.post("/question/_widgets/_ajax_send_msg", {
					to : t
				}, function(e) {
					swal({
						title : "发送私信",
						text : e,
						html : !0,
						type : "",
						showCancelButton : !0,
						closeOnConfirm : !1,
						showLoaderOnConfirm : !0,
						confirmButtonText : "发送",
						cancelButtonText : "取消",
						allowOutsideClick : !0
					}, function() {
						var e = $("#ta_msg_content").val();
						return e ? void o.post("/action/msg/send", {
							receiver : t,
							content : e
						}, function(t) {
							var o = "string" == typeof t ? JSON.parse(t) : t;
							return 1 === o.error ? swal({
								title : "服务器消息!",
								text : o.msg,
								timer : 2e3,
								showConfirmButton : !1
							}) : void swal({
								title : "操作成功!",
								text : "私信已发送。",
								type : "success",
								timer : 2e3,
								showConfirmButton : !1
							})
						}) : swal.showInputError("私信不能为空")
					})
				}) : e.unlogin()
			},
			ajaxLoadPage : function(e, n, i) {
				function a() {
					r.show(), l = !1;var t = c.ajax_fetch_url + s;
					o.get(t, function(t) {
						return e.append(t), t.indexOf("no_more_data_flag") > -1 ? (l = !1, void r.hide()) : (c.tooltipster(), action.loadImg(), ++s, void (l = !0))
					})
				}
				var r = $("#loading-effect"),
					s = 2,
					l = !0,
					c = this;
				t.requestAnimationFrame(function() {
					if (l) {
						var t = n.scrollTop() + n.height() > i.height() - 100;
						t && a()
					}
				}, 300)
			},
			tooltipster : function() {
				var t = $("#loading-effect").html(),
					o = {
						theme : "tooltipster-shadow",
						content : t,
						contentAsHTML : !0,
						interactive : !0,
						delay : 700,
						functionInit : function(o, e) {
							var n = $(e.origin),
								i = n.data("tooltipster");
							n.attr("data-tiper", "true"), o.content(t), i && Object.keys(i).forEach(function(t) {
								o.option(t, i[t])
							})
						},
						functionBefore : function(t, o) {
							var e = $(o.origin),
								n = e.data();
							$.get(n.ajax, function(o) {
								t.content(o ? o : "读取数据异常，请稍后再试！")
							})
						},
						functionAfter : function(t, e) {
							t.destroy();
							var n = $(e.origin);
							n.tooltipster(o)
						}
					};
				$(".tooltipstered:not([data-tiper])").tooltipster(o)
			},
			followTag : function() {
				if (document.querySelector("#v_follow_tag") instanceof HTMLElement) {
					if (!this.g_user_id) return this.unlogin();
					var t = this;
					new Vue({
						el : "#v_follow_tag",
						data : function() {
							return {
								id : t.id,
								type : t.type,
								user_code : t.user_code,
								operation : t.operation,
								count : 0
							}
						},
						methods : {
							follow : function() {
								var t = this;
								o.post("/action/favorite/addV2", {
									user_code : this.$data.user_code,
									id : this.$data.id,
									type : this.$data.type
								}, function(o) {
									var e = "string" == typeof o ? JSON.parse(o) : o,
										n = "关注" == t.$data.operation ? "取消关注" : "关注";
									return e.result ? (t.$data.operation = n, t.$data.count = e.data.favoriteCount, swal({
										title : "服务器消息!",
										text : e.msg,
										type : "success",
										timer : 2e3,
										showConfirmButton : !1
									})) : swal({
										title : "服务器消息!",
										text : e.msg,
										timer : 2e3,
										showConfirmButton : !1
									})
								})
							}
						}
					})
				}
			},
			ready : function() {
				this.g_user_login && e.polling(this.polling_msg_tips_url)
			},
			initFollowRecommendTag : function() {
				if (!(document.querySelector("#form_follow_recommend_tag") instanceof HTMLElement)) return this;
				new Vue({
					el : "#form_follow_recommend_tag",
					data : function() {
						return {
							ids : 0,
							types : ""
						}
					},
					methods : {
						checkAll : function() {
							$("#select-all-tags").is(":checked") ? $("input[name='ids']").prop("checked", !0) : $("input[name='ids']").prop("checked", !1)
						},
						followRecommendTag : function() {
							var t = new Array,
								o = new Array;
							return $("#recommend-tag .check:checked").each(function() {
									t.push($(this).val()), "tag other" == $(this).next("a").attr("class") ? o.push(34) : o.push(33)
								}), 0 == t.length ? (alert("请先选择标签！"), !1) : void jQuery.ajax({
									type : "POST",
									url : page.form_follow_recommend_tag_action_url,
									data : "ids=" + t + "&types=" + o,
									dataType : "text",
									success : function(t) {
										swal({
											title : "服务器消息!",
											text : t,
											type : "success",
											timer : 2e3,
											showConfirmButton : !1
										}, function() {
											window.location.reload()
										})
									}
								})
						}
					}
				})
			},
			goToTop : function() {
				$(window).on("scroll", function() {
					$(this).scrollTop() > 0 ? $(".tool-top").css("display", "block") : $(".tool-top").css("display", "none")
				}), $(".tool-top").on("click", function(t) {
					return t.preventDefault(), $("html,body").animate({
							scrollTop : 0
						}, 200), !1
				}), $(".tool-top").on("mouseover", function(t) {
					$(".tool-top .icon").slideUp()
				}), $(".tool-top").on("mouseleave", function(t) {
					$(".tool-top .icon").slideDown()
				})
			},
			register : function() {
				AOS.init();
				var t = $(window),
					o = $(document);
				this.ajaxLoadPage($("#v-question-list"), t, o), this.initFollow(), this.initTags(), this.deleteFollow(), this.tooltipster(), this.followTag(), this.initFollowRecommendTag(), this.goToTop()
			}
		}, n
});



function timeago(dateTimeStamp){   //dateTimeStamp是一个时间毫秒，注意时间戳是秒的形式，在这个毫秒的基础上除以1000，就是十位数的时间戳。13位数的都是时间毫秒。
    var minute = 1000 * 60;      //把分，时，天，周，半个月，一个月用毫秒表示
    var hour = minute * 60;
    var day = hour * 24;
    var week = day * 7;
    var halfamonth = day * 15;
    var month = day * 30;
    var now = new Date().getTime();   //获取当前时间毫秒
    console.log(now)
    var diffValue = now - dateTimeStamp;//时间差

    if(diffValue < 0){
        return;
    }
    var minC = diffValue/minute;  //计算时间差的分，时，天，周，月
    var hourC = diffValue/hour;
    var dayC = diffValue/day;
    var weekC = diffValue/week;
    var monthC = diffValue/month;
    if(monthC >= 1 && monthC <= 3){
        result = " " + parseInt(monthC) + "月前"
    }else if(weekC >= 1 && weekC <= 3){
        result = " " + parseInt(weekC) + "周前"
    }else if(dayC >= 1 && dayC <= 6){
        result = " " + parseInt(dayC) + "天前"
    }else if(hourC >= 1 && hourC <= 23){
        result = " " + parseInt(hourC) + "小时前"
    }else if(minC >= 1 && minC <= 59){
        result =" " + parseInt(minC) + "分钟前"
    }else if(diffValue >= 0 && diffValue <= minute){
        result = "刚刚"
    }else {
        var datetime = new Date();
        datetime.setTime(dateTimeStamp);
        var Nyear = datetime.getFullYear();
        var Nmonth = datetime.getMonth() + 1 < 10 ? "0" + (datetime.getMonth() + 1) : datetime.getMonth() + 1;
        var Ndate = datetime.getDate() < 10 ? "0" + datetime.getDate() : datetime.getDate();
        var Nhour = datetime.getHours() < 10 ? "0" + datetime.getHours() : datetime.getHours();
        var Nminute = datetime.getMinutes() < 10 ? "0" + datetime.getMinutes() : datetime.getMinutes();
        var Nsecond = datetime.getSeconds() < 10 ? "0" + datetime.getSeconds() : datetime.getSeconds();
        result = Nyear + "-" + Nmonth + "-" + Ndate
    }
    return result;
}