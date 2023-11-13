using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    database db = new database();

    protected void imgStd_Click(object sender, ImageClickEventArgs e)
    {
        if (TxtFname.Text != "" && TxtLname.Text != "")
        {
            if (FileUpload1.FileName != null && FileUpload1.FileName.Length > 0)
            {

                FileUpload1.SaveAs(@"e:\vif\Teacher\tchr_pics/" + TxtFname.Text + " " + TxtLname.Text + ".jpg");
                imgStd.ImageUrl = "../Teacher/tchr_pics/" + TxtFname.Text + " " + TxtLname.Text + ".jpg";

                Label3.Text = "";
                imgStd.Width = 100;
                imgStd.Height = 100;
            }
            else
                Label3.Text = "الرجاء اختيار صورة";
        }
        else
        {
            Label3.Text = "الرجاء ملىء الاسم و الكنية";
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
            
            try
            {
                db.cn.Open();
                
                //DataRow dr;
                DataTable dt = db.select(string.Format("select t_id from teacher where upper(t_fname) like upper('%{0}%') and upper(t_lname) like upper('%{1}%') ", TxtFname.Text, TxtLname.Text));//and upper(t_father) like upper('%{2}%') and upper(t_mother) like upper('%{3}%')  ", TxtFname.Text, TxtLname.Text,TxtFather.Text,TxtMother.Text));

                if (dt.Rows.Count != 0)
                {
                    Label3.Text = "هذا الاسم موجود مسبقاً";
                   
                }
                else
                {
                     DataTable dtt = db.select(string.Format("select t_id from teacher where upper(t_log_name) like upper('%{0}%') ",TxtUserName.Text));
                    if (dtt.Rows.Count != 0)
                    {
                         Label3.Text = "ان اسم المستخدم موجود مسبقاً الرجاء اختيار غيره ";
                    }
                    else
                    {
                        dataDataContext t = new dataDataContext();
                        var tchr = new Teacher
                        {

                        t_fname = TxtFname.Text,
                        t_lname = TxtLname.Text,
                        t_father = TxtFather.Text,
                        t_mother = TxtMother.Text,
                        t_birth_place = TxtBirthPlace.Text,
                        t_birth_date = Convert.ToDateTime(TxtBirthD.Text),
                        t_gender = Convert.ToBoolean(ddlGender.SelectedIndex),
                        t_social_status = TxtSocial.Text,
                        t_phone = TxtPhone.Text,
                        t_diploma = ddlDiploma.SelectedItem.Text,
                        t_specialization = TxtSpecialization.Text,
                        t_email = TxtEmail.Text,
                        t_log_name = TxtUserName.Text,
                        t_log_pass = TxtUserPass.Text,
                        t_picture="tchr_pics/" + TxtFname.Text + " " + TxtLname.Text + ".jpg"
                        };
                        t.Teachers.InsertOnSubmit(tchr);
                        t.SubmitChanges();
                        Label3.Text = "لقد تمت اضافة بيانات الاستاذ بنجاح";
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
                
    }


    private void reset()
    {
        imgStd.ImageUrl = "../Images/graphics/add1.png";
        TxtFname.Text = "";
        TxtLname.Text = "";
        TxtFather.Text = "";
        TxtMother.Text = ""; 
        TxtBirthPlace.Text = "";       
        TxtSocial.Text = "";       
        ddlGender.SelectedIndex = 0;
        ddlDiploma.SelectedIndex = 0;
        TxtPhone.Text = "";
        TxtSpecialization.Text = "";
        TxtEmail.Text = "";
        TxtUserName.Text = "";
        TxtUserPass.Text = "";
       
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
        string phone = TxtPhone.Text;
        string specialization = TxtSpecialization.Text;
        string user_name = TxtUserName.Text;
        string password = TxtUserPass.Text;
        var mailbox = TxtEmail;
        string mail = TxtEmail.Text;
        //var blanks = ''*100;
        string[] naughty = { "arse", "bastard", "cunt", "fuck", "shit", "wanker", "piss", "twat" };
        string sneaky = mail.ToLower();
        //string illegal = "ادخلت الرموز الخطأ .\n الرموز المسموح هي التالية فقط.\n\n الأحرف الأنكليزية الكبيرة أو الصغيرة\n الأرقام\n رمز واحد من( @ \n الخط السفلي( _ \nالخط القصير( - \n  الإيميل لا يحتوي على فراغ\n ولا يحتوي على الأحرف العربية \n \n";

        ListBox1.Items.Clear();

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


        if (user_name == "")
        {
            ListBox1.Items.Add("الرجاء إدخال اسم المستخدم");
            TxtFname.Focus();
            return false;
        }
        else if (user_name.Length < 2)
        {
            ListBox1.Items.Add("مابصير اسم المستخدم أقل من حرفين");
            TxtFname.Focus();
            return false;
        }


        if (password == "")
        {
            ListBox1.Items.Add("الرجاء إدخال كلمة المرور ");
            TxtFname.Focus();
            return false;
        }
        else if (password.Length < 2)
        {
            ListBox1.Items.Add("مابصير كلمة سر أقل من حرفين");
            TxtFname.Focus();
            return false;
        }

        if (imgStd.ImageUrl == "~/Images/graphics/add1.png")
        {
            ListBox1.Items.Add("الرجاء اختيار صورتك الشخصية ");
            imgStd.Focus();
            return false;
        }
        return true;
    }

    
}