﻿<?php include'inc/header.php'; ?>
<?php include'inc/sidebar.php'; ?>

        <div class="grid_10">
            <div class="box round first grid">
                <h2>Inbox</h2>
        <?php
        if (isset($_GET['seenid'])) {
            $seenid = $_GET['seenid'];

            $query = "UPDATE tbl_contact
                              SET
                              status = '1'
                              WHERE id='$seenid'
                              ";
            $updateed_row = $db->update($query);
            if ($updateed_row) {
                echo "<span  class='success'>Message Sent in the Seen Box.</span>";
            }else{
                echo "<span  class='error'>Something wrong</span>";
            }
        }
        ?>

                <div class="block">        
                    <table class="data display datatable" id="example">
					<thead>
						<tr>
							<th>Serial No.</th>
							<th>Name</th>
							<th>Email</th>
							<th>Message</th>
							<th>Date</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>

                    <?php
                        $query = "SELECT * FROM tbl_contact WHERE status='0' ORDER BY id DESC";
                        $msg = $db->select($query);
                        if ($msg) {
                        $i = 0;
                        while ($result = $msg->fetch_assoc()) {
                        $i++;
                    ?>
						<tr class="odd gradeX">
							<td><?= $i; ?></td>
                            <td><?= $result['firstname'].' '.$result['lastname']; ?></td>
                            <td><?= $result['email']; ?></td>
                            <td><?= $fm->textShorten($result['body'], 30); ?></td>
                            <td><?= $fm->formatDate($result['date']); ?></td>
							<td>
                                <a href="viewmsg.php?msgid=<?= $result['id']; ?>">View</a> ||
                                <a href="replymsg.php?msgid=<?= $result['id']; ?>">Reply</a> ||
                                <a onclick="return confirm('Are you sure to move message seen box.'); " href="?seenid=<?= $result['id']; ?>">Seen</a>

                            <?php if (Session::get('userRole') == '0') { ?>

                                 ||<a onclick="return confirm('Are you admin? and sure to delete draft box message');" href="?delid=<?= $result['id']; ?>">Delete</a>

                            <?php } ?>

                            </td>
						</tr>
                    <?php }} ?>

					</tbody>
				</table>
               </div>
            </div> <!--End Inbox-->



            <!--Start Seen Box-->
            <div class="box round first grid">
                <h2>Seen Message</h2>

                <?php

                if (isset($_GET['delid'])) {

                    $delid = $_GET['delid'];
                    $delquery = "DELETE FROM tbl_contact WHERE id='$delid' ";
                    $deldata = $db->delete($delquery);

                    if ($deldata) {
                        echo "<span  class='success'>Deleted Message</span>";
                    }else{
                        echo "<span  class='error'>Not Deleted ! </span>";
                    }
                }

                /*======================================================
                                    Unseen message
                  ======================================================*/

                if (isset($_GET['unseenid'])) {
                    $unseenid = $_GET['unseenid'];

                    $query = "UPDATE tbl_contact
                              SET
                              status = '0'
                              WHERE id='$unseenid'
                              ";
                    $updateed_row = $db->update($query);
                    if ($updateed_row) {
                        echo "<span  class='success'>Send Message  Inbox.</span>";
                    } else {
                        echo "<span  class='error'>Something wrong</span>";
                    }
                }


                ?>


                <div class="block">
                    <table class="data display datatable" id="example">
                        <thead>
                        <tr>
                            <th>Serial No.</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Message</th>
                            <th>Date</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>

                        <?php
                        $query = "SELECT * FROM tbl_contact WHERE status='1' ORDER BY id DESC";
                        $msg = $db->select($query);
                        if ($msg) {
                            $i = 0;
                            while ($result = $msg->fetch_assoc()) {
                                $i++;
                         ?>
                                <tr class="odd gradeX">
                                    <td><?= $i; ?></td>
                                    <td><?= $result['firstname'].' '.$result['lastname']; ?></td>
                                    <td><?= $result['email']; ?></td>
                                    <td><?= $fm->textShorten($result['body'], 30); ?></td>
                                    <td><?= $fm->formatDate($result['date']); ?></td>
                                    <td>
                                        <a href="viewmsg.php?msgid=<?= $result['id']; ?>" >View</a> ||
                                        <a onclick="return confirm('Are you sure to return message your inbox');" href="?unseenid=<?= $result['id']; ?>">Unseen</a>

                                    <?php if (Session::get('userRole') == '0') { ?>
                                        ||<a onclick="return confirm('Are you sure to delete message');" href="?delid=<?= $result['id']; ?>">Delete</a>

                                    <?php } ?>

                                    </td>
                                </tr>
                            <?php }} ?>

                        </tbody>
                    </table>
                </div>
            </div><!-- End Seen Box -->



                <div class="box round first grid">
                    <h2>Draft</h2>
                    <?php
                    if (isset($_GET['draftid'])) {
                        $draftid = $_GET['draftid'];

                        $query = "UPDATE tbl_contact
                              SET
                              status = '2'
                              WHERE id='$draftid'
                              ";
                        $updateed_row = $db->update($query);
                        if ($updateed_row) {
                            echo "<span  class='success'>Send Message Received in the Draft Box.</span>";
                        }else{
                            echo "<span  class='error'>Something wrong</span>";
                        }
                    }
                    ?>

                    <div class="block">
                        <table class="data display datatable" id="example">
                            <thead>
                            <tr>
                                <th>Serial No.</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Message</th>
                                <th>Date</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>

                            <?php
                            $query = "SELECT * FROM tbl_contact WHERE status='2' ORDER BY id DESC";
                            $msg = $db->select($query);
                            if ($msg) {
                                $i = 0;
                                while ($result = $msg->fetch_assoc()) {
                                    $i++;
                                    ?>
                                    <tr class="odd gradeX">
                                        <td><?= $i; ?></td>
                                        <td><?= $result['firstname'].' '.$result['lastname']; ?></td>
                                        <td><?= $result['email']; ?></td>
                                        <td><?= $fm->textShorten($result['body'], 30); ?></td>
                                        <td><?= $fm->formatDate($result['date']); ?></td>
                                        <td>
                                            <a href="viewmsg.php?msgid=<?= $result['id']; ?>">View</a> ||
                                            <a href="replymsg.php?msgid=<?= $result['id']; ?>">Reply</a>

                                        <?php if (Session::get('userRole') == '0') { ?>
                                           || <a onclick="return confirm('Are you sure to delete draft box message');" href="?delid=<?= $result['id']; ?>">Delete</a>

                                        <?php } ?>

                                        </td>
                                    </tr>
                                <?php }} ?>

                            </tbody>
                        </table>
                    </div>
                </div> <!--End  Draft Box-->



        </div>

<script type="text/javascript">

    $(document).ready(function () {
        setupLeftMenu();

        $('.datatable').dataTable();
        setSidebarHeight();


    });
</script>

<?php include'inc/footer.php'; ?>
