import Vue from 'vue'
import './plugins/vuetify'
import App from './App.vue'
import VuePlyr from 'vue-plyr'
import 'vue-plyr/dist/vue-plyr.css'

Vue.use(VuePlyr);

Vue.config.productionTip = false;

new Vue({
  render: h => h(App),
}).$mount('#app');
