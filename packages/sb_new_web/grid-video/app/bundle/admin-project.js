!function(t){function e(s){if(o[s])return o[s].exports;var a=o[s]={exports:{},id:s,loaded:!1};return t[s].call(a.exports,a,a.exports,e),a.loaded=!0,a.exports}var o={};return e.m=t,e.c=o,e.p="",e(0)}([function(t,e,o){t.exports={el:"#project-edit",data:function(){return _.merge({tags:[],project:{},form:{}},window.$data)},created:function(){this.config.datafields.forEach(function(t){this.project.data[t.name]=this.project.data[t.name]||""}.bind(this))},ready:function(){this.Project=this.$resource("api/video/project/{id}"),this.tab=UIkit.tab(this.$els.tab,{connect:this.$els.content})},methods:{save:function(){var t={project:this.project};this.$broadcast("save",t),this.Project.save({id:this.project.id||0},t).then(function(t){this.project.id||window.history.replaceState({},"",this.$url.route("admin/video/project/edit",{id:t.data.project.id})),this.$set("project",t.data.project),this.$notify(this.$trans("Project %title% saved.",{title:this.project.title}))},function(t){this.$notify(t,"danger")})}},components:{"video-basic":o(29),"video-images":o(32),"video-data":o(30),"input-folder":o(27)}},Vue.ready(t.exports)},,,,,,,,,function(t,e){"use strict";t.exports={props:["folder","class"],data:function(){return $sb_new_web},methods:{pick:function(){this.$refs.modal.open()},select:function(){this.folder=this.$refs.finder.getSelected()[0],this.$dispatch("folder-selected",this.folder),this.$refs.finder.removeSelection(),this.$refs.modal.close()},remove:function(t){t.stopPropagation(),this.folder="",this.$dispatch("folder-selected",this.folder)},hasSelection:function(){var t=this.$refs.finder.getSelected();return 1===t.length&&!t[0].match(/\.(.+)$/i)}}},Vue.component("input-folder",function(e,o){Vue.asset({js:["app/assets/uikit/js/components/upload.min.js","app/system/modules/finder/app/bundle/panel-finder.js"]}).then(function(){e(t.exports)})})},function(t,e){"use strict";t.exports={props:{tags:{type:Array,"default":[]},existing:{type:Object,"default":{}}},data:function(){return{newtag:""}},methods:{addTag:function(t){t=t||this.newtag,this.selected(t)||(this.tags.push(t),this.$nextTick(function(){UIkit.$html.trigger("resize")}),this.newtag="")},removeTag:function(t){this.tags.$remove(t)},selected:function(t){return this.tags.indexOf(t)>-1}}}},function(t,e,o){"use strict";t.exports={props:["project","config","form"],data:function(){return _.merge({tags:[],statuses:{}},window.$data)},components:{"input-tags":o(28)}}},function(t,e){"use strict";t.exports={props:["project","config","form"],created:function(){this.$on("datafieldvalue.changed",function(t,e){this.project.data[t]=e})},components:{datafieldvalue:{props:["datafield","value"],template:'<label for="form-{{ datafield.name }}" class="uk-form-label">{{ datafield.label }}</label>\n<div class="uk-form-controls">\n    <input id="form-{{ datafield.name }}" class="uk-form-width-medium" type="text" name="{{ datafield.name }}"\n           v-model="value">\n</div>\n',watch:{value:function(t){this.$dispatch("datafieldvalue.changed",this.datafield.name,t)}}}}}},function(t,e){"use strict";t.exports={props:["image"]}},function(t,e,o){"use strict";t.exports={props:["project","config","form"],data:function(){return{images:[]}},created:function(){this.project.images=this.project.images||[],this.imageApi=this.$resource("api/video/image/:source"),this.$on("folder-selected",function(t){this.loadFolder(t)}),this.project.image&&this.project.image.folder&&this.loadFolder(this.project.image.folder)},methods:{loadFolder:function(t){return t?void this.imageApi.query({folder:t}).then(function(t){var e=t.data,o=this.project.images,s=e.map(function(t){return _.assign({show_teaser:!0,descr:""},t,_.find(o,"src",t.src))});this.$set("project.images",s)}):this.$set("project.images",[])}},components:{videoimage:o(31)}}},,,,function(t,e){t.exports='<div @click=pick :class=class> <ul class="uk-float-right uk-subnav pk-subnav-icon"> <li><a class="pk-icon-delete pk-icon-hover" :title="\'Delete\' | trans" data-uk-tooltip="{delay: 500, \'pos\': \'left\'}" @click=remove></a></li> </ul> <a class="pk-icon-folder-circle uk-margin-right"></a> <a v-if=!folder class=uk-text-muted>{{ \'Select folder\' | trans }}</a> <a v-else>{{ folder }}</a> </div> <v-modal v-ref:modal large> <panel-finder :root=storage v-ref:finder modal></panel-finder> <div class="uk-modal-footer uk-text-right"> <button class="uk-button uk-button-link uk-modal-close" type=button>{{ \'Cancel\' | trans }}</button> <button class="uk-button uk-button-primary" type=button :disabled=!hasSelection() @click=select()>{{ \'Select\' | trans }}</button> </div> </v-modal>'},function(t,e){t.exports='<div class="uk-flex uk-flex-wrap" data-uk-margin=""> <div v-for="tag in tags" class="uk-badge uk-margin-small-right" track-by=$index> <a class="uk-float-right uk-close" @click.prevent=removeTag(tag)></a> {{ tag }} </div> </div> <div class="uk-flex uk-flex-middle uk-margin"> <div> <div class=uk-position-relative data-uk-dropdown=""> <button type=button class="uk-button uk-button-small">{{ \'Existing\' | trans }}</button> <div class="uk-dropdown uk-dropdown-small"> <ul class="uk-nav uk-nav-dropdown"> <li v-for="tag in existing"><a :class="{\'uk-text-muted\': selected(tag)}" @click.prevent=addTag(tag)>{{ tag }}</a></li> </ul> </div> </div> </div> <div class="uk-flex-item-1 uk-margin-small-left"> <div class=uk-form-password> <input type=text class=uk-width-1-1 v-model=newtag> <a class=uk-form-password-toggle @click.prevent=addTag()> <i class="uk-icon-check uk-icon-hover"></i></a> </div> </div> </div>'},function(t,e){t.exports="<div class=uk-margin> <div class=\"uk-grid pk-grid-large pk-width-sidebar-large\" data-uk-grid-margin> <div class=pk-width-content> <div class=\"uk-form-horizontal uk-margin\"> <div class=uk-form-row> <label for=form-title class=uk-form-label>{{ 'Title' | trans }}</label> <div class=uk-form-controls> <input id=form-title class=\"uk-width-1-1 uk-form-large\" type=text name=title v-model=project.title v-validate:required> </div> <p class=\"uk-form-help-block uk-text-danger\" v-show=form.title.invalid>{{ 'Please enter a title' | trans }}</p> </div> <div class=uk-form-row> <label for=form-subtitle class=uk-form-label>{{ 'Subtitle' | trans }}</label> <div class=uk-form-controls> <input id=form-subtitle class=uk-width-1-1 type=text name=subtitle v-model=project.subtitle> </div> </div> </div> <div class=\"uk-form-stacked uk-margin\"> <div class=uk-form-row> <span class=uk-form-label>{{ 'Intro' | trans }}</span> <div class=uk-form-controls> <v-editor id=form-intro :value.sync=project.intro :options=\"{markdown : project.data.markdown, height: 250}\"></v-editor> </div> </div> <div class=uk-form-row> <span class=uk-form-label>{{ 'Content' | trans }}</span> <div class=uk-form-controls> <v-editor id=form-content :value.sync=project.content :options=\"{markdown : project.data.markdown}\"></v-editor> </div> </div> </div> </div> <div class=\"pk-width-sidebar uk-form-stacked\"> <div class=uk-form-row> <label for=form-slug class=uk-form-label>{{ 'Slug' | trans }}</label> <div class=uk-form-controls> <input id=form-slug class=uk-width-1-1 type=text v-model=project.slug> </div> </div> <div class=uk-form-row> <label for=form-slug class=uk-form-label>{{ 'Ordering' | trans }}</label> <div class=uk-form-controls> <input id=form-ordering class=\"uk-form-width-small uk-text-center\" type=number v-model=project.priority number> </div> </div> <div class=uk-form-row> <label for=form-status class=uk-form-label>{{ 'Status' | trans }}</label> <div class=uk-form-controls> <select id=form-status class=uk-width-1-1 v-model=project.status> <option v-for=\"status in statuses\" :value=$key>{{ status | trans }}</option> </select> </div> </div> <div class=uk-form-row> <label for=form-client class=uk-form-label>{{ 'Client' | trans }}</label> <div class=uk-form-controls> <input id=form-client class=uk-width-1-1 type=text v-model=project.client> </div> </div> <div class=uk-form-row> <span class=uk-form-label>{{ 'Date' | trans }}</span> <div class=uk-form-controls> <input-date :datetime.sync=project.date></input-date> </div> </div> <div class=uk-form-row> <span class=uk-form-label>{{ 'Tags' | trans }}</span> <div class=uk-form-controls> <input-tags :tags.sync=project.tags :existing=tags></input-tags> </div> </div> <div class=uk-form-row> <span class=uk-form-label>{{ 'Options' | trans }}</span> <div class=\"uk-form-controls uk-form-controls-text\"> <label> <input type=checkbox value=markdown v-model=project.data.markdown> {{ 'Enable Markdown' | trans }}</label> </div> </div> </div> </div> </div>"},function(t,e){t.exports='<div class="uk-form-horizontal uk-margin"> <div v-for="datafield in config.datafields" class=uk-form-row> <datafieldvalue :datafield=datafield :value.sync=project.data[datafield.name]></datafieldvalue> </div> </div>'},function(t,e){t.exports='<li> <div class=uk-grid data-uk-grid-margin=""> <div class=uk-width-medium-1-5> <div class="uk-overlay uk-overlay-hover uk-visible-hover pk-image-max-height"> <img :src=$url(image.src) :alt=image.filename> <div class="uk-overlay-panel uk-overlay-background uk-overlay-fade"></div> </div> </div> <div class=uk-width-medium-2-5> <div class=uk-form-row> <div class=uk-form-controls> <input type=text v-model=image.title class="uk-form-large uk-form-width-large" placeholder="{{ \'Image title\' | trans }}"/><br> </div> </div> <div class=uk-form-row> <div class=uk-form-controls> <textarea v-model=image.descr rows=3 class=uk-form-width-large placeholder="{{ \'Image description\' | trans }}"></textarea> </div> </div> </div> <div class=uk-width-medium-2-5> <div class=uk-form-row> <span class=uk-form-label>{{ \'Options\' | trans }}</span> <div class="uk-form-controls uk-form-controls-text"> <label> <input type=checkbox value=show-teaser v-model=image.show_teaser> {{ \'Show in teaser\' | trans }}</label> </div> </div> </div> </div> </li>'},function(t,e){t.exports='<div class="uk-margin uk-form-stacked"> <div class="uk-grid uk-margin" data-uk-grid-margin> <div class=uk-width-medium-1-2> <div class=uk-form-row> <label class=uk-form-label>{{ \'Main image\' | trans }}</label> <div class=uk-form-controls> <input-image-meta :image.sync=project.image.main class=pk-image-max-height></input-image-meta> </div> </div> </div> <div class=uk-width-medium-1-2> <div class=uk-form-row> <label class=uk-form-label>{{ \'Teaser image\' | trans }}</label> <div class=uk-form-controls> <input-image-meta :image.sync=project.image.teaser class=pk-image-max-height></input-image-meta> </div> </div> </div> </div> <div class="uk-margin-large-top uk-form-horizontal uk-panel uk-panel-box"> <div class=uk-form-row> <label class=uk-form-label>{{ \'Image folder\' | trans }}</label> <div class=uk-form-controls> <ul class="uk-float-right uk-subnav pk-subnav-icon"> <li><a class="uk-icon-info pk-icon-hover" data-uk-modal="{target:\'#folder-help\'}"></a></li> </ul> <input-folder :folder=project.image.folder class=uk-width-medium-1-2></input-folder> </div> </div> </div> <div v-show=project.images.length class=uk-margin> <ul class="uk-list uk-list-line"> <videoimage v-for="image in project.images" :image=image></videoimage> </ul> </div> <div id=folder-help class=uk-modal> <div class=uk-modal-dialog> <a class="uk-modal-close uk-close"></a> <div class=uk-modal-header> <h3><i class="pk-icon-info uk-margin-small-right"></i>{{ \'Image folder\' | trans }}</h3> </div> <p> {{ \'Select the folder by checking the checkbox in front of the name! Click "Select" button at bottom to confirm.\' | trans }} </p> <p> {{ \'Images in the folder are sorted by alphabet. Numbers in front of the filename are removed, so you can influence the ordering by naming your images with numbers.\' | trans }} </p> </div> </div> </div>'},,,,function(t,e,o){var s,a;s=o(9),a=o(18),t.exports=s||{},t.exports.__esModule&&(t.exports=t.exports["default"]),a&&(("function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=a)},function(t,e,o){var s,a;s=o(10),a=o(19),t.exports=s||{},t.exports.__esModule&&(t.exports=t.exports["default"]),a&&(("function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=a)},function(t,e,o){var s,a;s=o(11),a=o(20),t.exports=s||{},t.exports.__esModule&&(t.exports=t.exports["default"]),a&&(("function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=a)},function(t,e,o){var s,a;s=o(12),a=o(21),t.exports=s||{},t.exports.__esModule&&(t.exports=t.exports["default"]),a&&(("function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=a)},function(t,e,o){var s,a;s=o(13),a=o(22),t.exports=s||{},t.exports.__esModule&&(t.exports=t.exports["default"]),a&&(("function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=a)},function(t,e,o){var s,a;s=o(14),a=o(23),t.exports=s||{},t.exports.__esModule&&(t.exports=t.exports["default"]),a&&(("function"==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=a)}]);