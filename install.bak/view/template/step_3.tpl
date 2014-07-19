<?php echo $header; ?>
<h1 style="background: url('view/image/configuration.png') no-repeat;">Step 3 - 配置</h1>
<div style="width: 100%; display: inline-block;">
  <div style="float: left; width: 569px;">
    <?php if ($error_warning) { ?>
    <div class="warning"><?php echo $error_warning; ?></div>
    <?php } ?>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      <p>1 . 请输入您的资料库资料.</p>
      <div style="background: #F7F7F7; border: 1px solid #DDDDDD; padding: 10px; margin-bottom: 15px;">
        <table>
          <tr>
            <td width="185"><span class="required">*</span>资料库主机:</td>
            <td><input type="text" name="db_host" value="<?php echo $db_host; ?>" />
              <br />
              <?php if ($error_db_host) { ?>
              <span class="required"><?php echo $error_db_host; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><span class="required">*</span>使用者:</td>
            <td><input type="text" name="db_user" value="<?php echo $db_user; ?>" />
              <br />
              <?php if ($error_db_user) { ?>
              <span class="required"><?php echo $error_db_user; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td>密码:</td>
            <td><input type="text" name="db_password" value="<?php echo $db_password; ?>" /></td>
          </tr>
          <tr>
            <td><span class="required">*</span>资料库名称:</td>
            <td><input type="text" name="db_name" value="<?php echo $db_name; ?>" />
              <br />
              <?php if ($error_db_name) { ?>
              <span class="required"><?php echo $error_db_name; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td>资料库前缀词:</td>
            <td><input type="text" name="db_prefix" value="<?php echo $db_prefix; ?>" /></td>
          </tr>
        </table>
      </div>
      <p>2. 请设定您的管理者资料.</p>
      <div style="background: #F7F7F7; border: 1px solid #DDDDDD; padding: 10px; margin-bottom: 15px;">
        <table>
          <tr>
            <td width="185"><span class="required">*</span>管理者:</td>
            <td><input type="text" name="username" value="<?php echo $username; ?>" />
              <?php if ($error_username) { ?>
              <span class="required"><?php echo $error_username; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><span class="required">*</span>密码:</td>
            <td><input type="text" name="password" value="<?php echo $password; ?>" />
              <?php if ($error_password) { ?>
              <span class="required"><?php echo $error_password; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><span class="required">*</span>电子邮件:</td>
            <td><input type="text" name="email" value="<?php echo $email; ?>" />
              <?php if ($error_email) { ?>
              <span class="required"><?php echo $error_email; ?></span>
              <?php } ?></td>
          </tr>
        </table>
      </div>
      <div style="text-align: right;"><a onclick="document.getElementById('form').submit()" class="button"><span class="button_left button_continue"></span><span class="button_middle">Continue</span><span class="button_right"></span></a></div>
    </form>
  </div>
  <div style="float: right; width: 205px; height: 400px; padding: 10px; color: #663300; border: 1px solid #FFE0CC; background: #FFF5CC;">
    <ul>
      <li>授权</li>
      <li>系统</li>
      <li><b>配置</b></li>
      <li>完成</li>
    </ul>
	<div style="text-align:center;margin-top:150px;"><a href="http://www.dnono.com/" title="dnono" ><img src="view/image/dnono.png" alt="dnono" title="dnono" width="140" height="50" /></a><br /><br />
<a href="http://www.dnono.com/" title="dnono" > 中文版提供者</a>&nbsp;&nbsp;
<a href="http://blog.dnono.com/" title="dnono" > 部落格 </a>
   </div>
  </div>
</div>
<?php echo $footer; ?>