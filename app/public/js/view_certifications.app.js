var app = new Vue({
  el: '#certifications',
  data:{
    certificationList: [],
    activeCertification: {},
    newCertification:{}
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
    },

    editCertification(){
      fetch('api/records/edit_certification.php',{
        method: 'POST',
        body: JSON.stringify(this.activeCertification),
        headers: {
          "Content-Type": "application/json; charset=utf-8"
        }
      })

      console.log("creating (POSTing)...!");
      console.log(this.activeCertification);
    },



    newCertificationData(){
      return {
        certificationName: ""
      }
    },


    createCertification(){
      fetch('api/records/update_certification.php',{
        method: 'POST',
        body: JSON.stringify(this.newCertification),
        headers: {
          "Content-Type": "application/json; charset=utf-8"
        }
      })

      console.log("creating (POSTing)...!");
      console.log(this.newCertification);
    },






    // fetchPosition: function(){
    //   fetch('api/records/view_positions.php')
    //   .then(response => response.json())
    //   .then(data => {
    //     this.positionList = data;
    //     console.log(data);
    //
    //
    //   });
    // },



    deleteCertification(){
      fetch('api/records/delete_certification.php',{
        method: 'POST',
        body: JSON.stringify(this.activeCertification),
        headers: {
          "Content-Type": "application/json; charset=utf-8"
        }
      })

      console.log("creating (POSTing)...!");
      console.log(this.activeCertification);
    },

    // fetchMember: function(){
    //   fetch('api/records/view_certifications.php')
    //   .then(response => response.json())
    //   .then(data => {
    //     this.memberList = data;
    //     console.log(data);
    //
    //
    //
    //   });
    // }
  }
})
