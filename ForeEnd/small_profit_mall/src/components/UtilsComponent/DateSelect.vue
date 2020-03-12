<!-- 日期搜索框 -->
<template>
  <div id = "myDate" >

    <el-select v-model="yearsModel" @change="dateChange(1)" placeholder="请选择" style="width:100px;">
      <el-option
          v-for="item in years"
          :key="item.value"
          :label="item.label"
          :value="item.value">
      </el-option>
    </el-select>
    <el-select v-model="monthsModel" @change="dateChange(2)" placeholder="请选择" style="width:100px;">
      <el-option
          v-for="item in months"
          :key="item.value"
          :label="item.label"
          :value="item.value">
      </el-option>
    </el-select>
    <el-select v-model="daysModel" @change="dateChange(3)" placeholder="请选择" style="width:100px;">
      <el-option
          v-for="item in days"
          :key="item.value"
          :label="item.label"
          :value="item.value">
      </el-option>
    </el-select>

  </div>
</template>

<script>
  export default {

    data() {
      return {
        yearsModel:null,
        years:[],
        monthsModel:null,
        months:[],
        daysModel:null,
        days:[],
      }
    },
    props:{
      year:null,
      month:null,
      day:null,
    },
    created() {
      this.init();
      this.yearsModel=this.year;
      this.monthsModel=this.month;
      this.daysModel=this.day;
    },
    methods: {
      init(){
        let myDate = new Date;
        let year = myDate.getFullYear();//获取当前年
        let month = myDate.getMonth() + 1;//获取当前月
        let day = myDate.getDate();//获取当前日

        this.initSelectYear(year)
        this.initSelectMonth();
        this.initSelectDay(year,month);
        this.yearsModel = year;
        this.monthsModel = month;
        this.daysModel = day;
        let obj ={year:this.yearsModel,month:this.monthsModel,day:this.daysModel }
        this.$emit('change',obj)
      },
      initSelectYear(year){
        this.years = [];
        for(let i=0;i<80;i++){
          this.years.push({value:(year - i),label:(year - i)+ "年"});
        }
      },
      initSelectMonth(){
        this.months = [];
        this.months.push({value:0,label:"全部"});
        for(let i=1;i<=12;i++){
          this.months.push({value:i,label:i+ "月"});
        }
      },
      initSelectDay(year,month){
        let maxDay = this.getMaxDay(year, month);
        this.days = [];
        this.days.push({value:0,label:"全部"});
        for(let i=1;i<=maxDay;i++){
          this.days.push({value:i,label:i+ "日"});
        }
      },
      dateChange(type){
        //1年 2月 3日 4 左 5右
        if(type == 1||type == 2){
          if(this.monthsModel == 0){
            this.daysModel = 0;
            this.initSelectDay(this.yearsModel,1);
          }else{
            this.initSelectDay(this.yearsModel,this.monthsModel);
          }
        }
        if(type == 4){
          this.dayleft();
        }
        if(type == 5){
          this.dayright();
        }
        //操作父组件方法
        let obj ={year:this.yearsModel,month:this.monthsModel,day:this.daysModel }
        this.$emit('change',obj)

      },
      dayleft(){
        let tmpYear = this.yearsModel;
        let tmpMonth = this.monthsModel;
        let tmpDay = this.daysModel;
        if(tmpYear ==null){
          let myDate = new Date;
          let year = myDate.getFullYear();//获取当前年
          let month = myDate.getMonth() + 1;//获取当前月
          let day = myDate.getDate();//获取当前日
          this.yearsModel = year;
          this.monthsModel = month;
          this.daysModel = day;
          return;
        }
        if(tmpMonth ==null){ tmpMonth = 0}
        if(tmpDay ==null){ tmpDay = 0}

        let yearV = tmpYear;
        let monthV = tmpMonth;
        let dayV = tmpDay;

        if((tmpMonth == 0||tmpMonth == 1) && (tmpDay == 0||tmpDay == 1)){
          yearV = tmpYear  - 1; monthV = 12;
          dayV = this.getMaxDay(tmpYear,tmpMonth);
        }
        if(!(tmpMonth == 0||tmpMonth == 1) && (tmpDay == 0||tmpDay == 1)){
          monthV = tmpMonth - 1;
          dayV = this.getMaxDay(tmpYear,tmpMonth);
        }
        if((tmpMonth == 0||tmpMonth == 1) && !(tmpDay == 0||tmpDay == 1)){
          dayV = tmpDay - 1;
        }
        if(!(tmpMonth == 0||tmpMonth == 1) && !(tmpDay == 0||tmpDay == 1)){
          dayV = tmpDay - 1;
        }
        this.yearsModel = yearV;
        this.monthsModel = monthV;
        this.daysModel = dayV;
      },
      dayright(){
        let myDate = new Date;
        let year = myDate.getFullYear();//获取当前年
        let month = myDate.getMonth() + 1;//获取当前月
        let day = myDate.getDate();//获取当前日

        let tmpYear = this.yearsModel;
        let tmpMonth = this.monthsModel;
        let tmpDay = this.daysModel;

        if(tmpYear ==null){
          myDate = new Date;
          year = myDate.getFullYear();//获取当前年
          month = myDate.getMonth() + 1;//获取当前月
          day = myDate.getDate();//获取当前日
          this.yearsModel = year;
          this.monthsModel = month;
          this.daysModel = day;
          return;
        }

        if(tmpMonth ==null){ tmpMonth = 0}
        if(tmpDay ==null){ tmpDay = 0}
        if(tmpYear>year){
          this.yearsModel = year;
          this.monthsModel = month;
          this.daysModel = day;
          return;
        }
        if(tmpYear == year){
          if((tmpMonth > month || tmpMonth ==0 )||(tmpMonth == month )&&(tmpDay >= day || tmpDay ==0)){
            this.yearsModel = year;
            this.monthsModel = month;
            this.daysModel = day;
            return;
          }
        }

        let maxDay = this.getMaxDay(tmpYear, tmpMonth);
        let yearV = tmpYear;
        let monthV = tmpMonth;
        let dayV = tmpDay;

        if((tmpMonth == 0 || tmpMonth == 12) && (tmpDay == 0 || tmpDay == maxDay)){
          yearV = tmpYear  + 1; monthV = 1;
          dayV = 1;
        }
        if(!(tmpMonth == 0 || tmpMonth == 12) && (tmpDay == 0 || tmpDay == maxDay)){
          monthV = tmpMonth + 1;
          dayV = 1;
        }
        if(!(tmpMonth == 0 || tmpMonth == 12) && !(tmpDay == 0 || tmpDay == maxDay)){
          dayV = tmpDay + 1;
        }

        this.yearsModel = yearV;
        this.monthsModel = monthV;
        this.daysModel = dayV;

      },
      getMaxDay(year,month){
        let new_year = year;  //取当前的年份
        let new_month = month++;//取下一个月的第一天，方便计算（最后一天不固定）
        if(month>12)      //如果当前大于12月，则年份转到下一年
        {
          new_month -=12;    //月份减
          new_year++;      //年份增
        }
        const new_date = new Date(new_year, new_month, 1);//取当年当月中的第一天
        return (new Date(new_date.getTime()-1000*60*60*24)).getDate();//获取当月最后一天日期
      }
    }
  }
</script>