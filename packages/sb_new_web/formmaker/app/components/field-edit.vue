<template>
    <div>
        <div class="uk-modal-spinner" v-if="!loaded"></div>
        <form v-else id="field-edit" class="uk-form" name="fieldform" v-validator="form" @submit.prevent="save | valid">

            <div class="uk-margin uk-flex uk-flex-space-between uk-flex-wrap" data-uk-margin>
                <div data-uk-margin>

                    <h2 class="uk-margin-remove" v-if="field.id">{{ 'Edit' | trans }} {{ type.label }} <em>{{
                        field.label | trans }}</em></h2>

                    <h2 class="uk-margin-remove" v-if="!field.id">{{ 'Add' | trans }} {{ type.label }} <em>{{
                        field.label | trans }}</em></h2>

                </div>
                <div data-uk-margin>

                    <a class="uk-button uk-margin-small-right uk-modal-close">{{ field.id ? 'Close' :
                        'Cancel' | trans }}</a>
                    <button class="uk-button uk-button-primary" type="submit">{{ 'Save' | trans }}</button>

                </div>
            </div>

            <ul class="uk-tab" data-uk-tab="connect:'#field-edit-switcher'">
                <li><a>{{ type.label | trans }}</a></li>
                <li v-if="type.hasOptions"><a>{{ 'Options' | trans }}</a></li>
                <li><a>{{ 'Appearance' | trans }}</a></li>
            </ul>

            <div id="field-edit-switcher" class="uk-switcher uk-margin">
                <div>
                    <fieldbasic :field.sync="field" :type.sync="type" :roles="roles" :form="form"></fieldbasic>
                </div>
                <div v-if="type.hasOptions">
                    <fieldoptions :field.sync="field" :form="form"></fieldoptions>
                </div>
                <div>
                    <appearance :field.sync="field" :form="form"></appearance>
                </div>
            </div>

        </form>
    </div>


</template>

<script>

    module.exports = {
        data() {
            return {
                loaded: false,
                type: {
                    label: ''
                },
                field: {
                    label: '',
                    type: '',
                    priority: 0,
                    form_id: 0,
                    data: {
                        value: [],
                        data: {},
                        classSfx: '',
                        help_text: '',
                        help_show: ''
                    }
                },
                roles: []
            };
        },

        props: ['formitem', 'form', 'fieldid'],

        created() {
            this.Fields = this.$resource('api/formmaker/field/edit');
            this.Field = this.$resource('api/formmaker/field{/id}');
        },

        ready() {
            this.Fields.query({id: this.fieldid}).then(res => {
                this.$set('field',res.data.field);
                this.$set('type', res.data.type);
                this.$set('roles', res.data.roles);
                this.field.form_id = this.formitem.id;

                this.loaded = true;
            });


        },

        beforeDestroy() {
            this.$dispatch('close.editmodal');
        },

        methods: {

            save() {

                var data = {field: this.field};

                this.$broadcast('save', data);

                this.Field.save({id: this.field.id}, data).then(res => {

                    this.$set('field', res.data.field);

                    this.$notify(this.$trans('%type% saved.', {type: this.type.label}));

                }, res => this.$notify(res.data.message || res.data, 'danger'));
            },
            formFieldInvalid(fieldname) {
                console.log(this.$parent);
                console.log(this.$validator.validators);

            }

        },

        components: {
            fieldbasic: require('./field-basic.vue'),
            fieldoptions: require('./field-options.vue'),
            appearance: require('./field-appearance.vue')
        }

    };

</script>
