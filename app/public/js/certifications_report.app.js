var app = new Vue({
  el: '#certifications_report',
  data:{
    certificationReport: [],
    criteria:{
      name:''
      // radio:''
    }
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
  }
})
