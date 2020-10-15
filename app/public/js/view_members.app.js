var app = new Vue({
  el: '#members',
  data:{
    memberList: []
  },

  created(){
    this.fetchMember();

  },

  methods: {

    fetchMember: function(){
      fetch('api/records/view_members.php')
      .then(response => response.json())
      .then(data => {
        this.memberList = data;
        console.log(data);


      });
    }
  }
})
