webpackJsonp([53],{1977:function(e,t,a){"use strict";function l(e){return e&&e.__esModule?e:{default:e}}Object.defineProperty(t,"__esModule",{value:!0});var r=a(5),s=l(r),n=a(3),u=l(n),m=a(4),d=l(m),i=a(6),o=l(i),c=a(7),f=l(c),p=a(8),E=l(p),h=a(1),_=l(h),N=a(41),g=l(N),M=a(17),v=a(215),y=a(9),b=l(y),x=a(70),T=a(1949),A=l(T),F=function(e){function t(e){(0,u.default)(this,t);var a=(0,o.default)(this,(t.__proto__||(0,s.default)(t)).call(this,e));return a.submitNext=a.submitNext.bind(a),a.state={},a}return(0,f.default)(t,e),(0,d.default)(t,[{key:"componentDidMount",value:function(){(0,v.trackEvent)("signup","signup_team_01_name")}},{key:"submitNext",value:function(e){e.preventDefault();var t=g.default.findDOMNode(this.refs.name).value.trim();return t?t.length<b.default.MIN_TEAMNAME_LENGTH||t.length>b.default.MAX_TEAMNAME_LENGTH?void this.setState({nameError:_.default.createElement(M.FormattedMessage,{id:"create_team.display_name.charLength",defaultMessage:"Name must be {min} or more characters up to a maximum of {max}. You can add a longer team description later.",values:{min:b.default.MIN_TEAMNAME_LENGTH,max:b.default.MAX_TEAMNAME_LENGTH}})}):(this.props.state.wizard="team_url",this.props.state.team.display_name=t,this.props.state.team.name=(0,x.cleanUpUrlable)(t),void this.props.updateParent(this.props.state)):void this.setState({nameError:_.default.createElement(M.FormattedMessage,{id:"create_team.display_name.required",defaultMessage:"This field is required"})})}},{key:"handleFocus",value:function(e){e.preventDefault(),e.currentTarget.select()}},{key:"render",value:function(){var e=null,t="form-group";return this.state.nameError&&(e=_.default.createElement("label",{className:"control-label"},this.state.nameError),t+=" has-error"),_.default.createElement("div",null,_.default.createElement("form",null,_.default.createElement("img",{className:"signup-team-logo",src:A.default}),_.default.createElement("h2",null,_.default.createElement(M.FormattedMessage,{id:"create_team.display_name.teamName",defaultMessage:"Team Name"})),_.default.createElement("div",{className:t},_.default.createElement("div",{className:"row"},_.default.createElement("div",{className:"col-sm-9"},_.default.createElement("input",{type:"text",ref:"name",className:"form-control",placeholder:"",maxLength:"128",defaultValue:this.props.state.team.display_name,autoFocus:!0,onFocus:this.handleFocus,spellCheck:"false"}))),e),_.default.createElement("div",null,_.default.createElement(M.FormattedMessage,{id:"create_team.display_name.nameHelp",defaultMessage:"Name your team in any language. Your team name shows in menus and headings."})),_.default.createElement("button",{type:"submit",className:"btn btn-primary margin--extra",onClick:this.submitNext},_.default.createElement(M.FormattedMessage,{id:"create_team.display_name.next",defaultMessage:"Next"}),_.default.createElement("i",{className:"fa fa-chevron-right"}))))}}]),t}(_.default.Component);t.default=F,F.propTypes={state:E.default.object,updateParent:E.default.func}}});
//# sourceMappingURL=53.89319f7390084c243fbe.js.map