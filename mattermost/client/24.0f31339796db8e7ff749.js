webpackJsonp([24],{2003:function(e,t,r){"use strict";function a(e){return e&&e.__esModule?e:{default:e}}function u(e,t){return(0,n.default)({},t,{addOAuthAppRequest:e.requests.integrations.addOAuthApp,isSystemAdmin:(0,f.isCurrentUserSystemAdmin)(e)})}function s(e){return{actions:(0,o.bindActionCreators)({addOAuthApp:p.addOAuthApp},e)}}Object.defineProperty(t,"__esModule",{value:!0});var d=r(19),n=a(d),i=r(26),o=r(21),p=r(652),f=r(46),l=r(2250),c=a(l);t.default=(0,i.connect)(u,s)(c.default)},2250:function(e,t,r){"use strict";function a(e){return e&&e.__esModule?e:{default:e}}Object.defineProperty(t,"__esModule",{value:!0});var u=r(57),s=a(u),d=r(58),n=a(d),i=r(5),o=a(i),p=r(3),f=a(p),l=r(4),c=a(l),A=r(6),h=a(A),m=r(7),v=a(m),_=r(8),O=a(_),y=r(1),b=a(y),q=r(34),S=r(1962),E=a(S),R={id:"add_oauth_app.header",defaultMessage:"Add"},M={id:"installed_oauth_apps.save",defaultMessage:"Save"},g=function(e){function t(e){var r=this;(0,f.default)(this,t);var a=(0,h.default)(this,(t.__proto__||(0,o.default)(t)).call(this,e));return a.addOAuthApp=function(){var e=(0,n.default)(s.default.mark(function e(t){var u,d;return s.default.wrap(function(e){for(;;)switch(e.prev=e.next){case 0:return a.setState({serverError:""}),e.next=3,a.props.actions.addOAuthApp(t);case 3:if(u=e.sent,!(d=u.data)){e.next=8;break}return q.browserHistory.push("/"+a.props.team.name+"/integrations/confirm?type=oauth2-apps&id="+d.id),e.abrupt("return");case 8:a.props.addOAuthAppRequest.error&&a.setState({serverError:a.props.addOAuthAppRequest.error.message});case 9:case"end":return e.stop()}},e,r)}));return function(t){return e.apply(this,arguments)}}(),a.state={serverError:""},a}return(0,v.default)(t,e),(0,c.default)(t,[{key:"render",value:function(){return b.default.createElement(E.default,{team:this.props.team,isSystemAdmin:this.props.isSystemAdmin,header:R,footer:M,renderExtra:"",action:this.addOAuthApp,serverError:this.state.serverError})}}]),t}(b.default.PureComponent);g.propTypes={team:O.default.object,addOAuthAppRequest:O.default.object.isRequired,isSystemAdmin:O.default.bool,actions:O.default.shape({addOAuthApp:O.default.func.isRequired}).isRequired},t.default=g}});
//# sourceMappingURL=24.0f31339796db8e7ff749.js.map