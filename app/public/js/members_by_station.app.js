var app = new Vue({
  el: '#members_by_station',
  data:{
    memberTwoList: []
  },

  created(){
    this.fetchMemberTwo();

  },

  methods: {

    fetchMemberTwo: function(){
      fetch('api/reports/members_by_station.php')
      .then(response => response.json())
      .then(data => {
        this.memberTwoList = data;
        console.log(data);


      });
    }
  }
})
