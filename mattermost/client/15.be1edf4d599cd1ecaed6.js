webpackJsonp([15],{1999:function(e,t,a){"use strict";function n(e){return e&&e.__esModule?e:{default:e}}function l(e,t){return(0,o.default)({},t)}function d(e){return{actions:(0,i.bindActionCreators)({regenCommandToken:m.regenCommandToken,deleteCommand:m.deleteCommand},e)}}Object.defineProperty(t,"__esModule",{value:!0});var r=a(19),o=n(r),s=a(26),i=a(21),m=a(652),u=a(2242),c=n(u);t.default=(0,s.connect)(l,d)(c.default)},2242:function(e,t,a){"use strict";function n(e){return e&&e.__esModule?e:{default:e}}Object.defineProperty(t,"__esModule",{value:!0});var l=a(5),d=n(l),r=a(3),o=n(r),s=a(4),i=n(s),m=a(6),u=n(m),c=a(7),f=n(c),p=a(8),_=n(p),g=a(1),h=n(g),v=a(17),y=a(16),C=function(e){if(e&&e.__esModule)return e;var t={};if(null!=e)for(var a in e)Object.prototype.hasOwnProperty.call(e,a)&&(t[a]=e[a]);return t.default=e,t}(y),M=a(1955),k=n(M),E=a(2243),b=n(E),T=function(e){function t(){var e,a,n,l;(0,o.default)(this,t);for(var r=arguments.length,s=Array(r),i=0;i<r;i++)s[i]=arguments[i];return a=n=(0,u.default)(this,(e=t.__proto__||(0,d.default)(t)).call.apply(e,[this].concat(s))),n.regenCommandToken=function(e){n.props.actions.regenCommandToken(e.id)},n.deleteCommand=function(e){n.props.actions.deleteCommand(e.id)},l=a,(0,u.default)(n,l)}return(0,f.default)(t,e),(0,i.default)(t,[{key:"commandCompare",value:function(e,t){var a=e.display_name;a||(a=C.localizeMessage("installed_commands.unnamed_command","Unnamed Slash Command"));var n=t.display_name;return n||(n=C.localizeMessage("installed_commands.unnamed_command","Unnamed Slash Command")),a.localeCompare(n)}},{key:"render",value:function(){var e=this,t=this.props.commands.filter(function(t){return t.team_id===e.props.team.id}).sort(this.commandCompare).map(function(t){var a=e.props.isAdmin||e.props.user.id===t.creator_id;return h.default.createElement(b.default,{key:t.id,team:e.props.team,command:t,onRegenToken:e.regenCommandToken,onDelete:e.deleteCommand,creator:e.props.users[t.creator_id]||{},canChange:a})});return h.default.createElement(k.default,{header:h.default.createElement(v.FormattedMessage,{id:"installed_commands.header",defaultMessage:"Installed Slash Commands"}),addText:h.default.createElement(v.FormattedMessage,{id:"installed_commands.add",defaultMessage:"Add Slash Command"}),addLink:"/"+this.props.team.name+"/integrations/commands/add",emptyText:h.default.createElement(v.FormattedMessage,{id:"installed_commands.empty",defaultMessage:"No slash commands found"}),helpText:h.default.createElement(v.FormattedMessage,{id:"installed_commands.help",defaultMessage:"Use slash commands to connect external tools to Mattermost. {buildYourOwn} or visit the {appDirectory} to find self-hosted, third-party apps and integrations.",values:{buildYourOwn:h.default.createElement("a",{target:"_blank",rel:"noopener noreferrer",href:"http://docs.mattermost.com/developer/slash-commands.html"},h.default.createElement(v.FormattedMessage,{id:"installed_commands.help.buildYourOwn",defaultMessage:"Build your own"})),appDirectory:h.default.createElement("a",{target:"_blank",rel:"noopener noreferrer",href:"https://about.mattermost.com/default-app-directory/"},h.default.createElement(v.FormattedMessage,{id:"installed_commands.help.appDirectory",defaultMessage:"App Directory"}))}}),searchPlaceholder:C.localizeMessage("installed_commands.search","Search Slash Commands"),loading:this.props.loading},t)}}]),t}(h.default.PureComponent);T.propTypes={team:_.default.object,user:_.default.object,users:_.default.object,commands:_.default.array,loading:_.default.bool,isAdmin:_.default.bool,actions:_.default.shape({regenCommandToken:_.default.func.isRequired,deleteCommand:_.default.func.isRequired}).isRequired},t.default=T},2243:function(e,t,a){"use strict";function n(e){return e&&e.__esModule?e:{default:e}}Object.defineProperty(t,"__esModule",{value:!0});var l=a(5),d=n(l),r=a(3),o=n(r),s=a(4),i=n(s),m=a(6),u=n(m),c=a(7),f=n(c),p=a(8),_=n(p),g=a(1),h=n(g),v=a(17),y=a(34),C=a(1956),M=n(C),k=function(e){function t(){var e,a,n,l;(0,o.default)(this,t);for(var r=arguments.length,s=Array(r),i=0;i<r;i++)s[i]=arguments[i];return a=n=(0,u.default)(this,(e=t.__proto__||(0,d.default)(t)).call.apply(e,[this].concat(s))),n.handleRegenToken=function(e){e.preventDefault(),n.props.onRegenToken(n.props.command)},n.handleDelete=function(){n.props.onDelete(n.props.command)},l=a,(0,u.default)(n,l)}return(0,f.default)(t,e),(0,i.default)(t,[{key:"matchesFilter",value:function(e,t){return!t||(-1!==e.display_name.toLowerCase().indexOf(t)||-1!==e.description.toLowerCase().indexOf(t)||-1!==e.trigger.toLowerCase().indexOf(t))}},{key:"render",value:function(){var e=this.props.command,t=this.props.filter?this.props.filter.toLowerCase():"";if(!this.matchesFilter(e,t))return null;var a=void 0;a=e.display_name?e.display_name:h.default.createElement(v.FormattedMessage,{id:"installed_commands.unnamed_command",defaultMessage:"Unnamed Slash Command"});var n=null;e.description&&(n=h.default.createElement("div",{className:"item-details__row"},h.default.createElement("span",{className:"item-details__description"},e.description)));var l="- /"+e.trigger;e.auto_complete&&e.auto_complete_hint&&(l+=" "+e.auto_complete_hint);var d=null;return this.props.canChange&&(d=h.default.createElement("div",{className:"item-actions"},h.default.createElement("button",{className:"style--none color--link",onClick:this.handleRegenToken},h.default.createElement(v.FormattedMessage,{id:"installed_integrations.regenToken",defaultMessage:"Regenerate Token"}))," - ",h.default.createElement(y.Link,{to:"/"+this.props.team.name+"/integrations/commands/edit?id="+e.id},h.default.createElement(v.FormattedMessage,{id:"installed_integrations.edit",defaultMessage:"Edit"}))," - ",h.default.createElement(M.default,{messageId:"installed_commands.delete.confirm",onDelete:this.handleDelete}))),h.default.createElement("div",{className:"backstage-list__item"},h.default.createElement("div",{className:"item-details"},h.default.createElement("div",{className:"item-details__row"},h.default.createElement("span",{className:"item-details__name"},a),h.default.createElement("span",{className:"item-details__trigger"},l)),n,h.default.createElement("div",{className:"item-details__row"},h.default.createElement("span",{className:"item-details__token"},h.default.createElement(v.FormattedMessage,{id:"installed_integrations.token",defaultMessage:"Token: {token}",values:{token:e.token}}))),h.default.createElement("div",{className:"item-details__row"},h.default.createElement("span",{className:"item-details__creation"},h.default.createElement(v.FormattedMessage,{id:"installed_integrations.creation",defaultMessage:"Created by {creator} on {createAt, date, full}",values:{creator:this.props.creator.username,createAt:e.create_at}})))),d)}}]),t}(h.default.PureComponent);k.propTypes={team:_.default.object.isRequired,command:_.default.object.isRequired,onRegenToken:_.default.func.isRequired,onDelete:_.default.func.isRequired,filter:_.default.string,creator:_.default.object.isRequired,canChange:_.default.bool.isRequired},t.default=k}});
//# sourceMappingURL=15.be1edf4d599cd1ecaed6.js.map