webpackJsonp([20],{1994:function(e,t,o){"use strict";function n(e){return e&&e.__esModule?e:{default:e}}function r(e,t){var o=t.location.query.id;return(0,a.default)({},t,{hookId:o,hook:e.entities.integrations.incomingHooks[o],updateIncomingHookRequest:e.requests.integrations.createIncomingHook})}function i(e){return{actions:(0,d.bindActionCreators)({updateIncomingHook:c.updateIncomingHook,getIncomingHook:c.getIncomingHook},e)}}Object.defineProperty(t,"__esModule",{value:!0});var u=o(19),a=n(u),s=o(26),d=o(21),c=o(652),p=o(2236),f=n(p);t.default=(0,s.connect)(r,i)(f.default)},2236:function(e,t,o){"use strict";function n(e){return e&&e.__esModule?e:{default:e}}Object.defineProperty(t,"__esModule",{value:!0});var r=o(57),i=n(r),u=o(58),a=n(u),s=o(5),d=n(s),c=o(3),p=n(c),f=o(4),l=n(f),k=o(6),m=n(k),g=o(7),h=n(g),H=o(8),I=n(H),v=o(1),b=n(v),_=o(34),w=o(1959),q=n(w),R=o(214),E=n(R),y={id:"integrations.edit",defaultMessage:"Edit"},M={id:"update_incoming_webhook.update",defaultMessage:"Update"},j=function(e){function t(e){var o=this;(0,p.default)(this,t);var n=(0,m.default)(this,(t.__proto__||(0,d.default)(t)).call(this,e));return n.editIncomingHook=function(){var e=(0,a.default)(i.default.mark(function e(t){return i.default.wrap(function(e){for(;;)switch(e.prev=e.next){case 0:return n.newHook=t,n.props.hook.id&&(t.id=n.props.hook.id),n.props.hook.token&&(t.token=n.props.hook.token),e.next=5,n.submitHook();case 5:case"end":return e.stop()}},e,o)}));return function(t){return e.apply(this,arguments)}}(),n.submitHook=(0,a.default)(i.default.mark(function e(){var t,r;return i.default.wrap(function(e){for(;;)switch(e.prev=e.next){case 0:return n.setState({serverError:""}),e.next=3,n.props.actions.updateIncomingHook(n.newHook);case 3:if(t=e.sent,!(r=t.data)){e.next=8;break}return _.browserHistory.push("/"+n.props.team.name+"/integrations/incoming_webhooks"),e.abrupt("return");case 8:n.props.updateIncomingHookRequest.error&&n.setState({serverError:n.props.updateIncomingHookRequest.error.message});case 9:case"end":return e.stop()}},e,o)})),n.state={showConfirmModal:!1,serverError:""},n}return(0,h.default)(t,e),(0,l.default)(t,[{key:"componentDidMount",value:function(){"true"===window.mm_config.EnableIncomingWebhooks&&this.props.actions.getIncomingHook(this.props.hookId)}},{key:"render",value:function(){return this.props.hook?b.default.createElement(q.default,{team:this.props.team,header:y,footer:M,action:this.editIncomingHook,serverError:this.state.serverError,initialHook:this.props.hook}):b.default.createElement(E.default,null)}}]),t}(b.default.PureComponent);j.propTypes={team:I.default.object.isRequired,hook:I.default.object,hookId:I.default.string.isRequired,updateIncomingHookRequest:I.default.object.isRequired,actions:I.default.shape({updateIncomingHook:I.default.func.isRequired,getIncomingHook:I.default.func.isRequired}).isRequired},t.default=j}});
//# sourceMappingURL=20.16fbd570f62de1897144.js.map