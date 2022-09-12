// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import store from './store'
import {
  Button as aButton,
  Layout as aLayout,
  Menu as aMenu,
  Row as aRow,
  Col as aCol,
  Upload as aUpload,
  Card as aCard,
  Icon as aIcon,
  Divider as aDivider,
  Breadcrumb as aBreadcrumb,
  Input as aInput,
  Dropdown as aDropdown,
  Modal as aModal,
  Tabs as aTabs,
  FormModel as aFormModel,
  AutoComplete as aAutoComplete,
  Select as aSelect,
  Radio as aRadio,
  Checkbox as aCheckbox,
  Table as aTable,
  Tag as aTag,
  Form as aForm,
  List as aList,
  Avatar as aAvatar,
  message,
  Collapse as aCollapse,
  Skeleton as aSkeleton,
  Tooltip as aTooltip,
  Popconfirm as aPopconfirm,
} from 'ant-design-vue'
import {
  Carousel as elCarousel,
  CarouselItem as elCarouselItem,
  Card as elCard,
  Button as elButton,
  Slider as elSlider,
  ColorPicker as elColorPicker,
  Icon as elIcon,
} from 'element-ui'

Vue.config.productionTip = false

//antd
Vue.use(aButton)
Vue.use(aLayout)
Vue.use(aMenu)
Vue.use(aRow)
Vue.use(aCol)
Vue.use(aUpload)
Vue.use(aCard)
Vue.use(aIcon)
Vue.use(aDivider)
Vue.use(aBreadcrumb)
Vue.use(aInput)
Vue.use(aDropdown)
Vue.use(aModal)
Vue.use(aTabs)
Vue.use(aFormModel)
Vue.use(aAutoComplete)
Vue.use(aSelect)
Vue.use(aRadio)
Vue.use(aCheckbox)
Vue.use(aTable)
Vue.use(aTag)
Vue.use(aForm)
Vue.use(aList)
Vue.use(aAvatar)
Vue.prototype.$message = message;
Vue.use(aCollapse)
Vue.use(aSkeleton)
Vue.use(aTooltip)
Vue.use(aPopconfirm)

// 复位图标
const MyIcon = aIcon.createFromIconfontCN({
  scriptUrl: '//at.alicdn.com/t/font_2621435_05t2trilwh6j.js', // 在 iconfont.cn 上生成
});
Vue.component('MyIcon', MyIcon);

//element-ui
Vue.use(elCarousel)
Vue.use(elCarouselItem)
Vue.use(elCard)
Vue.use(elButton)
Vue.use(elSlider)
Vue.use(elColorPicker)
Vue.use(elIcon)

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  components: {App},
  template: '<App/>'
})
