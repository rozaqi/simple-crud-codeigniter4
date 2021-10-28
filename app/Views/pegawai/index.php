<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>
        <!-- row -->


        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Daftar Pegawai</h4>
                          <a href="<?= base_url('/pegawai/create'); ?>" class="btn btn-success stretched-link">Tambah Data</a>
                    </div>

                    <?php if (!empty(session()->getFlashdata('message'))) : ?>
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <?php echo session()->getFlashdata('message'); ?>
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    <?php endif; ?>


                    <div class="card-body">
                        <div class="table-responsive">
                            <table id="example" class="display min-w850">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama</th>
                                        <th>Jenis Kelamin</th>
                                        <th>No Telepon</th>
                                        <th>Email</th>
                                        <th>Alamat</th>
                                        <th>Action</th>
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
                                        <td>
                                        <div class="d-flex">
                                          <a title="Update" href="<?= base_url("pegawai/edit/$row->id_pegawai"); ?>" class="btn btn-primary shadow btn-xs sharp mr-1"><i class="fa fa-pencil"></i></a>
                                          <a title="Delete" href="<?= base_url("pegawai/delete/$row->id_pegawai") ?>" class="btn btn-danger shadow btn-xs sharp"><i class="fa fa-trash"></i></a>
                                        </div>
                                      </td>
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
