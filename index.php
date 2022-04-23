<html>

<head>
    <title>Tutorial Cara Menampilkan Data Berdasarkan Tanggal Sekarang di PHP</title>
</head>

<body>
    <div style="border:1px solid #B0C4DE; padding:5px; overflow:auto; width:680px; height:300px;">
        <?php
        include "koneksi.php";
        $tgl    = date("Y-m-d");
        ?>
        <form action="index.php" method="post" name="postform">
            <p align="center">
                <font color="orange" size="3"><b>DATA PENGAJUAN CUTI PEGAWAI</b></font>
            </p>
            <table border="0">
                <tr>
                    <td width="80"><input type="submit" value="Tampilkan Data" name="tampil" /></td>
                </tr>
            </table>
        </form>
        <p>
            <?php
            //proses jika sudah klik button
            if (isset($_POST['tampil'])) {
            ?>
                <i><b>Informasi : </b> Menampilkan Data Berdasarkan Tanggal Sekarang di PHP yaitu Tanggal: <b><?php echo $tgl ?></b></i>
                <?php
                $query = mysqli_query($con, "SELECT * FROM tb_cuti WHERE tgl_pengajuan='$tgl'");
                ?>
        </p>
        <table border="0" width="660">
            <tr bgcolor="#FF6600">
                <th width="20" height="40">No</td>
                <th width="70">Nomor Cuti</td>
                <th width="80">Nama</td>
                <th width="70">Tanggal Pengajuan</td>
                <th width="80">Ket</td>
            </tr>
            <?php
                //menampilkan data
                $no = 0;
                while ($row = mysqli_fetch_array($query)) {
                    $no++
            ?>
                <tr>
                    <td align="center" height="30"><?php echo $no ?></td>
                    <td><?php echo $row['nomor'] ?></td>
                    <td><?php echo $row['nama'] ?></td>
                    <td align="center"><?php echo $row['tgl_pengajuan'] ?></td>
                    <td><?php echo $row['ket'] ?></td>
                </tr>
            <?php
                }
            ?>
            <tr>
                <td colspan="4" height="40">
                    <?php
                    //jika tidak ada data
                    if (mysqli_num_rows($query) == 0) {
                        echo "<font color=red><blink>Tidak dapat menampilkan data berdasarkan tanggal sekarang !</blink></font>";
                    }
                    ?>
                </td>
            </tr>
        </table>
    <?php
            } else {
                unset($_POST['tampil']);
            }
    ?>
</body>

</html>