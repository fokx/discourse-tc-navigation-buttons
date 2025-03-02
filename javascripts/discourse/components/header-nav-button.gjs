import Component from "@glimmer/component";
import { tracked } from "@glimmer/tracking";
import { action } from "@ember/object";
import { service } from "@ember/service";
import DButton from "discourse/components/d-button";
import not from "truth-helpers/helpers/not";

export default class HeaderNavButton extends Component {
    @service site;
    @action
    navi_back() {
        history.back();
    }
    @action
    navi_forward() {
        history.forward();
    }
    <template>
    {{#if (not this.site.mobileView)}}
        <li><DButton class="icon btn-flat" @action={{this.navi_back}} @icon="circle-chevron-left" /></li>
        <li><DButton class="icon btn-flat" @action={{this.navi_forward}} @icon="circle-chevron-right" /></li>
    {{/if}}
    </template>
}
