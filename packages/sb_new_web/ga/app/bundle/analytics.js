!function(t){function e(i){if(o[i])return o[i].exports;var s=o[i]={exports:{},id:i,loaded:!1};return t[i].call(s.exports,s,s.exports,e),s.loaded=!0,s.exports}var o={};return e.m=t,e.c=o,e.p="",e(0)}([function(t,e,o){var i=o(48),s=o(38),n=o(47);n.http=s.http={beforeSend:function(t){t.url="admin/"+t.url}},google.load("visualization","1",{language:document.documentElement.lang,packages:["corechart","geochart"]}),i.components.analytics=s,Vue.ready(function(){window.$analytics.settingsVM=new Vue(n).$appendTo("body")})},function(t,e){t.exports=_},function(t,e,o){var i=o(1);t.exports={createMetricFormatter:function(t){return"ga:bounceRate"==t||"ga:percentNewSessions"==t?new google.visualization.NumberFormat({pattern:"#.#",suffix:"%"}):"ga:pageviewsPerSession"==t?new google.visualization.NumberFormat({pattern:"#.##"}):"ga:avgSessionDuration"==t&&new google.visualization.NumberFormat({pattern:"#.##",suffix:" min"})},transCols:function(t){i.forEach(t.dataTable.cols,function(t){t.label=Vue.prototype.$trans(t.label)})},parseRows:function(t,e){"ga:yearMonth"===e.dimensions&&(t.dataTable.cols[0].type="date",t.columnHeaders[0].dataType="DATE"),i.forEach(t.dataTable.rows,function(t){if("ga:yearMonth"===e.dimensions){var o=t.c[0].v.substr(4,2)-1;o<10&&(o="0"+o),t.c[0].v="Date("+t.c[0].v.substr(0,4)+","+o+",01)"}"ga:avgSessionDuration"===e.metrics&&(t.c[t.c.length-1].v=parseInt(t.c[t.c.length-1].v,10)/60)}),i.forEach(t.totalsForAllResults,function(o,i){"ga:avgSessionDuration"===e.metrics&&(t.totalsForAllResults[i]=o/60)})}}},function(t,e){var o=t.exports={version:"1.2.6"};"number"==typeof __e&&(__e=o)},function(t,e){t.exports=UIkit},function(t,e,o){"use strict";function i(t){return t&&t.__esModule?t:{default:t}}var s=o(15),n=i(s),r=o(1),a=o(4),l=o(2);t.exports={type:{id:"analytics",label:"Analytics",disableToolbar:!0,description:function(){},defaults:{config:{}}},props:["widget","editing"],data:function(){return{loading:!1,error:"",result:{},globals:window.$analytics}},components:{"chart-options":o(39),area:o(40),column:o(41),counter:o(42),geo:o(44),pie:o(46),list:o(45)},created:function(){window.$analytics.root&&(this.$options.url={root:this.$url.options.root+"/"+window.$analytics.root}),void 0==this.widget.preset&&Vue.set(this.widget,"preset",this.globals.presets[0].id)},compiled:function(){var t=this;window.addEventListener("resize",Vue.util.debounce(function(){t.$broadcast("resize")},10)),a.tooltip(this.$els.refresh,{delay:500,src:function(){return t.$trans("Refresh (%time%)",{time:t.$relativeDate(1e3*t.result.time)})}}),this.$watch("configured + widget.preset",function(){this.unwatch&&this.unwatch(),this.$nextTick(function(){this.configChanged(),this.unwatch=this.$watch("widget.config",Vue.util.debounce(this.configChanged,500),{deep:!0})})},{immediate:!0})},computed:{configured:function(){return this.globals.connected&&Vue.util.isObject(this.globals.profile)&&(0,n.default)(this.globals.profile).length},presetOptions:function(){var t=this.globals.groups;return r(this.globals.presets).groupBy("groupID").map(function(e,o){return{label:r.find(t,{id:o}).label,options:r.map(e,function(t){return{value:t.id,text:t.label}})}}).value()},currentPreset:function(){return r.find(this.globals.presets,{id:this.widget.preset})},gaUrl:function(){return!(!this.currentPreset.uri||!this.globals.profile)&&"https://www.google.com/analytics/web/?pli=1#report/"+this.currentPreset.uri+"/a"+this.globals.profile.accountId+"w"+this.globals.profile.propertyId+"p"+this.globals.profile.profileId+"/"}},methods:{openSettings:function(){this.globals.settingsVM.show()},getChart:function(t){var e=r(this.$options.components.__proto__).map(function(t,e){return!!t.options.chart&&r.merge(t.options.chart,{component:e})}).value();return r.find(e,{id:t})},configChanged:function(t){t="boolean"==typeof t?t:void 0,this.refreshIntervall&&(clearInterval(this.refreshIntervall),this.refreshIntervall=null),this.currentPreset.realtime?this.newRealtime(t):this.refreshChart(t)},refreshChart:function(t){var e=r.clone({metrics:this.widget.config.metrics,dimensions:this.widget.config.dimensions,startDate:this.widget.config.startDate,invalidCache:Boolean(t)});if(this.configured&&this.initChart(this.widget.config.charts)){this.$set("loading",!0),this.$set("error",""),this.chart.$emit("request",e);var o=this.$http.get("analytics/api",e);o.then(function(t){var o=t.data;l.parseRows(o,e),l.transCols(o),this.$set("loading",!1),this.$set("result",o),Vue.set(this.chart,"result",o),this.$nextTick(function(){this.chart.$emit("render")})},function(t){this.$set("loading",!1),this.$set("error",t.data.message||this.$trans("Request failed."))})}},newRealtime:function(t){this.configured&&this.initChart(this.widget.config.charts)&&(this.$set("loading",!0),this.refreshRealtime(t).then(function(){this.error||(this.refreshIntervall=setInterval(this.refreshRealtime,3e4))}))},refreshRealtime:function(t){var e=r.clone({metrics:this.widget.config.metrics,dimensions:this.widget.config.dimensions,invalidCache:Boolean(t)});this.chart.$emit("request",e);var o=this.$http.get("analytics/realtime",e);return this.$set("error",""),o.then(function(t){var o=t.data;o.dataTable&&(l.parseRows(o.dataTable,e),l.transCols(o.dataTable)),this.$set("loading",!1),this.$set("result",o),Vue.set(this.chart,"result",o),this.$nextTick(function(){this.chart.$emit("render")})},function(t){this.$set("loading",!1),this.$set("error",t.data.message||this.$trans("Request failed."))})},initChart:function(t){var e=this,o=this.getChart(t);return!!o&&(this.chart&&this.chart.$destroy(!0),this.chart=new this.$options.components.__proto__[o.component]({parent:this,data:function(){return{config:r.clone(e.widget.config),widget:e.widget}}}).$appendTo(this.$els.chart),!0)}}}},function(t,e,o){"use strict";var i=o(1);t.exports={props:["widget","currentPreset"],data:function(){return{customOptions:!1}},compiled:function(){void 0===this.widget.config.metrics&&this.setDefaults(),this.$watch("widget.preset",this.setDefaults),this.$watch("widget.config.charts",function(t){var e=this.$parent.getChart(t);this.customOptions&&(this.customOptions.$destroy(!0),this.$set("customOptions",!1)),e.customOptions&&this.$set("customOptions",new Vue(i.extend({parent:this},e.customOptions)).$appendTo(this.$els.customOptions))},{immediate:!0})},methods:{setDefaults:function(){var t=this;Vue.set(this.widget,"config",{}),["dimensions","metrics","charts"].forEach(function(e){i.isArray(t.currentPreset[e])&&t.currentPreset[e].length>0&&Vue.set(t.widget.config,e,t.currentPreset[e][0])}),t.$nextTick(function(){this.widget.counter=Boolean(t.currentPreset.counter)}),this.currentPreset.realtime||Vue.set(this.widget.config,"startDate","7daysAgo")}}}},function(t,e,o){"use strict";var i=o(2);t.exports={chart:{id:"area",label:"Area Chart",description:function(){},defaults:{}},el:function(){return document.createElement("div")},data:function(){return{options:{areaOpacity:.1,colors:["#56a4e1"],legend:"none",lineWidth:4,pointSize:8,hAxis:{baselineColor:"#fff",gridlines:{color:"none"},showTextEvery:1,textPosition:"out",textStyle:{color:"#56a4e1"}},vAxis:{baselineColor:"#ccc",gridlines:{color:"#fafafa"},textPosition:"out",textStyle:{color:"#56a4e1"}},chartArea:{left:35,height:"85%",top:5},tooltip:{textStyle:{color:"#666"}}}}},created:function(){this.formatter=i.createMetricFormatter(this.config.metrics),this.$on("request",function(t){"ga:date"==t.dimensions&&"365daysAgo"==t.startDate&&(t.dimensions="ga:yearMonth")}),this.$on("render",function(){if(this.dataTable=new google.visualization.DataTable(this.result.dataTable),this.chart=new google.visualization.AreaChart(this.$els.chart),"7daysAgo"==this.config.startDate)this.options.hAxis.format="E";else if("30daysAgo"==this.config.startDate){var t=window.$locale.DATETIME_FORMATS.mediumDate;t=t.replace(/[^md]*y[^md]*/i,""),this.options.hAxis.format=t}else if("365daysAgo"==this.config.startDate){this.options.hAxis.showTextEvery=1,this.options.hAxis.format="MMM";var e=new google.visualization.DateFormat({pattern:"MMMM, y"});e.format(this.dataTable,0)}this.formatter&&this.formatter.format(this.dataTable,1),"ga:bounceRate"!=this.config.metrics&&"ga:percentNewSessions"!=this.config.metrics||(this.options.vAxis.format="#'%'"),this.setSize(),this.chart.draw(this.dataTable,this.options)}),this.$on("resize",function(){this.chart&&(this.setSize(),this.chart.draw(this.dataTable,this.options))})},methods:{setSize:function(){this.options.chartArea.width=this.$el.parentElement.offsetWidth-45}},computed:{total:function t(){if(this.result&&this.result.totalsForAllResults){var t=this.result.totalsForAllResults[this.config.metrics];return this.formatter!==!1?this.formatter.formatValue(t):t}}}}},function(t,e,o){"use strict";var i=o(2);t.exports={chart:{id:"column",label:"Column Chart",description:function(){},defaults:{}},el:function(){return document.createElement("div")},data:function(){return{options:{colors:["#56a4e1"],legend:"none",lineWidth:4,pointSize:8,theme:"maximized",hAxis:{baselineColor:"#fff",format:"E",gridlines:{color:"none"},showTextEvery:1,textPosition:"out",textStyle:{color:"#56a4e1"}},vAxis:{baselineColor:"#ccc",gridlines:{color:"#fafafa"},textPosition:"out",textStyle:{color:"#56a4e1"}},chartArea:{height:"85%",width:"85%",top:5},tooltip:{textStyle:{color:"#666"}}}}},created:function(){this.formatter=i.createMetricFormatter(this.config.metrics),this.$on("render",function(){if(this.dataTable=new google.visualization.DataTable(this.result.dataTable),this.chart=new google.visualization.ColumnChart(this.$els.chart),this.formatter&&this.formatter.format(this.dataTable,1),"7daysAgo"==this.config.startDate)this.options.hAxis.format="E",this.options.hAxis.showTextEvery=1;else if("30daysAgo"==this.config.startDate)this.options.hAxis.format="MMM d",this.options.hAxis.showTextEvery=1;else if("365daysAgo"==this.config.startDate){this.options.hAxis.showTextEvery=4,this.options.hAxis.format="MMM yy";var t=new google.visualization.DateFormat({pattern:"MMMM yyyy"});t.format(this.dataTable,0)}this.chart.draw(this.dataTable,this.options)}),this.$on("resize",function(){this.chart&&this.chart.draw(this.dataTable,this.options)})},computed:{total:function t(){if(this.result&&this.result.totalsForAllResults){var t=this.result.totalsForAllResults[this.config.metrics];return this.formatter!==!1?this.formatter.formatValue(t):t}}}}},function(t,e,o){"use strict";var i=o(2);t.exports={chart:{id:"counter",label:"Counter",description:function(){},defaults:{}},el:function(){return document.createElement("div")},created:function(){this.formatter=i.createMetricFormatter(this.config.metrics)},filters:{format:function(t){return this.formatter?this.formatter.formatValue(t):t}}}},function(t,e,o){"use strict";var i=o(1);t.exports={el:function(){return document.createElement("div")},data:function(){return{geoData:i.extend({},window.$analytics.geo)}},compiled:function(){this.$parent.widget.config.region?this.$parent.widget.config.region=this.$parent.widget.config.region:this.$parent.widget.config.region=0},beforeDestroy:function(){"geo"!==this.$parent.widget.config.charts&&Vue.delete(this.$parent.widget.config,"region")}}},function(t,e,o){"use strict";var i=o(1),s=o(2),n=o(26),r=o(27);t.exports={chart:{id:"geo",label:"Geo Chart",description:function(){},defaults:{},customOptions:o(43)},el:function(){return document.createElement("div")},data:function(){return{options:{colors:["#92c8f1","#56a4e1"],displayMode:"auto",tooltip:{textStyle:{color:"#666"}}}}},created:function(){this.formatter=s.createMetricFormatter(this.config.metrics),this.$on("request",function(t){if("ga:city"==t.dimensions&&(t.dimensions="ga:latitude,ga:longitude,".concat(t.dimensions)),this.config.region&&"0"!=this.config.region){var e;(e=i.result(i.find(n,{code:this.config.region}),"label"))?t.filters="ga:continent=="+e:(e=i.result(i.find(r,{code:this.config.region}),"label"))?t.filters="ga:subcontinent=="+e:t.filters="ga:countryIsoCode=="+this.config.region}}),this.$on("render",function(){switch(this.config.region&&"0"!=this.config.region&&(this.options.region=this.config.region),this.config.dimensions){case"ga:city":this.options.displayMode="markers",this.result.dataTable.cols[0].type="number",this.result.dataTable.cols[1].type="number";break;case"ga:country":this.options.resolution="countries";break;case"ga:continent":this.options.resolution="continents",this.result.dataTable.rows=i.forEach(this.result.dataTable.rows,function(t){t.c[0].f=t.c[0].v,t.c[0].v=i.result(i.find(n,{label:t.c[0].v}),"code")});break;case"ga:subContinent":this.options.resolution="subcontinents",this.result.dataTable.rows=i.forEach(this.result.dataTable.rows,function(t){t.c[0].f=t.c[0].v,t.c[0].v=i.result(i.find(r,{label:t.c[0].v}),"code")})}this.dataTable=new google.visualization.DataTable(this.result.dataTable),this.chart=new google.visualization.GeoChart(this.$els.chart),this.formatter&&this.formatter.format(this.dataTable,1),"ga:bounceRate"!=this.config.metrics&&"ga:percentNewSessions"!=this.config.metrics||(this.options.legend={numberFormat:"#'%'"}),this.chart.draw(this.dataTable,this.options)}),this.$on("resize",function(){this.chart&&(this.setSize(),this.chart.draw(this.dataTable,this.options))})},methods:{setSize:function(){this.options.height=347*this.$el.parentElement.offsetWidth/556}},computed:{total:function t(){if(this.result&&this.result.totalsForAllResults){var t=this.result.totalsForAllResults[this.config.metrics];return this.formatter!==!1?this.formatter.formatValue(t):t}}}}},function(t,e,o){"use strict";var i=o(1),s=o(4),n=o(2);t.exports={chart:{id:"list",label:"List",description:function(){},defaults:{}},el:function(){return document.createElement("div")},data:function(){return{itemsPerPage:5,page:0}},created:function(){this.formatter=n.createMetricFormatter(this.config.metrics),this.$on("request",function(t){t.maxResults=15,t.sort="-"+t.metrics}),this.$on("render",function(){var t=this,e=Math.floor(this.result.dataTable.rows.length/this.itemsPerPage);e>1&&(this.pageination=s.pagination(this.$els.pageination,{pages:e,onSelectPage:function(e){t.page=e}}))})},filters:{pagination:function(t,e){return i.chunk(t,this.itemsPerPage)[e]||[]},format:function(t,e){return 1==e&&this.formatter?this.formatter.formatValue(t):t}},computed:{total:function t(){if(this.result&&this.result.totalsForAllResults){var t=this.result.totalsForAllResults[this.config.metrics];return this.formatter!==!1?this.formatter.formatValue(t):t}}}}},function(t,e,o){"use strict";var i=o(1),s=o(2);t.exports={chart:{id:"pie",label:"Pie Chart",description:function(){},defaults:{}},el:function(){return document.createElement("div")},data:function(){return{options:{theme:"maximized",pieHole:.5,legend:{alignment:"center",position:"bottom",textStyle:{color:"#666"},pagingTextStyle:{color:"#666"},scrollArrows:{activeColor:"#666",inactiveColor:"#aaa"}},chartArea:{height:"75%",top:7},tooltip:{textStyle:{color:"#666"},showColorCode:1},sliceVisibilityThreshold:1/120,colors:["#56a4e1","#aed581","#f4d97b","#ff8a65","#ff6a6a","#fe6e85","#ac76f6","#7c84f5","#628cea","#6cd5de"]}}},created:function(){this.formatter=s.createMetricFormatter(this.config.metrics),this.$on("request",function(t){t.sort="-"+t.metrics}),this.$on("resize",function(){this.chart&&(this.setSize(),this.chart.draw(this.dataTable,this.options))}),this.$on("render",function(){i.forEach(this.result.dataTable.rows,function(t){t.c[t.c.length-1].v=parseFloat(t.c[t.c.length-1].v)}),this.dataTable=new google.visualization.DataTable(this.result.dataTable),this.chart=new google.visualization.PieChart(this.$els.chart),this.formatter&&this.formatter.format(this.dataTable,1),this.setSize(),this.chart.draw(this.dataTable,this.options)})},methods:{setSize:function(){this.options.height=this.$el.parentElement.offsetWidth+20}},computed:{total:function t(){if(this.result&&this.result.totalsForAllResults){var t=this.result.totalsForAllResults[this.config.metrics];return this.formatter!==!1?this.formatter.formatValue(t):t}}}}},function(t,e,o){"use strict";var i=o(1);t.exports={el:function(){return document.createElement("div")},data:function(){return{init:!1,loading:!1,error:"",code:"",id:"",name:"",disableInput:!0,profileId:0,profileList:[],globals:window.$analytics}},created:function(){window.$analytics.root&&(this.$options.url={root:this.$url.options.root+"/"+window.$analytics.root})},compiled:function(){this.modal=UIkit.modal(this.$els.modal)},methods:{show:function(){this.init||(this.globals.profile&&this.globals.profile.profileId&&(this.profileId=this.globals.profile.profileId),this.globals.connected&&(this.loadProfiles(),this.loadUser()),this.$watch("code",Vue.util.debounce(this.checkCode,300)),this.$watch("profileId",Vue.util.debounce(this.saveProfile,300)),this.$watch("globals.connected",function(){this.loadProfiles(),this.loadUser()}),this.init=!0),this.modal.show()},openAuthWindow:function(){var t="admin/analytics/auth";this.$url.route&&(t=this.$url.route(t)),this.popup=window.open(t,"","width=800,height=500"),this.disableInput=!1},checkCode:function(t){if(t){this.loading=!0;var e=this.$http.post("analytics/code",{code:t});e.then(function(){this.popup.close(),delete this.popup,this.disableInput=!0,this.loading=!1,this.globals.connected=!0,this.code=""},function(){})}},loadUser:function(){if(this.globals.connected){var t=this.$http.get("analytics/user");this.loading=!0,t.then(function(t){t=t.data,this.loading=!1,this.id=t.id,this.name=t.name},function(t){this.loading=!1,this.error=t.data.message||this.$trans("Request failed.")})}},loadProfiles:function(){if(this.globals.connected){var t=this.$http.get("analytics/profile");this.loading=!0,t.then(function(t){t=t.data,this.loading=!1,this.profileList=t.items},function(t){console.log(t),this.loading=!1,this.error=t.data.message||this.$trans("Request failed.")})}},saveProfile:function(){var t=i.find(this.profileList,{id:this.profileId});t=t?{accountId:t.accountId,propertyId:t.internalWebPropertyId,profileId:t.id}:{accountId:0};var e=this.$http.post("analytics/profile",t);this.loading=!0,e.then(function(t){t=t.data,this.loading=!1,this.globals.profile=t.profile},function(t){this.loading=!1,this.error=t.data.message||this.$trans("Request failed.")})},disconnect:function(){var t=this.$http.delete("analytics/disconnect");t.then(function(){this.globals.connected=!1,this.globals.profile=!1,this.profile={},this.profileId=0,this.id="",this.name=""},function(){})}}}},function(t,e,o){t.exports={default:o(16),__esModule:!0}},function(t,e,o){o(25),t.exports=o(3).Object.keys},function(t,e){t.exports=function(t){if("function"!=typeof t)throw TypeError(t+" is not a function!");return t}},function(t,e,o){var i=o(17);t.exports=function(t,e,o){if(i(t),void 0===e)return t;switch(o){case 1:return function(o){return t.call(e,o)};case 2:return function(o,i){return t.call(e,o,i)};case 3:return function(o,i,s){return t.call(e,o,i,s)}}return function(){return t.apply(e,arguments)}}},function(t,e){t.exports=function(t){if(void 0==t)throw TypeError("Can't call method on  "+t);return t}},function(t,e,o){var i=o(22),s=o(3),n=o(18),r="prototype",a=function(t,e,o){var l,c,u,d=t&a.F,h=t&a.G,f=t&a.S,p=t&a.P,g=t&a.B,m=t&a.W,v=h?s:s[e]||(s[e]={}),b=h?i:f?i[e]:(i[e]||{})[r];h&&(o=e);for(l in o)c=!d&&b&&l in b,c&&l in v||(u=c?b[l]:o[l],v[l]=h&&"function"!=typeof b[l]?o[l]:g&&c?n(u,i):m&&b[l]==u?function(t){var e=function(e){return this instanceof t?new t(e):t(e)};return e[r]=t[r],e}(u):p&&"function"==typeof u?n(Function.call,u):u,p&&((v[r]||(v[r]={}))[l]=u))};a.F=1,a.G=2,a.S=4,a.P=8,a.B=16,a.W=32,t.exports=a},function(t,e){t.exports=function(t){try{return!!t()}catch(t){return!0}}},function(t,e){var o=t.exports="undefined"!=typeof window&&window.Math==Math?window:"undefined"!=typeof self&&self.Math==Math?self:Function("return this")();"number"==typeof __g&&(__g=o)},function(t,e,o){var i=o(20),s=o(3),n=o(21);t.exports=function(t,e){var o=(s.Object||{})[t]||Object[t],r={};r[t]=e(o),i(i.S+i.F*n(function(){o(1)}),"Object",r)}},function(t,e,o){var i=o(19);t.exports=function(t){return Object(i(t))}},function(t,e,o){var i=o(24);o(23)("keys",function(t){return function(e){return t(i(e))}})},function(t,e){t.exports=[{label:"Africa",code:"002"},{label:"Americas",code:"019"},{label:"Asia",code:"142"},{label:"Europe",code:"150"},{label:"Oceania",code:"009"}]},function(t,e){t.exports=[{label:"Australia and New Zeland",code:"053"},{label:"Caribbean",code:"029"},{label:"Central America",code:"013"},{label:"Central Asia",code:"143"},{label:"Eastern Africa",code:"014"},{label:"Eastern Asia",code:"030"},{label:"Eastern Europe",code:"151"},{label:"Melanesia",code:"054"},{label:"Micronesia",code:"057"},{label:"Middle Africa",code:"017"},{label:"Northern Africa",code:"015"},{label:"Northern America",code:"021"},{label:"Northern Europe",code:"154"},{label:"Polynesia",code:"061"},{label:"South America",code:"005"},{label:"South-Eastern Asia",code:"035"},{label:"Southern Africa",code:"018"},{label:"Southern Asia",code:"034"},{label:"Southern Europe",code:"039"},{label:"Western Africa",code:"011"},{label:"Western Asia",code:"145"},{label:"Western Europe",code:"155"}]},function(t,e){t.exports=' <div> <div class=uk-panel-badge> <ul class="uk-subnav pk-subnav-icon"> <li v-show="!editing && !loading && result.time"> <a class="pk-icon-refresh pk-icon-hover uk-hidden" v-el:refresh @click=configChanged(true)></a> </li> <li v-show="editing && gaUrl"> <a href="{{ gaUrl }}" target=_blank class="pk-icon-share pk-icon-hover" title="{{ \'Go to Google Analytics\' | trans }}" data-uk-tooltip="{delay: 500}"></a> </li> <li v-show=editing> <a class="pk-icon-settings pk-icon-hover" title="{{ \'Settings\' | trans }}" data-uk-tooltip="{delay: 500}" @click=openSettings></a> </li> <li v-show=editing> <a class="pk-icon-delete pk-icon-hover" title="{{ \'Delete\' | trans }}" data-uk-tooltip="{delay: 500}" @click=$parent.remove() v-confirm="\'Delete widget?\'"></a> </li> <li v-show=!editing> <a class="pk-icon-edit pk-icon-hover uk-hidden" title="{{ \'Edit\' | trans }}" data-uk-tooltip="{delay: 500}" @click=$parent.edit></a> </li> <li v-show=!editing> <a class="pk-icon-handle pk-icon-hover uk-hidden uk-sortable-handle" title="{{ \'Drag\' | trans }}" data-uk-tooltip="{delay: 500}"></a> </li> <li v-show=editing> <a class="pk-icon-check pk-icon-hover" title="{{ \'Confirm\' | trans }}" data-uk-tooltip="{delay: 500}" @click=$parent.save></a> </li> </ul> </div> <form class="pk-panel-teaser uk-form uk-form-stacked" v-if=editing> <div class=uk-form-row> <label class=uk-form-label for=form-analytics-type>{{ \'Type\' | trans }}</label> <div class=uk-form-controls> <select id=form-analytics-type class=uk-width-1-1 v-model=widget.preset> <optgroup v-for="group in presetOptions" :label=group.label> <option v-for="preset in group.options" :value=preset.value>{{ preset.text }}</option> </optgroup> </select> </div> </div> <chart-options class="uk-form-row uk-display-block" :widget.sync=widget :current-preset=currentPreset></chart-options> </form> <div v-show="!loading && configured && !error" v-el:chart></div> <div v-show="!loading && configured && error">{{ error }}</div> <div class=uk-text-center v-if="loading && configured"> <v-loader></v-loader> </div> <div v-if=!configured>Google Analytics <a href=# @click=openSettings>authentication</a> needed.</div> </div> '},function(t,e){t.exports=" <div> <div class=uk-form-row v-if=\"currentPreset.dimensions.length > 1\"> <label class=uk-form-label for=form-analytics-dimension>{{ 'Dimension' | trans }}</label> <div class=uk-form-controls> <select id=form-analytics-dimension class=uk-width-1-1 v-model=widget.config.dimensions> <option v-for=\"dimension in currentPreset.dimensions\" :value=dimension>{{ dimension | trans }}</option> </select> </div> </div> <div class=uk-form-row v-if=\"currentPreset.metrics.length > 1\"> <label class=uk-form-label for=form-analytics-metric>{{ 'Metric' | trans }}</label> <div class=uk-form-controls> <select id=form-analytics-metric class=uk-width-1-1 v-model=widget.config.metrics> <option v-for=\"metric in currentPreset.metrics\" :value=metric>{{ metric | trans }}</option> </select> </div> </div> <div class=\"uk-margin-top uk-grid uk-grid-small uk-grid-width-1-2\"> <div> <div class=uk-form-row v-if=\"currentPreset.charts.length > 1\"> <label class=uk-form-label for=form-analytics-chart>{{ 'Chart' | trans }}</label> <div class=uk-form-controls> <select id=form-analytics-chart class=uk-width-1-1 v-model=widget.config.charts> <option v-for=\"chart in currentPreset.charts\" :value=chart>{{ $parent.$parent.getChart(chart).label | trans }}</option> </select> </div> </div> </div> <div> <div class=uk-form-row v-if=!currentPreset.realtime> <label class=uk-form-label for=form-analytics-period>{{ 'Period' | trans }}</label> <div class=uk-form-controls> <select id=form-analytics-period class=uk-width-1-1 v-model=widget.config.startDate> <option value=7daysAgo>{{ '7daysAgo' | trans }}</option> <option value=30daysAgo>{{ '30daysAgo' | trans }}</option> <option value=365daysAgo>{{ '365daysAgo' | trans }}</option> </select> </div> </div> </div> </div> <div class=uk-margin-top v-show=customOptions> <div v-el:custom-options></div> </div> <div class=uk-margin> <label><input type=checkbox v-model=widget.counter> {{ 'Show Counter' | trans }}</label> </div> </div> "},function(t,e){t.exports=' <div class=pk-text-large v-show=widget.counter>{{ total }}</div> <h3 class="uk-panel-title uk-width-3-4" v-show="config.dimensions != \'ga:date\'"> <span class=uk-text-nowrap>{{ config.dimensions | trans }}</span> <span class=uk-text-nowrap>by {{ config.metrics | trans }} this {{ config.startDate | trans }}</span> </h3> <h3 class="uk-panel-title uk-width-3-4" v-show="config.dimensions == \'ga:date\'"> {{ config.metrics | trans }} this {{ config.startDate | trans }} </h3> <div v-el:chart></div> '},function(t,e){t.exports=' <div class=pk-text-large v-show=widget.counter>{{ total }}</div> <h3 class="uk-panel-title uk-width-3-4" v-show="config.dimensions != \'ga:date\'"> <span class=uk-text-nowrap>{{ config.dimensions | trans }}</span> <span class=uk-text-nowrap>by {{ config.metrics | trans }} this {{ config.startDate | trans }}</span> </h3> <h3 class="uk-panel-title uk-width-3-4" v-show="config.dimensions == \'ga:date\'"> {{ config.metrics | trans }} this {{ config.startDate | trans }} </h3> <div v-el:chart></div> '},function(t,e){t.exports=' <div v-if=result> <div class=uk-text-center v-for="(key, result) in result.totalsForAllResults"> <div class="pk-text-xlarge uk-margin-small-bottom">{{ result | format }}</div> <h3 class="uk-panel-title uk-margin-remove">{{ key | trans }}<template v-show=config.startDate> this {{ config.startDate | trans}}</template></h3> </div> </div> <div v-if=false></div> '},function(t,e){t.exports=' <label class=uk-form-label for=form-analytics-region>{{ \'Region\' | trans }}</label> <div class=uk-form-controls> <select id=form-analytics-region class=uk-width-1-1 v-model=$parent.widget.config.region options=regionOptions> <option value=0>{{ geoData.world }}</option> <optgroup :label="\'Continents\' | trans"> <option v-for="(code, continent) in geoData.continents" :value=code>{{ continent }}</option> </optgroup> <optgroup :label="\'Subcontinents\' | trans"> <option v-for="(code, subcontinents) in geoData.subcontinents" :value=code>{{ subcontinents }}</option> </optgroup> <optgroup :label="\'Countries\' | trans"> <option v-for="(code, countries) in geoData.countries" :value=code>{{ countries }}</option> </optgroup> </select> </div> '},function(t,e){t.exports=' <div class=pk-text-large v-show=widget.counter>{{ total }}</div> <h3 class="uk-panel-title uk-width-3-4"> {{ config.metrics | trans }} this {{ config.startDate | trans }} </h3> <div v-el:chart></div> '},function(t,e){t.exports=' <div class=pk-text-large v-show=widget.counter>{{ total }}</div> <h3 class="uk-panel-title uk-width-3-4"> <span class=uk-text-nowrap>{{ config.dimensions | trans }}</span> <span class=uk-text-nowrap>by {{ config.metrics | trans }} this {{ config.startDate | trans }}</span> </h3> <table class=uk-table v-if=result> <thead> <tr> <th v-for="col in result.dataTable.cols ">{{ col.label }}</th> </tr> </thead> <tbody> <tr v-for="row in result.dataTable.rows | pagination page"> <td v-for="c in row.c">{{ c.f || c.v | format $index }}</td> </tr> </tbody> </table> <ul class=uk-pagination v-el=pageination></ul> '},function(t,e){t.exports=' <div class=pk-text-large v-show=widget.counter>{{ total }}</div> <h3 class="uk-panel-title uk-width-3-4"> <span class=uk-text-nowrap>{{ config.dimensions | trans }}</span> <span class=uk-text-nowrap>by {{ config.metrics | trans }} this {{ config.startDate | trans }}</span> </h3> <div v-el:chart></div> '},function(t,e){t.exports=" <div class=uk-modal v-el:modal> <div class=\"uk-modal-dialog uk-form uk-form-horizontal\"> <div class=uk-modal-header> <h2>{{ 'Google API' | trans }}</h2> </div> <div class=uk-form-row v-show=!globals.connected> <label for=form-auth-code class=uk-form-label>{{ 'Authorization' | trans }}</label> <div class=uk-form-controls> <input id=form-auth-code class=uk-form-width-large type=text placeholder=\"{{ 'Auth code' | trans }}\" v-model=code :disabled=disableInput> <p> <a class=uk-button @click=openAuthWindow>{{ 'Request code' | trans }}</a> <v-loader v-show=loading></v-loader> </p> </div> </div> <div class=uk-form-row v-show=!globals.connected> <span class=uk-form-label>{{ 'Quota Limit' | trans }}</span> <div class=\"uk-form-controls uk-form-controls-text\"> <label><input type=checkbox v-model=ownCredentials> Use own credentials</label> <p class=uk-form-help-block>{{ 'The Google Analytics API is limited by 50,000 requests per day. Use your own credentials to obtain your own full quota.' | trans}}</p> </div> </div> <div class=uk-form-row v-show=\"!globals.connected && ownCredentials\"> <label for=form-client-id class=uk-form-label>{{ 'Client ID' | trans }}</label> <div class=uk-form-controls> <input id=form-client-id class=uk-form-width-large type=text v-model=client_id> </div> </div> <div class=uk-form-row v-show=\"!globals.connected && ownCredentials\"> <label for=form-client-secret class=uk-form-label>{{ 'Client secret' | trans }}</label> <div class=uk-form-controls> <input id=form-client-secret class=uk-form-width-large type=text v-model=client_secret> </div> </div> <div class=\"uk-alert uk-alert-danger\" v-show=\"globals.connected && error\"> <p>{{ error }}</p> </div> <div class=uk-form-row v-show=\"globals.connected && !error\"> <label for=form-profile class=uk-form-label>{{ 'Profile' | trans }}</label> <div class=uk-form-controls> <select id=form-profile class=uk-form-width-large options=profileOptions v-model=profileId :disabled=\"profileList.length == 0\" :selected=globals.profile> <option value=0>{{ 'Select profile...' | trans }}</option> <option v-for=\"profile in profileList\" :value=profile.id>{{ profile.webPropertyId + ' - ' + profile.websiteUrl }}</option> </select> </div> </div> <div class=uk-form-row v-show=\"globals.connected && (name || id)\"> <span class=uk-form-label>{{ 'Account' | trans }}</span> <div class=\"uk-form-controls uk-form-controls-text\" v-show=\"name && id\"> <p class=uk-form-controls-condensed>{{ name }}</p> <p class=uk-form-controls-condensed>{{ id }}</p> </div> </div> <div class=uk-form-row v-show=globals.connected> <span for=form-auth-code class=uk-form-label>{{ 'Authorization' | trans }}</span> <div class=uk-form-controls> <a class=uk-button @click=disconnect>{{ 'Disconnect' | trans }}</a> <p class=uk-form-help-block>{{ 'Disconnecting from Google will affect all Analytics widgets.' | trans }}</p> </div> </div> </div> </div> "},function(t,e,o){var i,s,n={};i=o(5),s=o(28),t.exports=i||{},t.exports.__esModule&&(t.exports=t.exports.default);var r="function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports;s&&(r.template=s),r.computed||(r.computed={}),Object.keys(n).forEach(function(t){var e=n[t];r.computed[t]=function(){
return e}})},function(t,e,o){var i,s,n={};i=o(6),s=o(29),t.exports=i||{},t.exports.__esModule&&(t.exports=t.exports.default);var r="function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports;s&&(r.template=s),r.computed||(r.computed={}),Object.keys(n).forEach(function(t){var e=n[t];r.computed[t]=function(){return e}})},function(t,e,o){var i,s,n={};i=o(7),s=o(30),t.exports=i||{},t.exports.__esModule&&(t.exports=t.exports.default);var r="function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports;s&&(r.template=s),r.computed||(r.computed={}),Object.keys(n).forEach(function(t){var e=n[t];r.computed[t]=function(){return e}})},function(t,e,o){var i,s,n={};i=o(8),s=o(31),t.exports=i||{},t.exports.__esModule&&(t.exports=t.exports.default);var r="function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports;s&&(r.template=s),r.computed||(r.computed={}),Object.keys(n).forEach(function(t){var e=n[t];r.computed[t]=function(){return e}})},function(t,e,o){var i,s,n={};i=o(9),s=o(32),t.exports=i||{},t.exports.__esModule&&(t.exports=t.exports.default);var r="function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports;s&&(r.template=s),r.computed||(r.computed={}),Object.keys(n).forEach(function(t){var e=n[t];r.computed[t]=function(){return e}})},function(t,e,o){var i,s,n={};i=o(10),s=o(33),t.exports=i||{},t.exports.__esModule&&(t.exports=t.exports.default);var r="function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports;s&&(r.template=s),r.computed||(r.computed={}),Object.keys(n).forEach(function(t){var e=n[t];r.computed[t]=function(){return e}})},function(t,e,o){var i,s,n={};i=o(11),s=o(34),t.exports=i||{},t.exports.__esModule&&(t.exports=t.exports.default);var r="function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports;s&&(r.template=s),r.computed||(r.computed={}),Object.keys(n).forEach(function(t){var e=n[t];r.computed[t]=function(){return e}})},function(t,e,o){var i,s,n={};i=o(12),s=o(35),t.exports=i||{},t.exports.__esModule&&(t.exports=t.exports.default);var r="function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports;s&&(r.template=s),r.computed||(r.computed={}),Object.keys(n).forEach(function(t){var e=n[t];r.computed[t]=function(){return e}})},function(t,e,o){var i,s,n={};i=o(13),s=o(36),t.exports=i||{},t.exports.__esModule&&(t.exports=t.exports.default);var r="function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports;s&&(r.template=s),r.computed||(r.computed={}),Object.keys(n).forEach(function(t){var e=n[t];r.computed[t]=function(){return e}})},function(t,e,o){var i,s,n={};i=o(14),s=o(37),t.exports=i||{},t.exports.__esModule&&(t.exports=t.exports.default);var r="function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports;s&&(r.template=s),r.computed||(r.computed={}),Object.keys(n).forEach(function(t){var e=n[t];r.computed[t]=function(){return e}})},function(t,e){t.exports=Dashboard}]);