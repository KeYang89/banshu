webpackJsonp([51],{1976:function(e,t,a){"use strict";(function(e){function n(e){return e&&e.__esModule?e:{default:e}}Object.defineProperty(t,"__esModule",{value:!0});var l=a(5),u=n(l),r=a(3),i=n(r),d=a(4),s=n(d),c=a(6),o=n(c),m=a(7),f=n(m),p=a(8),_=n(p),h=a(1),w=n(h),v=a(17),b=a(34),g=a(31),y=n(g),E=a(36),C=n(E),P=a(1951),k=n(P),M=a(1950),N=n(M),z=function(t){function a(e){(0,i.default)(this,a);var t=(0,o.default)(this,(a.__proto__||(0,u.default)(a)).call(this,e));t.submit=t.submit.bind(t),t.updateParent=t.updateParent.bind(t);var n={};return n.team={},n.wizard="display_name",t.state=n,t}return(0,f.default)(a,t),(0,s.default)(a,[{key:"submit",value:function(){}},{key:"componentDidMount",value:function(){b.browserHistory.push("/create_team/display_name")}},{key:"updateParent",value:function(e){this.setState(e),b.browserHistory.push("/create_team/"+e.wizard)}},{key:"render",value:function(){var t=null;t="true"===e.window.mm_license.IsLicensed&&"true"===e.window.mm_license.CustomBrand&&"true"===e.window.mm_config.EnableCustomBrand?e.window.mm_config.CustomDescriptionText:w.default.createElement(v.FormattedMessage,{id:"web.root.signup_info",defaultMessage:"All team communication in one place, searchable and accessible anywhere"});var a="/select_team",n=C.default.getCurrent(),l=y.default.getCurrent();return n&&(a="/"+n.name,l&&(a+="/channels/"+l.name)),w.default.createElement("div",null,w.default.createElement(k.default,null),w.default.createElement(N.default,{url:a}),w.default.createElement("div",{className:"col-sm-12"},w.default.createElement("div",{className:"signup-team__container"},w.default.createElement("h1",null,e.window.mm_config.SiteName),w.default.createElement("h4",{className:"color--light"},t),w.default.createElement("div",{className:"signup__content"},w.default.cloneElement(this.props.children,{state:this.state,updateParent:this.updateParent})))))}}]),a}(w.default.Component);t.default=z,z.propTypes={children:_.default.node}}).call(t,a(23))}});
//# sourceMappingURL=51.bc460f990f120c14be3f.js.map