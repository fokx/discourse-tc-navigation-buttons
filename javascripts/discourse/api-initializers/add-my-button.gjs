import {apiInitializer} from "discourse/lib/api";
import HeaderNavButton from "../components/header-nav-button";
import DButton from "discourse/components/d-button";

// export default apiInitializer("1.0", (api) => {
//     api.headerIcons.add("navi-btn-right", HeaderNavButton);
// });

export default apiInitializer("1.0", (api) => {
    // api.headerIcons.add("some-unique-name", <template>
    //     <li><DButton class="icon btn-flat" @href="/u" @icon="address-book" /></li>
    // </template>);
    api.headerIcons.add("some-unique-name2", HeaderNavButton);
});
