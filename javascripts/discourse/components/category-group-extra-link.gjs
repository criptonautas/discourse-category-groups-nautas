import Component from "@glimmer/component";
import CookText from "discourse/components/cook-text";
import borderColor from "discourse/helpers/border-color";
import dIcon from "discourse/helpers/d-icon";

export default class CategoryGroupExtraLink extends Component {
  get borderColor() {
    // Using JSON schema we get the hash, and then borderColor adds another one. Slice it out!
    return this.args.link.color.slice(1);
  }

  <template>
    <li
      style={{borderColor this.borderColor}}
      class="extra-link category category-box extra-link-{{@link.id}}"
    >
      <div class="category-box-inner">
        <div class="category-details">
          <div class="category-box-heading">
            <a class="parent-box-link" href={{@link.url}}>
              <h3 class="title">
                <span class="badge-category__wrapper">
                  <span class="badge-category --style-icon">
                    {{dIcon @link.icon}}
                    <span class="badge-category__name">{{@link.title}}</span>
                  </span>
                </span>
              </h3>
            </a>
          </div>

          <div class="description">
            <CookText @rawText={{@link.description}} />
          </div>
        </div>
      </div>
    </li>
  </template>
}
