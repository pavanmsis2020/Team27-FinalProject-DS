var app = new Vue({
  el: '#members_by_station',
  data:{
    memberTwoList: [],
    selection:{}
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
  },

// source:https://stackoverflow.com/questions/41735043/remove-repeated-elements-from-v-for-in-vuejs
  computed: {
  stations () {
    return [...new Set(this.memberTwoList.map(({ stationNumber }) => stationNumber))]
    }
  }


})
