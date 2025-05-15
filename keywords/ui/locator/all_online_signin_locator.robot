*** Variables ***
&{all_online_signin_locator}
...     txt_username=xpath=//android.widget.EditText[@resource-id="login"]
...     txt_password=xpath=//android.widget.EditText[@resource-id="passwd"]
...     btn_signin=xpath=//android.view.View[@content-desc="Log On"]
...     txt_error_box=xpath=//android.widget.TextView[@text="You need to enter login name"]
...     txt_error_message=//android.widget.TextView[@text="ชื่อหรือรหัสผ่านของท่านไม่ถูกต้อง กรุณาตรวจสอบและกรอกข้อมูลอีกครั้ง"]