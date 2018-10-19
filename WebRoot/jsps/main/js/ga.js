!(function(t) {
	var n = function() {
		this.handlers = {}
	};
	n.prototype = {
		constructor : n,
		addHandler : function(t, n) {
			"undefined" == typeof this.handlers[t] && (this.handlers[t] = []), this.handlers[t].push(n)
		},
		emit : function(t) {
			t.target || (t.target = this);
			var n = this.handlers[t.type];
			n instanceof Array && n.forEach(function(n) {
				"function" == typeof n && n(t)
			})
		},
		removeHandler : function(t, n) {
			var e,
				i,
				r;
			if (this.handlers[t] instanceof Array)
				for (e = this.handlers[t], i = 0, r = e.length; i < r; ++i)
					if ("function" == typeof e[i] && e[i] === n) {
						e.splice(i, 1);break
			}
		}
	}, t.CJLEvent = new n
}(window)), (function(t, n, e, i) {
	var r,
		o = function(t) {
			this.__element = t, this.__options = {}, this.__tagTraceid = "data-traceid", this.__tagTracepid = "data-tracepid"
		};
	o.version = "v1.0.3", o.of = function(t) {
		if (!(t instanceof HTMLElement))
			throw new Error("Ga must need a HTMLElement instance!");
		return new o(t)
	}, o.prototype = {
		constructor : o,
		post : function(t, e, i) {
			var r,
				o = this.getURL(t, e, i);
			o && (r = n.createElement("img"), r.setAttribute("src", o), r.setAttribute("style", "display:none;"), n.body.appendChild(r), r.addEventListener("load", function() {
				n.body.removeChild(r)
			}), r.addEventListener("error", function() {
				n.body.removeChild(r)
			}))
		},
		getId : function(t) {
			return t.getAttribute(this.__tagTraceid)
		},
		getPid : function(t) {
			return t.getAttribute(this.__tagTracepid)
		},
		getURL : function(t, n, e) {
			var i,
				r = this.__options;
			if (t && n && e) return i = r.domain + "/action/trace/record?e=", i += t, i += "&aid=" + n, i += "&p=" + e, r.hasOwnProperty("userId") && (i += "&uid=" + r.userId), i
		},
		handlers : {
			pv : function(t) {
				"function" == typeof t.fn && t.fn()
			},
			click : function(t) {
				"function" == typeof t.fn && t.fn()
			}
		},
		setUp : function(t) {
			if ("object" != typeof t)
				throw new Error("Ga options must be an Object!");
			if (!t.hasOwnProperty("domain") && "string" != typeof t.domain)
				throw new Error("Ga options need domain property!");
			this.__options = t;
			var n = this.getId(this.__element);
			return e.addHandler("pv" + n, this.handlers.pv), e.addHandler("click" + n, this.handlers.click), this
		},
		watch : function() {
			var t = this,
				i = this.__element,
				r = t.getId(i),
				o = t.getPid(i),
				a = function() {
					t.isElementInViewport(i) && e.emit({
						type : "pv" + r,
						fn : function() {
							e.removeHandler("pv" + r, t.handlers.pv), t.post("pv", r, o)
						}
					})
				};
			a(), n.addEventListener("scroll", t.throttle(a, 150), !1), i.addEventListener("click", function() {
				e.emit({
					type : "click" + r,
					fn : function() {
						t.post("click", r, o)
					}
				})
			}, !1)
		},
		throttle : function(t, n, e) {
			var i,
				r,
				o,
				a,
				c,
				d,
				s = {
					now : Date.now || function() {
							return (new Date).getTime()
					}
				},
				u = 0;
			return e || (e = {}), c = function() {
					u = e.leading === !1 ? 0 : s.now(), i = null, a = t.apply(r, o), i || (r = o = null)
				}, d = function() {
					var d,
						l = s.now();
					return u || e.leading !== !1 || (u = l), d = n - (l - u), r = this, o = arguments, d <= 0 || d > n ? (i && (clearTimeout(i), i = null), u = l, a = t.apply(r, o), i || (r = o = null)) : i || e.trailing === !1 || (i = setTimeout(c, d)), a
				}, d.cancel = function() {
					clearTimeout(i), u = 0, i = r = o = null
				}, d
		},
		isElementInViewport : function(e) {
			var i = e.getBoundingClientRect();
			return i.top >= 0 && i.left >= 0 && i.bottom <= (t.innerHeight || n.documentElement.clientHeight) && i.right <= (t.innerWidth || n.documentElement.clientWidth)
		}
	}, t.Ga = o, r = {}, "object" == typeof i && (i.hasOwnProperty("domain") && "string" == typeof i.domain && (r.domain = "//" + i.domain), i.hasOwnProperty("userId") && (r.userId = i.userId)), Array.prototype.forEach.call(n.querySelectorAll("[data-traceid]"), function(t) {
		o.of(t).setUp(r).watch()
	})
}(window, window.document, CJLEvent, window.__gac));