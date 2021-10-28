<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>

<div class="row">
    <div class="col-8">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Tambah Data</h4>
            </div>
            <div class="card-body">
              <?php if (!empty(session()->getFlashdata('error'))) : ?>
                  <div class="alert alert-danger alert-dismissible fade show" role="alert">
                      <h4>Periksa Entrian Form</h4>
                      </hr />
                      <?php echo session()->getFlashdata('error'); ?>
                      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                      </button>
                  </div>
              <?php endif; ?>
                <div class="basic-form">
                    <form method="post" action="<?= base_url('pegawai/store') ?>">
                      <?= csrf_field(); ?>
                        <div class="form-group"><h4>Nama</h4>
                            <input name="nama" id="nama" type="text" class="form-control input-default " placeholder="Masukan Nama" value="<?= old('nama'); ?>">
                        </div>
                        <div class="form-group"><h4>Jenis Kelamin</h4>
                            <select name="jenis_kelamin" class="form-control" id="jenis_kelamin">
                                <option value="pria">Pria</option>
                                <option value="wanita">Wanita</option>
                            </select>
                        </div>
                        <div class="form-group"><h4>No Telp</h4>
                            <input name="no_telp" id="no_telp" type="number" class="form-control input-default" placeholder="Masukan No Telepon" value="<?= old('no_telp') ?>">
                        </div>
                        <div class="form-group"><h4>Email</h4>
                            <input name="email" id="email" type="text" class="form-control input-default" placeholder="Masukan Email" value="<?= old('email') ?>">
                        </div>
                        <div class="form-group"><h4>Alamat</h4>
                            <input name="alamat" id="alamat" type="text" class="form-control input-default" placeholder="Masukan Alamat" value="<?= old('email') ?>">
                        </div>
                        <div class="col-12">
                            <button value="simpan" type="submit" class="btn btn-primary mb-4">Submit</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
</div>
<?= $this->endSection('content'); ?>
