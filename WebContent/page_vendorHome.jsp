<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%@ page import="groupone.*" %>
<head>
<title>Vendor Page</title>
<link rel="stylesheet" href="menu/menu_style.css" type="text/css" />
<script src="amcharts/amcharts.js" type="text/javascript"></script>        
        <script type="text/javascript">
            var chart;
            var chartData = [];
            var chartCursor;
            
            AmCharts.ready(function () {
            	chartData.push({
            		date: new Date(2012,02,02),
            		chicken: 1,
            		beef: 2,
            		meatballs: 20 
            	},{
            		date: new Date(2012,02,03),
            		chicken: 2,
            		beef: 1,
            		meatballs: 4 
            	},{
            		date: new Date(2012,02,04),
            		chicken: 3,
            		beef: 5,
            		meatballs: 6 
            	},{
            		date: new Date(2012,02,05),
            		chicken: 1,
            		beef: 5,
            		meatballs: 10
            	},{
            		date: new Date(2012,02,06),
            		chicken: 0,
            		beef: 2,
            		meatballs: 4
            	},{
            		date: new Date(2012,02,07),
            		chicken: 1,
            		beef: 8,
            		meatballs: 15 
            	},{
            		date: new Date(2012,02,08),
            		chicken: 3,
            		beef: 10,
            		meatballs: 5 
            	},{
            		date: new Date(2012,02,09),
            		chicken: 0,
            		beef: 7,
            		meatballs: 12 
            	},{
            		date: new Date(2012,02,10),
            		chicken: 5,
            		beef: 4,
            		meatballs: 12 
            	});
            		

                // SERIAL CHART    
                 chart = new AmCharts.AmSerialChart();
                chart.pathToImages = "amcharts/";
				chart.dataProvider = chartData;
                chart.marginLeft = 10;
                chart.categoryField = "date";
                chart.zoomOutButton = {
                    backgroundColor: '#000000',
                    backgroundAlpha: 0.15
				
                };

                // listen for "dataUpdated" event (fired when chart is rendered) and call zoomChart method when it happens
                chart.addListener("dataUpdated", zoomChart);

                // AXES
                // category
                var categoryAxis = chart.categoryAxis;
                categoryAxis.parseDates = true; // as our data is date-based, we set parseDates to true
                categoryAxis.minPeriod = "DD"; // our data is daily, so we set minPeriod to DD
                categoryAxis.dashLength = 2;
                categoryAxis.gridAlpha = 0.15;
                categoryAxis.axisColor = "#DADADA";

                // value                
                var valueAxis1 = new AmCharts.ValueAxis();
                valueAxis1.axisColor = "#FF0000";
                valueAxis1.axisThickness = 2;
                valueAxis1.gridAlpha = 0;
                chart.addValueAxis(valueAxis1);
                
                var valueAxis2 = new AmCharts.ValueAxis();
                valueAxis2.axisColor = "#FF0000";
                valueAxis2.axisThickness = 2;
                valueAxis2.gridAlpha = 0;
                chart.addValueAxis(valueAxis2);
                
                var valueAxis3 = new AmCharts.ValueAxis();
                valueAxis3.axisColor = "#FF00FF";
                valueAxis3.axisThickness = 2;
                valueAxis3.gridAlpha = 0;
                chart.addValueAxis(valueAxis3);

                // GRAPH
                var graph1 = new AmCharts.AmGraph();
                graph1.valueAxis = valueAxis1; // we have to indicate which value axis should be used
                graph1.title = "Chicken Subs";
                graph1.valueField = "chicken";
                graph1.bullet = "round";
                chart.addGraph(graph1);
                
                var graph2 = new AmCharts.AmGraph();
                graph2.valueAxis = valueAxis1; // we have to indicate which value axis should be used
                graph2.title = "Beef Subs";
                graph2.valueField = "beef";
                graph2.bullet = "round";
                chart.addGraph(graph2);
                
                var graph3 = new AmCharts.AmGraph();
                graph3.valueAxis = valueAxis1; // we have to indicate which value axis should be used
                graph3.title = "Meatball Subs";
                graph3.valueField = "meatballs";
                graph3.bullet = "round";
                chart.addGraph(graph3);

                // CURSOR
                var chartCursor = new AmCharts.ChartCursor();
				chartCursor.cursorAlpha = 0;
                chartCursor.cursorPosition = "mouse";
				chartCursor.categoryBalloonDateFormat = " MMM DD";
                chart.addChartCursor(chartCursor);

                // SCROLLBAR
                var chartScrollbar = new AmCharts.ChartScrollbar();
                chart.addChartScrollbar(chartScrollbar);
                
                var legend = new AmCharts.AmLegend();
                legend.marginLeft = 0;
                chart.addLegend(legend);

                // WRITE
                chart.write("chartdiv");
            });

            // this method is called when chart is first inited as we listen for "dataUpdated" event
            function zoomChart() {
                // different zoom methods can be used - zoomToIndexes, zoomToDates, zoomToCategoryValues
                chart.zoomToIndexes(0,100);
            }
            
            
			            
        </script>
</head>
<body background="http://assets2.grouponcdn.com/images/groupon/backgrounds/burst_green2.jpg?c2gz3tdb">
<div id="banner">
<img style="float:left" src="http://i.imgur.com/qxKzB.png" />

<form name="homePage" action="HomePage" method="post">
<ul id="menu">
   <li><a href="page_vendorHome.jsp" target="_self" title="Home">Home</a></li>
   <li><a href="page_addCoupon.jsp" target="_self" title="Add Coupon">Add Coupon</a></li>
   <li><a href="page_deleteCoupon.jsp" target="_self" title="View Coupons">View Coupons</a></li>
   <li><a href="page_vendorAccount.jsp" target="_self" title="Account">Account</a></li>
   <li><a href="index.jsp" target="_self" title="Log Out">Log Out</a></li>
	
</ul>

</form>
</div>	


<table border="0"
 	cellpadding="0" cellspacing="0" style="text-align: center; width: 100%;">
  <tr>
<td align="center" valign="top"><h1 style="text-align:center; color:gray">Welcome ${account.getFirstName()}</h1>
  <div align="center">
    <p>
    <p>
    <p>   
    <p><h1 style="text-align:center; color:gray">***COMING SOON: VIEW COUPON STATISTICS!!!***</h1>
    <p><h2 style="text-align:center; color:black">*Sample View of Subway Coupons*</h2>
</div></td>
</tr>
</table>
<p>
<p>
<div id="chartdiv" style="width: 100%; height: 400px;"></div>
  
</body>
</html>