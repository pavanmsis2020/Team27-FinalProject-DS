var app = new Vue({
  el: '#update_members',
  data:{
    positionList: [],
    newMember: {

    }
  },

  created(){
    this.fetchPosition();

  },

  methods: {
    newMemberData(){
      return {
        firstName: ""
      }
    },


    createMember(){
      fetch('api/records/update_members.php',{
        method: 'POST',
        body: JSON.stringify(this.newMember),
        headers: {
          "Content-Type": "application/json; charset=utf-8"
        }
      })
        
      console.log("creating (POSTing)...!");
      console.log(this.newMember);
    },






    fetchPosition: function(){
      fetch('api/records/view_positions.php')
      .then(response => response.json())
      .then(data => {
        this.positionList = data;
        console.log(data);


      });
    },



  },
})
