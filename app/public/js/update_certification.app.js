var app = new Vue({
  el: '#update_certification',
  data:{
    certificationList:[],
    newCertification: {}
  },

  methods: {
    createCertification(){
      fetch('api/records/update_certification.php',{
        method: 'POST',
        body: JSON.stringify(this.newCertification),
        headers: {
          "Content-Type": "application/json; charset=utf-8"
        }
      })
      console.log(this.newCertification);
    }
  }
})
