var app = new Vue({
  el: '#members',
  data:{
    memberList: [],
    activeMember: {},
    positionList: [],
    newMember: {
      firstName: null,
      lastName: null,
      positionID: null,
      gender: null,
      address: null,
      dateOfBirth: null,
      workPhone: null,
      mobilePhone: null,
      startDate: null,
      endDate: null,
      radioNumber: null,
      stationNumber: null,
      email: null
    },
    membercertification: [],
    certificationList: [],
    memberExpired: [],
    memberCurrent: []

  },

  created(){
    this.fetchMember();
    this.fetchPosition();
    this.fetchCertification();
  },

  methods: {
    fetchExpiredCertification(){
      fetch('api/records/view_member_expired.php',{
        method: 'POST',
        body: JSON.stringify(this.activeMember),
        headers: {
          "Content-Type": "application/json; charset=utf-8"
        }
      })
      .then(response => response.json())
      .then(data => {
        this.memberExpired = data;
        console.log(data);
      });
    },

    fetchCurrentCertification(){
      fetch('api/records/view_member_current.php',{
        method: 'POST',
        body: JSON.stringify(this.activeMember),
        headers: {
          "Content-Type": "application/json; charset=utf-8"
        }
      })
      .then(response => response.json())
      .then(data => {
        this.memberCurrent = data;
        console.log(data);

      });
    },

    updateMember(){
      fetch('api/records/update_test.php',{
        method: 'POST',
        body: JSON.stringify(this.activeMember),
        headers: {
          "Content-Type": "application/json; charset=utf-8"
        }
      })
      .then( response => response.json() )
        .then( json => {
          console.log ("Returned from post:", json);
          this.activeMember = this.activeMemberData();
          console.log(this.activeMember);
        });
      console.log("creating (POSTing)...!");
      console.log(this.activeMember);
    },

    fetchCertification: function(){
      fetch('api/records/view_certifications.php')
      .then(response => response.json())
      .then(data => {
        this.certificationList = data;
        console.log(data);
      });
    },

    fetchMemberCertification(){
      fetch('api/records/view_member_certifications.php',{
        method: 'POST',
        body: JSON.stringify(this.activeMember),
        headers: {
          "Content-Type": "application/json; charset=utf-8"
        }
      })
      .then(response => response.json())
      .then(data => {
        this.membercertification = data;
        console.log(data);
      });
      console.log(this.activeMember);
    },

    editMember(){
      fetch('api/records/edit_member.php',{
        method: 'POST',
        body: JSON.stringify(this.activeMember),
        headers: {
          "Content-Type": "application/json; charset=utf-8"
        }
      })
      console.log("creating (POSTing)...!");
      console.log(this.activeMember);
    },

    newMemberData(){
      return {
        firstName: "",
        lastName: "",
        positionID: "",
        gender: "",
        address: "",
        dateOfBirth: "",
        workPhone: "",
        mobilePhone: "",
        startDate: "",
        radioNumber: "",
        stationNumber: "",
        email: "",
        certificationID: "",
        testDate: ""
      }
    },

    activeMemberData(){
      return {
        testDate: "",
        endDate: "",
        isActive:"",
        personID:"",
        firstName: "",
        lastName: "",
        positionID: "",
        gender: "",
        address: "",
        dateOfBirth: "",
        workPhone: "",
        mobilePhone: "",
        startDate: "",
        radioNumber: "",
        stationNumber: "",
        email: "",
        certificationID: ""
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
      .then( response => response.json() )
        .then( json => {
          console.log ("Returned from post:", json);
          this.memberList.push(json[json.length - 1]);
          this.newMember = this.newMemberData();
        });
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

    deleteMember(){
      fetch('api/records/delete_member.php',{
        method: 'POST',
        body: JSON.stringify(this.activeMember),
        headers: {
          "Content-Type": "application/json; charset=utf-8"
        }
      })
      .then( response => response.json() )
        .then( json => {
          console.log ("Returned from post:", json);
          this.memberList = json;
          this.activeMember = this.activeMemberData();
          console.log(this.memberList);
        });
      console.log("creating (POSTing)...!");
    },

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
