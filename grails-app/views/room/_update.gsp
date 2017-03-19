<%@ page import="com.quanlinhatro.Service" %>
<div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="databox bg-white radius-bordered">
                    <div class="databox-left bg-themesecondary">
                        <div class="databox-piechart" style="vertical-align: middle; text-align: center; line-height: 45px">
                            <span>${room.electricDetail?.value2}</span>
                        </div>
                    </div>
                    <div class="databox-right">
                        <span class="databox-number themesecondary">Số điện</span>
                        <div class="databox-text darkgray">Cập nhật ngày ${room.electricDetail.lastUpdated.format('dd/MM/yyyy')}</div>
                        <div class="databox-stat themesecondary radius-bordered">
                            <i class="stat-icon icon-lg fa fa-edit"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="databox bg-white radius-bordered">
                    <div class="databox-left bg-themethirdcolor">
                        <div class="databox-piechart" style="vertical-align: middle; text-align: center; line-height: 45px">
                            ${room.waterDetail?.value2}
                        </div>
                    </div>
                    <div class="databox-right">
                        <span class="databox-number themethirdcolor">Số nước</span>
                        <div class="databox-text darkgray">Cập nhật ngày ${new Date().format('dd/MM/yyyy').plus(5)}</div>
                        <div class="databox-stat themethirdcolor radius-bordered">
                            <i class="stat-icon  icon-lg fa fa-edit"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="databox bg-white radius-bordered">
                    <div class="databox-left bg-themeprimary">
                        <div class="databox-piechart">
                            <div id="users-pie" data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="76" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="rgba(255,255,255,0.1)" style="width: 47px; height: 47px; line-height: 47px;"><span class="white font-90">76%</span><canvas width="47" height="47"></canvas></div>
                        </div>
                    </div>
                    <div class="databox-right">
                        <span class="databox-number themeprimary">92</span>
                        <div class="databox-text darkgray">NEW USERS</div>
                        <div class="databox-state bg-themeprimary">
                            <i class="fa fa-check"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="databox bg-white radius-bordered">
                    <div class="databox-left no-padding">
                        <img src="assets/img/avatars/John-Smith.jpg" style="width:65px; height:65px;">
                    </div>
                    <div class="databox-right padding-top-20">
                        <div class="databox-stat palegreen">
                            <i class="stat-icon icon-xlg fa fa-phone"></i>
                        </div>
                        <div class="databox-text darkgray">JOHN SMITH</div>
                        <div class="databox-text darkgray">TOP RESELLER</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
        <div class="row">
            <div class="col-xs-12">
                <div class="dashboard-box">
                    <div class="box-header">
                        <div class="deadline">
                           Tháng ${new Date().format("MM")}
                        </div>
                    </div>
                    <div class="box-progress">
                        <g:set var="percent" value="${java.util.Calendar.instance[Calendar.DATE] * 100 / java.util.Calendar.instance.getActualMaximum(Calendar.DAY_OF_MONTH)}"/>
                        <g:set var="dueDate" value="${room.dueDate * 100 / java.util.Calendar.instance.getActualMaximum(Calendar.DAY_OF_MONTH)}"/>
                        <div class="progress-handle bg-darkorange" style="left: -webkit-calc(${dueDate}% - 35px);left: -moz-calc(${dueDate}% - 35px);left: calc(${dueDate}% - 35px); width: 80px !important;">Hạn ngày ${room.dueDate}</div>
                        <div class="progress-handle" style="left: -webkit-calc(${percent}% - 35px);left: -moz-calc(${percent}% - 35px);left: calc(${percent}% - 35px);">Ngày ${java.util.Calendar.instance[Calendar.DATE]}</div>
                        <div class="progress progress-xs progress-no-radius bg-whitesmoke">
                            <div class="progress-bar" role="progressbar" aria-valuenow="${java.util.Calendar.instance[Calendar.DATE]}" aria-valuemin="1" aria-valuemax="${java.util.Calendar.instance.getActualMaximum(Calendar.DAY_OF_MONTH)}" style="width: ${percent}%">
                            </div>
                        </div>
                    </div>
                    <div class="box-tabbs">
                        <div class="tabbable">
                            <ul class="nav nav-tabs tabs-flat  nav-justified" id="myTab11">
                                <li class="active">
                                    <a data-toggle="tab" href="#tab1_value">
                                        Các khoản cần thanh toán
                                    </a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#visits">
                                        Bảng Giá
                                    </a>
                                </li>

                                <li>
                                    <a data-toggle="tab" id="contacttab" href="#bandwidth">
                                        Bandwidth
                                    </a>
                                </li>
                                <li>
                                    <a data-toggle="tab" href="#sales">
                                        Sales
                                    </a>
                                </li>
                            </ul>
                            <div class="tab-content tabs-flat no-padding">
                                <div id="tab1_value" class="tab-pane active padding-5 animated fadeInUp">
                                    <div class="horizontal-space"></div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 padding-bottom-20">
                                        <g:formRemote class="form-horizontal" name="update_currentValue" url="[controller: 'room', action: 'saveUpdateCurrentValue']" update="update_currentValue">
                                            <div id="update_currentValue"></div>
                                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 padding-15 bordered-ddd" style="border-radius: 5px">
                                                <div class="form-title">
                                                    Lượng sử dụng tháng này:
                                                </div>

                                                    <g:each in="${room.leaseThisMonth.details.sort{it.id}}" var="detail">
                                                        <div class="form-group">
                                                            <div class="col-sm-12">
                                                                <label>${detail.parseInstance().name}:</label>
                                                                <g:hiddenField name="detail" value="${detail.id}"/>
                                                                <span class="input-icon icon-right">
                                                                    <g:if test="${detail.parseInstance().unit == com.quanlinhatro.Service.Unit.TIENPHONG}">
                                                                        <input name="currentPrice" type="text" class="form-control" value="${detail.price}">
                                                                    </g:if>
                                                                    <g:else>
                                                                        <input name="curentValue" type="text" class="form-control" value="${detail.value2 != 0 ? detail.value2 : detail.value1}">
                                                                    </g:else>
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </g:each>


                                            </div>
                                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                                <div class="form-title">
                                                    Tạm tính: %{--TODO: make table--}%
                                                </div>
                                                <g:each in="${room.leaseThisMonth.details.sort{it.id}}" var="detail">
                                                    <div class="form-group">
                                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                            <label class="col-md-3 no-padding">${detail.parseInstance().name}</label>
                                                            <g:set var="used" value="${Math.abs(detail.value2 - detail.value1)}"/>
                                                            <label class="col-md-5 no-padding-right text-align-right">${used != 1 ? used + "x" : ""} ${detail.parseInstance().currentPrice} = </label>
                                                            <label class="col-md-4 no-padding-right text-align-right">${detail.price} đ</label>
                                                        </div>
                                                        <div class="clearfix"></div>
                                                    </div>
                                                </g:each>

                                                <div class="form-title">
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-12">
                                                        <label class="col-md-8">Tổng cộng:</label>
                                                        <label class="col-md-4 no-padding-right text-align-right"><g:formatNumber number="${room.leaseThisMonth.total}" format="###,###,###"/> đ</label>
                                                    </div>
                                                </div>

                                            </div>
                                        </g:formRemote>
                                    </div>
                                    <div class="horizontal-space"></div>
                                </div>
                                <div id="visits" class="tab-pane  animated fadeInUp">
                                    <div class="row">
                                        <div class="col-lg-12 chart-container">
                                            <div id="dashboard-chart-visits" class="chart chart-lg no-margin" style="width: 100%; padding: 0px; position: relative;"><canvas class="flot-base" width="100" height="250" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 100px; height: 250px;"></canvas><div class="flot-text" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; font-size: smaller; color: rgb(84, 84, 84);"><div class="flot-x-axis flot-x1-axis xAxis x1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;"><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 20px; top: 250px; left: 20px; text-align: center;">5</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 20px; top: 250px; left: 49px; text-align: center;">10</div><div class="flot-tick-label tickLabel" style="position: absolute; max-width: 20px; top: 250px; left: 78px; text-align: center;">15</div></div></div><canvas class="flot-overlay" width="100" height="250" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 100px; height: 250px;"></canvas></div>
                                        </div>
                                    </div>

                                </div>

                                <div id="bandwidth" class="tab-pane padding-10 animated fadeInUp">
                                    <div class="databox-sparkline bg-themeprimary">
                                        <span id="dashboard-bandwidth-chart" data-sparkline="compositeline" data-height="250px" data-width="100%" data-linecolor="#fff" data-secondlinecolor="#eee" data-fillcolor="rgba(255,255,255,.1)" data-secondfillcolor="rgba(255,255,255,.25)" data-spotradius="0" data-spotcolor="#fafafa" data-minspotcolor="#fafafa" data-maxspotcolor="#ffce55" data-highlightspotcolor="#fff" data-highlightlinecolor="#fff" data-linewidth="2" data-secondlinewidth="2" data-composite="500, 400, 100, 450, 300, 200, 100, 200"><canvas width="786" height="250" style="display: inline-block; width: 786px; height: 250px; vertical-align: top;"></canvas></span>
                                    </div>
                                </div>
                                <div id="sales" class="tab-pane animated fadeInUp no-padding-bottom" style="padding:20px 20px 0 20px;">
                                    <div class="row">
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                            <div class="databox databox-xlg databox-vertical databox-inverted databox-shadowed">
                                                <div class="databox-top">
                                                    <div class="databox-sparkline">
                                                        <span data-sparkline="line" data-height="125px" data-width="100%" data-fillcolor="false" data-linecolor="themesecondary" data-spotcolor="#fafafa" data-minspotcolor="#fafafa" data-maxspotcolor="#ffce55" data-highlightspotcolor="#ffce55" data-highlightlinecolor="#ffce55" data-linewidth="1.5" data-spotradius="2"><canvas width="100" height="125" style="display: inline-block; width: 100px; height: 125px; vertical-align: top;"></canvas></span>
                                                    </div>
                                                </div>
                                                <div class="databox-bottom no-padding text-align-center">
                                                    <span class="databox-number lightcarbon no-margin">224</span>
                                                    <span class="databox-text lightcarbon no-margin">Sale Unit / Hour</span>

                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                            <div class="databox databox-xlg databox-vertical databox-inverted databox-shadowed">
                                                <div class="databox-top">
                                                    <div class="databox-sparkline">
                                                        <span data-sparkline="line" data-height="125px" data-width="100%" data-fillcolor="false" data-linecolor="themefourthcolor" data-spotcolor="#fafafa" data-minspotcolor="#fafafa" data-maxspotcolor="#8cc474" data-highlightspotcolor="#8cc474" data-highlightlinecolor="#8cc474" data-linewidth="1.5" data-spotradius="2"><canvas width="100" height="125" style="display: inline-block; width: 100px; height: 125px; vertical-align: top;"></canvas></span>
                                                    </div>
                                                </div>
                                                <div class="databox-bottom no-padding text-align-center">
                                                    <span class="databox-number lightcarbon no-margin">7063$</span>
                                                    <span class="databox-text lightcarbon no-margin">Income / Hour</span>

                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                            <div class="databox databox-xlg databox-vertical databox-inverted databox-shadowed">
                                                <div class="databox-top">
                                                    <div class="databox-piechart">
                                                        <div data-toggle="easypiechart" class="easyPieChart block-center" data-barcolor="themeprimary" data-linecap="butt" data-percent="80" data-animate="500" data-linewidth="8" data-size="125" data-trackcolor="#eee" style="width: 125px; height: 125px; line-height: 125px;">
                                                            <span class="font-200"><i class="fa fa-gift themeprimary"></i></span>
                                                            <canvas width="125" height="125"></canvas></div>
                                                    </div>
                                                </div>
                                                <div class="databox-bottom no-padding text-align-center">
                                                    <span class="databox-number lightcarbon no-margin">9</span>
                                                    <span class="databox-text lightcarbon no-margin">NEW ORDERS</span>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                            <div class="databox databox-xlg databox-vertical databox-inverted  databox-shadowed">
                                                <div class="databox-top">
                                                    <div class="databox-piechart">
                                                        <div data-toggle="easypiechart" class="easyPieChart block-center" data-barcolor="themethirdcolor" data-linecap="butt" data-percent="40" data-animate="500" data-linewidth="8" data-size="125" data-trackcolor="#eee" style="width: 125px; height: 125px; line-height: 125px;">
                                                            <span class="white font-200"><i class="fa fa-tags themethirdcolor"></i></span>
                                                            <canvas width="125" height="125"></canvas></div>
                                                    </div>
                                                </div>
                                                <div class="databox-bottom no-padding text-align-center">
                                                    <span class="databox-number lightcarbon no-margin">11</span>
                                                    <span class="databox-text lightcarbon no-margin">NEW TICKETS</span>

                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box-visits">
                        <div class="row">
                            <div class="col-lg-6 col-sm-6 col-xs-12">
                                <div class="notification" style="cursor: pointer" >
                                    <div class="clearfix">
                                        <div class="notification-icon">
                                            <i class="fa fa-check themeprimary bordered-1 bordered-themeprimary"></i>
                                        </div>
                                        <div class="notification-body">
                                            <span class="title">Kết sổ</span>
                                            <span class="description">Xong tháng này, chuyển sang tháng tiếp theo</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-sm-6 col-xs-12">
                                <div class="notification" style="cursor: pointer" onclick="submitThisPage()">
                                    <div class="clearfix">
                                        <div class="notification-icon">
                                            <i class="fa fa-save bordered-1 bordered-green green"></i>
                                        </div>
                                        <div class="notification-body">
                                            <span class="title">Cập nhật</span>
                                            <span class="description">Cập nhật mọi thông tin trên</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
        <div class="orders-container">
            <div class="orders-header">
                <h6>Người thuê phòng</h6>
            </div>
            <ul class="orders-list">
                <li class="order-item">
                    <div class="row">
                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 item-left">
                            <div class="item-booker">Nguyễn Văn Giáp</div>
                            <div class="item-time">
                                <i class="fa fa-calendar"></i>
                                <span>10/05/1994 -Bình Phước</span>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 item-right">
                            <div class="item-price">
                                <span class="price">01676112012</span>
                            </div>
                        </div>
                    </div>
                    <a class="item-more" href="">
                        <i></i>
                    </a>
                </li>
                <li class="order-item top">
                    <div class="row">
                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 item-left">
                            <div class="item-booker">Steve Lewis</div>
                            <div class="item-time">
                                <i class="fa fa-calendar"></i>
                                <span>2 hours ago</span>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 item-right">
                            <div class="item-price">
                                <span class="currency">$</span>
                                <span class="price">620</span>
                            </div>
                        </div>
                    </div>
                    <a class="item-more" href="">
                        <i></i>
                    </a>
                </li>
                <li class="order-item">
                    <div class="row">
                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 item-left">
                            <div class="item-booker">John Ford</div>
                            <div class="item-time">
                                <i class="fa fa-calendar"></i>
                                <span>Today 8th July</span>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 item-right">
                            <div class="item-price">
                                <span class="currency">$</span>
                                <span class="price">220</span>
                            </div>
                        </div>
                    </div>
                    <a class="item-more" href="">
                        <i></i>
                    </a>
                </li>
                <li class="order-item">
                    <div class="row">
                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 item-left">
                            <div class="item-booker">Kim Basinger</div>
                            <div class="item-time">
                                <i class="fa fa-calendar"></i>
                                <span>Yesterday 7th July</span>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 item-right">
                            <div class="item-price">
                                <span class="currency">$</span>
                                <span class="price">400</span>
                            </div>
                        </div>
                    </div>
                    <a class="item-more" href="">
                        <i></i>
                    </a>
                </li>
                <li class="order-item">
                    <div class="row">
                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 item-left">
                            <div class="item-booker">Steve Lewis</div>
                            <div class="item-time">
                                <i class="fa fa-calendar"></i>
                                <span>5th July</span>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 item-right">
                            <div class="item-price">
                                <span class="currency">$</span>
                                <span class="price">340</span>
                            </div>
                        </div>
                    </div>
                    <a class="item-more" href="">
                        <i></i>
                    </a>
                </li>
            </ul>
            <div class="orders-footer">
                <a class="show-all" href=""><i class="fa fa-angle-down"></i> Xem lịch sử thuê phòng</a>
                <div class="help">
                    <a href=""><i class="fa fa-question"></i></a>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function submitThisPage() {
        if($("#tab1_value").hasClass('active')) {
            //TODO:CHECK value
            console.log("update_currentValue submit")
            $("#update_currentValue").submit()
        }
    }
</script>