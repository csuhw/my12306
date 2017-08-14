<%@ include file="commonhead.jsp" %>
<form class="am-form am-form-horizontal" action="addRoute">
    <fieldset>
        <legend><br/>添加新线路</legend>

        <div class="am-form-group">
            <label class="am-u-sm-2 am-form-label" for="route.id">线路编号</label>
            <div class="am-u-sm-10">
                <input type="text" name="route.id" class="" id="route.id" placeholder="输入线路编号">
            </div>
        </div>
        <div class="am-form-group">
            <label class="am-u-sm-2 am-form-label" for="route.train_id">车次代码</label>
            <div class="am-u-sm-10">
                <input type="text" name="route.train_id" class="" id="route.train_id" placeholder="输入车次代码">
            </div>
        </div>
        <div class="am-form-group">
            <label class="am-u-sm-2 am-form-label" for="route.station_name">车站名</label>
            <div class="am-u-sm-10">
                <input type="text" class="" name="route.station_name" id="route.station_name" placeholder="输入车站名">
            </div>
        </div>
        <div class="am-form-group">
            <label class="am-u-sm-2 am-form-label" for="route.start_time">发车时间</label>
            <div class="am-u-sm-10">
                <input type="text" class="" name="route.start_time" id="route.start_time" placeholder="输入发车时间">
            </div>
        </div>
        <div class="am-form-group">
            <label class="am-u-sm-2 am-form-label" for="route.arrive_time">到站时间</label>
            <div class="am-u-sm-10">
                <input type="text" class="" name="route.arrive_time" id="route.arrive_time" placeholder="输入到站时间">
            </div>
        </div>
        <div class="am-form-group">
            <label class="am-u-sm-2 am-form-label" for="route.length">里程</label>
            <div class="am-u-sm-10">
                <input type="text" class="" name="route.length" id="route.length" placeholder="输入里程">
            </div>
        </div>
        <div class="am-form-group">
            <label class="am-u-sm-2 am-form-label" for="route.stay_time">停留时间</label>
            <div class="am-u-sm-10">
                <input type="text" class="" name="route.stay_time" id="route.stay_time" placeholder="输入停留时间">
            </div>
        </div>
        <div class="am-form-group">
            <label class="am-u-sm-2 am-form-label" for="route.use_time">历时</label>
            <div class="am-u-sm-10">
                <input type="text" class="" name="route.use_time" id="route.use_time" placeholder="历时">
            </div>
        </div>
        <div class="am-form-group">
            <label class="am-u-sm-2 am-form-label" for="route.station_id">车站编号</label>
            <div class="am-u-sm-10">
                <input type="text" class="" name="route.station_id" id="route.station_id" placeholder="输入车站编号">
            </div>
        </div>
    </fieldset>
    <div align="center">
        <button type="submit" class="am-btn am-btn-primary">提交</button>
    </div>
</form>
<%@ include file="commonend.jsp" %>