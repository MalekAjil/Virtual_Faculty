using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lecture : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
}
/*//code for viewing vedio by using database
 * /*
                    database db = new database();
                    try
                    {
                        //Response.Write(Request["l_id"]);
                        db.cn.Open();
                        System.Data.DataTable dt = db.select("select * from lecture where l_id =" + Request["l_id"]);
                        if (dt.Rows.Count != 0)
                        {
                            System.Data.DataRow dr = dt.Rows[0];
                            if (dr["l_file"].ToString() != "")
                            {
                                Response.Write("<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0' ID='Captivate1' style='width: 742px; height: 619px'>"+
                                "<param name='movie' value='../" + dr["l_file"] + "'><param name='quality' value='High'>"+
                                "<param name='loop' value='false'><param name='swliveconnect' value='true'>"+
                                "<embed src='../" + dr["l_file"] + "' width='500' height='300' loop='false' quality='High' pluginspage='http://www.macromedia.com/go/getflashplayer' type='application/x-shockwave-flash' name='Captivate1' swliveconnect='true'></embed></object>");
                               
                            }

                            else
                            {
                                Response.Write("لا يوجد ملف لهذه المحاضرة حالياً  ");
                            }
                        }
                        else
                        {
                            Response.Write("لا يوجد محاضرات لهذه المادة حاليأ ");
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                    finally { db.cn.Close(); }
        
                    */


/*//for audio
                         Response.Write("<div><object classid='clsid:6BF52A52-394A-11D3-B153-00C04F79FAA6' id='WindowsMediaPlayer1' style='width: 542px; height: 410px'>"+
 "<param name='URL' value='F:\Video\Wedding\Rabeea%20Albasre%201.mpg'>"+
 "<param name='rate' value='1'>"+
 "<param name='balance' value='0'>"+
 "<param name='currentPosition' value='0'>"+
 "<param name='defaultFrame' value=''>"+
 "<param name='playCount' value='1'>"+
 "<param name='autoStart' value='-1'>"+
 "<param name='currentMarker' value='0'>"+
 "<param name='invokeURLs' value='-1'>"+
 "<param name='baseURL' value=''>"+
 "<param name='volume' value='50'>"+
 "<param name='mute' value='0'>"+
 "<param name='uiMode' value='full'>"+
 "<param name='stretchToFit' value='0'>"+
 "<param name='windowlessVideo' value='-1'>"+
 "<param name='enabled' value='-1'>"+
 "<param name='enableContextMenu' value='-1'>"+
 "<param name='fullScreen' value='0'>"+
 "<param name='SAMIStyle' value=''>"+
 "<param name='SAMILang' value=''>"+
 "<param name='SAMIFilename' value=''>"+
 "<param name='captioningID' value=''>"+
 "<param name='enableErrorDialogs' value='0'>"+
"</object></div>");
                          * */
