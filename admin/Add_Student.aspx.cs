using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    database db = new database();

    protected void imgStd_Click(object sender, ImageClickEventArgs e)
    {
        if (TxtFname.Text == "")
            Label3.Text = "ادخل الاسم";
        else if (TxtLname.Text == "")
            Label3.Text = "ادخل الكنية";
        else
        {
            if (FileUpload1.FileName != null && FileUpload1.FileName.Length > 0)
            {
                FileUpload1.SaveAs(@"e:\vif\student\Std_pics/" + TxtFname.Text + " " + TxtLname.Text + ".jpg");
                imgStd.ImageUrl = "../student/Std_pics/" + TxtFname.Text + " " + TxtLname.Text + ".jpg";
               
                imgStd.Width = 100;
                imgStd.Height = 100;
            }
            else
                Label3.Text = "الرجاء اختيار صورة";
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        reset();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (check())
        {
            int year = 1;

            try
            {
                db.cn.Open();
                DataRow dr;
                DataTable dt = db.select(string.Format("select count(*) as count from course where c_year = {0} and dept_id = {1} ", year, Convert.ToInt32(DropDownList1.SelectedItem.Value)));
                if (dt.Rows.Count != 0)
                {
                    dr = dt.Rows[0];
                    HiddenField2.Value = dr["count"].ToString();

                }

                dt = db.select(string.Format("select * from Student where std_fname='{0}' and std_lname='{1}' and std_father = '{2}' and std_mother = '{3}'", TxtFname.Text, TxtLname.Text, TxtFather.Text, TxtMother.Text));
                if (dt.Rows.Count != 0)
                {
                    Label3.Text = "هذا الطالب مسجل في قاعدة البيانات سابقاً  ";
                }
                else
                {
                    dataDataContext s = new dataDataContext();
                    var std = new Student
                    {
                        std_d_id = Convert.ToInt32(DropDownList1.SelectedItem.Value),
                        std_fname = TxtFname.Text,
                        std_lname = TxtLname.Text,
                        std_father = TxtFather.Text,
                        std_mother = TxtMother.Text,
                        std_birth_place = TxtBirthPlace.Text,
                        std_birth_date = Convert.ToDateTime(TxtBirthD.Text),
                        std_gender = Convert.ToBoolean(ddlGender.SelectedIndex),
                        std_social_status = TxtSocial.Text,
                        std_country = ddlCountry.SelectedItem.Value,
                        std_city = TxtCity.Text,
                        std_address = TxtAddress.Text,
                        std_phone = TxtPhone.Text,
                        std_diploma = ddlDiploma.SelectedItem.Text,
                        std_specialization = TxtSpecialization.Text,
                        std_email = TxtEmail.Text,
                        std_reg_date = Convert.ToDateTime(DateTime.Now.ToShortDateString()),
                        std_year = year,
                        std_remains_sub = Convert.ToInt32(HiddenField2.Value),
                        std_picture = "Std_pics/" + TxtFname.Text + " " + TxtLname.Text + ".jpg"

                    };
                    s.Students.InsertOnSubmit(std);
                    s.SubmitChanges();


                    dt = db.select(string.Format("select * from Student where std_fname='{0}' and std_lname='{1}' and std_father = '{2}' and std_mother = '{3}'", TxtFname.Text, TxtLname.Text, TxtFather.Text, TxtMother.Text));
                    if (dt.Rows.Count == 0)
                    {
                        Label3.Text = " عذراً حدثت مشكلة أثناء التسجيل .. الرجاء المحاولة لاحقاً  ";
                    }
                    else
                    {
                        dr = dt.Rows[0];
                        int i = db.modify(string.Format("insert into std_log(std_id,std_log_name,std_log_pass,log_active) values({0},'{1}','{2}','true')", dr["std_id"].ToString(), txtUserName.Text, txtPass.Text));
                        if (i != 0)
                            Label3.Text = " تم اضافة بيانات الطالب بنجاح .. الرقم الجامعي هو   " + dr["std_id"];
                        reset();
                    }
                }
            }
            catch (Exception ex)
            {
                Label3.Text = ex.Message;
            }
            finally { db.cn.Close(); }
        }
        else
        {
            ListBox1.Visible = true;
        }

        /*
               string sql = string.Format("insert into student (std_d_id,std_fname,std_lname,std_father,std_mother" +
                   ",std_birth_date,std_birth_place,std_gender,std_social_status,std_diploma" +
                               ",std_specialization,std_email,std_phone,std_country,std_city" +
                  ",std_address,std_reg_date,std_year,std_remains_sub) values ({0},'{1}','{2}','{3}','{4}'" +
                       ",'{5}','{6}',{7},'{8}','{9}'" +
                                  ",'{10}','{11}','{12}','{13}','{14}'" +
                  ",'{15}','{16}',{17},{18})", s_dept, TxtFname.Text, TxtLname.Text, TxtFather.Text, TxtMother.Text, TxtBirthD.Text, TxtBirthPlace.Text, ddlGender.SelectedItem.Value, TxtSocial.Text, ddlDiploma.SelectedItem.Value, TxtSpecialization.Text, TxtEmail.Text, TxtPhone.Text, ddlCountry.SelectedItem.Value, TxtCity.Text, TxtAddress.Text, "5-5-2015", year, y_c_count);
               int i = db.modify(sql);
               if (i != 0)
               {
                   
               }
                * */

    }


    private void reset()
    {
        imgStd.ImageUrl = "../Images/graphics/add1.png";
        /*   TxtFname.Text = "";
           TxtLname.Text = "";
           TxtFather.Text = "";
           TxtMother.Text = "";
         * */
        TxtBirthPlace.Text = "";
        TxtCity.Text = "";
        TxtSocial.Text = "";
        ddlCountry.SelectedIndex = 0;
        ddlGender.SelectedIndex = 0;
        ddlDiploma.SelectedIndex = 0;
        TxtPhone.Text = "";
        TxtSpecialization.Text = "";
        TxtEmail.Text = "";
        TxtAddress.Text = "";
    }

    public bool check()
    {
        string f_name = TxtFname.Text;
        string l_name = TxtLname.Text;
        string father_name = TxtFather.Text;
        string mother_name = TxtMother.Text;
        string birth_place = TxtBirthPlace.Text;
        string birth_date = TxtBirthD.Text;
        string social = TxtSocial.Text;
        string country = ddlCountry.SelectedItem.Value;
        string city = TxtCity.Text;
        string address = TxtAddress.Text;
        string phone = TxtPhone.Text;
        string specialization = TxtSpecialization.Text;

        var mailbox = TxtEmail;
        string mail = TxtEmail.Text;
        //var blanks = ''*100;
        string[] naughty = { "arse", "bastard", "cunt", "fuck", "shit", "wanker", "piss", "twat" };
        string sneaky = mail.ToLower();
        //string illegal = "ادخلت الرموز الخطأ .\n الرموز المسموح هي التالية فقط.\n\n الأحرف الأنكليزية الكبيرة أو الصغيرة\n الأرقام\n رمز واحد من( @ \n الخط السفلي( _ \nالخط القصير( - \n  الإيميل لا يحتوي على فراغ\n ولا يحتوي على الأحرف العربية \n \n";

        ListBox1.Items.Clear();
          if (imgStd.ImageUrl == "~/Images/graphics/add1.png")
        {
            ListBox1.Items.Add("الرجاء اختيار صورتك الشخصية ");
            imgStd.Focus();
            return false;
        }
        if (f_name == "")
        {
            ListBox1.Items.Add("الرجاء إدخال الاسم");
            TxtFname.Focus();
            return false;
        }
        else if (f_name.Length < 2)
        {
            ListBox1.Items.Add("لا يوجد اسم أقل من حرفين");
            TxtFname.Focus();
            return false;
        }

        if (l_name == "")
        {
            ListBox1.Items.Add("الرجاء إدخال الكنية");
            TxtLname.Focus();
            return false;
        }
        else if (l_name.Length < 2)
        {
            ListBox1.Items.Add("لا يوجد كنية أقل من حرفين");
            TxtLname.Focus();
            return false;
        }

        if (father_name == "")
        {
            ListBox1.Items.Add("الرجاء إدخال اسم الأب");
            TxtFather.Focus();
            return false;
        }
        else if (father_name.Length < 2)
        {
            ListBox1.Items.Add("لا يوجد اسم أقل من حرفين .. !");
            TxtFather.Focus();
            return false;
        }

        if (mother_name == "")
        {
            ListBox1.Items.Add("الرجاء إدخال اسم الأم");
            TxtMother.Focus();
            return false;
        }
        else if (mother_name.Length < 2)
        {
            ListBox1.Items.Add("لا يوجد اسم أقل من حرفين");
            TxtMother.Focus();
            return false;
        }

        if (birth_place == "")
        {
            ListBox1.Items.Add("الرجاء إدخال مكان الولادة");
            TxtBirthPlace.Focus();
            return false;
        }
        else if (birth_place.Length < 2)
        {
            ListBox1.Items.Add("يرجى التأكد من مكان الولادة");
            TxtBirthPlace.Focus();
            return false;
        }

        if (city == "")
        {
            ListBox1.Items.Add("الرجاء إدخال اسم المدينة");
            TxtCity.Focus();
            return false;
        }
        else if (city.Length < 2)
        {
            ListBox1.Items.Add("يرجى التأكد من اسم المدينة");
            TxtCity.Focus();
            return false;
        }

        if (address == "")
        {
            ListBox1.Items.Add("يرجى إدخال العنوان بالتفصيل");
            TxtAddress.Focus();
            return false;
        }
        else if (address.Length < 2)
        {
            ListBox1.Items.Add("يرجى التأكد من العنوان");
            TxtAddress.Focus();
            return false;
        }


        if (specialization == "")
        {
            ListBox1.Items.Add("الرجاء إدخال اختصاص الشهادة");
            TxtSpecialization.Focus();
            return false;
        }
        else if (specialization.Length < 2)
        {
            ListBox1.Items.Add("يرجى التأكد من الاختصاص");
            TxtSpecialization.Focus();
            return false;
        }

        if (mail == "")
        {
            ListBox1.Items.Add("الرجاء إدخال الإيميل الشخصي");
            TxtEmail.Focus();
            return false;
        }
        else if (mail.Length > 62)
        {
            ListBox1.Items.Add("يجب ألا يتجاوز الإيميل الـ 63 رمز");
            TxtEmail.Focus();
            return false;
        }
        else if (mail.ElementAt(0) == ' ')
        {
            ListBox1.Items.Add("لا يبدأ الإيميل بفراغ ");
            TxtEmail.Focus(); return false;
        }
        else if (mail.ElementAt(mail.Length - 1) == ' ')
        {
            ListBox1.Items.Add("لا ينتهي الإيميل بفراغ");
            TxtEmail.Focus(); return false;
        }
        else if (mail.IndexOf(" ") != -1)
        {
            ListBox1.Items.Add("لا يحتوي الإيميل على فراغ");
            TxtEmail.Focus();
            return false;
        }
        /*
//CHECK FOR ILLEGAL CHARACTERS 1
for (int i=0; i < mail.Length; i++){
string caps = "a".ToUpper();
var E = mail.Substring(i, i + 1);
if (E != "@"  && E !="." && E !="-"  && E !="_"){
 ListBox1.Items.Add(illegal);
 TxtEmail.Focus();
    return false; }
}
//CHECK FOR ILLEGAL CHARACTERS 2
        
if ((mail.IndexOf("`",0) != -1) || (mail.IndexOf("[",0) != -1) || (mail.IndexOf("]",0) != -1)){
 ListBox1.Items.Add(illegal);
 TxtEmail.Focus();return false;
}
         
//CHECK FOR SWEARING
for (int i=0; i < mail.Length; i++){  
 if (sneaky.IndexOf(naughty[i]).Equals(-1)){
 ListBox1.Items.Add("Please remove the swear word - "+naughty[i].ToUpper());
 TxtEmail.Focus();
     return false; }
i++;
}
         * */
        //GENERAL FORMATING
        if (mail.ElementAt(0) == '.')
        {
            ListBox1.Items.Add("لا يبدأ الإيميل بنقطة");
            TxtEmail.Focus();
            return false;
        }
        else if (mail.Split('@').Length > 2)
        {
            ListBox1.Items.Add("الإيميل يحتاج رمز @ ");
            TxtEmail.Focus();
            return false;
        }
        else if (mail.IndexOf('@', 0) == -1)
        {
            ListBox1.Items.Add("يجب إدخال الرمز @");
            TxtEmail.Focus();
            return false;
        }
        else if (mail.IndexOf('@') < 2)
        {
            ListBox1.Items.Add("قبل رمز @ يطلب حرفين على الأقل");
            TxtEmail.Focus();
            return false;
        }
        else if (mail.ElementAt(mail.Length - 1) == '@')
        {
            ListBox1.Items.Add(" لا ينتهي الإيميل برمز @");
            TxtEmail.Focus();
            return false;
        }
        else if (mail.IndexOf('.') == -1)
        {
            ListBox1.Items.Add("الإيميل يحتاج نقطة واحدة على الأقل");
            TxtEmail.Focus();
            return false;
        }
        else if (mail.IndexOf(".", mail.IndexOf("@")) == -1)
        {
            ListBox1.Items.Add("بعد رمز @ يحتاج نقطة واحدة على الأقل");
            TxtEmail.Focus();
            return false;
        }
        /*
    else if (mail.Substring(mail.IndexOf("@"), mail.Length).IndexOf(".") < 4)
    {
     ListBox1.Items.Add("بعد رمز @ يحتاج الإيميل ثلاث حروف على الأقل");  
     TxtEmail.Focus();return false;
    }
     
    else if (mail.Substring(mail.LastIndexOf("."),mail.Length).Length > 4){
     ListBox1.Items.Add("ينتهي الإيميل بثلاث حروف على الأكثر");
     TxtEmail.Focus();return false;
    }
         * */
        else if (mail.LastIndexOf("." + 2) == mail.Length)
        {
            ListBox1.Items.Add("بعد النقطة يحتاج الإيميل إلى ثلاث حروف على الأقل ");
            TxtEmail.Focus(); return false;
        }

        else if (mail.ElementAt(mail.Length - 1) == '.')
        {
            ListBox1.Items.Add("لإيميل لا ينتهي بنقطة");
            TxtEmail.Focus(); return false;
        }
      
        return true;
    }

}