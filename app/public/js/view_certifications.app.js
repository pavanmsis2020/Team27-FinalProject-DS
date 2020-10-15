var app = new Vue({
  el: '#certifications',
  data:{
    certificationList: []
  },

  created(){
    this.fetchCertification();

  },

  methods: {

    fetchCertification: function(){
      fetch('api/records/view_certifications.php')
      .then(response => response.json())
      .then(data => {
        this.certificationList = data;
        console.log(data);


      });
    }
  }
})
