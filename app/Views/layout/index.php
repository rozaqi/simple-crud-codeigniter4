<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>
<div class="content-body">
    <div class="container-fluid">
        <div class="page-titles">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="javascript:void(0)">Data</a></li>
    <li class="breadcrumb-item active"><a href="javascript:void(0)">Siswa</a></li>
  </ol>
        </div>
        <!-- row -->


        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Daftar Siswa SMKN 1 Cimahi</h4>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="example" class="display min-w850">
                                <thead>
                                    <tr>
                                        <th>Nama</th>
                                        <th>Jenis Kelamin</th>
                                        <th>Tempat Lahir</th>
                                        <th>Tanggal Lahir</th>
                                        <th>No. Telpon</th>
                                        <th>Alamat</th>
                                    </tr>
                                </thead>
                                <tbody>
                                  <?php
                                  $no = 1;
                                  foreach ($pegawai as $row) {
                                  ?>
                                    <tr>
                                        <td><?= $no++; ?></td>
                                        <td><?= $row->nama; ?></td>
                                        <td><?= $row->jenis_kelamin; ?></td>
                                        <td><?= $row->no_telp; ?></td>
                                        <td><?= $row->email; ?></td>
                                        <td><?= $row->alamat; ?></td>
                                    </tr>
                                    <?php
                                    }
                                    ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

</div>
    </div>
</div>
<?= $this->endSection('content'); ?>
