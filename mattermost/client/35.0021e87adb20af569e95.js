webpackJsonp([35],{2009:function(e,t,a){"use strict";(function(e){function r(e){return e&&e.__esModule?e:{default:e}}Object.defineProperty(t,"__esModule",{value:!0});var s=a(5),l=r(s),o=a(3),n=r(o),d=a(4),u=r(d),f=a(6),c=r(f),i=a(7),m=r(i),p=a(8),h=r(p),w=a(1),_=r(w),v=a(41),g=r(v),E=a(17),M=a(66),N=a(9),b=r(N),P=a(16),y=function(e){if(e&&e.__esModule)return e;var t={};if(null!=e)for(var a in e)Object.prototype.hasOwnProperty.call(e,a)&&(t[a]=e[a]);return t.default=e,t}(P),S=function(t){function a(e){(0,n.default)(this,a);var t=(0,c.default)(this,(a.__proto__||(0,l.default)(a)).call(this,e));return t.handlePasswordReset=t.handlePasswordReset.bind(t),t.state={},t}return(0,m.default)(a,t),(0,u.default)(a,[{key:"handlePasswordReset",value:function(e){var t=this;e.preventDefault();var a=g.default.findDOMNode(this.refs.password).value;if(!a||a.length<b.default.MIN_PASSWORD_LENGTH)return void this.setState({error:_.default.createElement(E.FormattedMessage,{id:"password_form.error",defaultMessage:"Please enter at least {chars} characters.",values:{chars:b.default.MIN_PASSWORD_LENGTH}})});this.setState({error:null}),(0,M.resetPassword)(this.props.location.query.token,a,function(){t.setState({error:null})},function(e){t.setState({error:e.message})})}},{key:"render",value:function(){var t=null;this.state.error&&(t=_.default.createElement("div",{className:"form-group has-error"},_.default.createElement("label",{className:"control-label"},this.state.error)));var a="form-group";return t&&(a+=" has-error"),_.default.createElement("div",{className:"col-sm-12"},_.default.createElement("div",{className:"signup-team__container"},_.default.createElement("h3",null,_.default.createElement(E.FormattedMessage,{id:"password_form.title",defaultMessage:"Password Reset"})),_.default.createElement("form",{onSubmit:this.handlePasswordReset},_.default.createElement("p",null,_.default.createElement(E.FormattedMessage,{id:"password_form.enter",defaultMessage:"Enter a new password for your {siteName} account.",values:{siteName:e.window.mm_config.SiteName}})),_.default.createElement("div",{className:a},_.default.createElement("input",{type:"password",className:"form-control",name:"password",ref:"password",placeholder:y.localizeMessage("password_form.pwd","Password"),spellCheck:"false"})),t,_.default.createElement("button",{type:"submit",className:"btn btn-primary"},_.default.createElement(E.FormattedMessage,{id:"password_form.change",defaultMessage:"Change my password"})))))}}]),a}(_.default.Component);S.defaultProps={},S.propTypes={params:h.default.object.isRequired,location:h.default.object.isRequired},t.default=S}).call(t,a(23))}});
//# sourceMappingURL=35.0021e87adb20af569e95.js.map