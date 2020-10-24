var app = new Vue({
  el: '#update_members',
  data:{
    positionList: []
  },

  created(){
    this.fetchPosition();

  },

  methods: {

    fetchPosition: function(){
      fetch('api/records/view_positions.php')
      .then(response => response.json())
      .then(data => {
        this.positionList = data;
        console.log(data);


      });
    }
  }
})
