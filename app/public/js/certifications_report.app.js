var app = new Vue({
  el: '#certifications_report',
  data:{
    certificationReport: [],
    criteria:{}
  },

  created(){
    this.fetchCertReport();

  },

  methods: {

    fetchCertReport: function(){
      fetch('api/reports/expired_certs.php')
      .then(response => response.json())
      .then(data => {
        this.certificationReport = data;
        console.log(data);


      });
    }
  },

  // source:https://stackoverflow.com/questions/41735043/remove-repeated-elements-from-v-for-in-vuejs
    computed: {
    cert () {
      return [...new Set(this.certificationReport.map(({ certificationName }) => certificationName))]
      }
    }
})
