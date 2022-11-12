@extends('layouts.admin.app')

@section('title', 'Mahasiswa')

@section('header')

@endsection

@section('content')
<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

    <!-- Main Content -->
    <div id="content">

        <!-- Topbar -->
        @include('layouts.admin.topbar')


        <div class="container-fluid">

            <!-- Page Heading -->
            <h1 class="h3 mb-2 text-gray-800">Lihat Mahasiswa (Peminjam)</h1>
            <!-- DataTales Example -->
            <div class="container  w-50">
                <div class="card p-3">
                    <form>
                        <!-- NAMA -->
                        <div class="form-group">
                            <label for="nama">Nama</label>
                            <input type="text" class="form-control" id="nama" name="nama" value="{{ $mahasiswa->nama }}"
                                readonly>
                        </div>
                        <!-- NIM -->
                        <div class="form-group">
                            <label for="nim">NIM</label>
                            <input type="text" class="form-control" id="nim" name="nim" maxlength="12"
                                value="{{ $mahasiswa->nim }}" readonly>
                        </div>
                        <!-- PRODI -->
                        <div class="form-group">
                            <label for="kode_prodi">Prodi</label>
                            <input type="text" class="form-control" id="kode_prodi" name="kode_prodi" maxlength="12"
                                value="{{ $mahasiswa->program_studi->nama_prod }}" readonly>
                        </div>
                        <!-- JENIS KELAMIN -->
                        <div class="form-group">
                            <label for="jenis_kelamin">Jenis Kelamin</label>
                            <input type="text" class="form-control" id="jenis_kelamin" name="jenis_kelamin"
                                value="{{ (($mahasiswa->jenis_kelamin) == 0 ? 'Laki-laki' : 'Perempuan' ) }}" readonly>
                        </div>
                        <!-- AGAMA -->
                        <div class="form-group">
                            <label for="kode_agama">Agama</label>
                            <input type="text" class="form-control" id="kode_agama" name="kode_agama"
                                value="{{ $mahasiswa->agama->nama }}" readonly>
                        </div>
                        <!-- TANGGAL LAHIR -->
                        <div class="form-group">
                            <label for="tanggal_lahir">Tanggal Lahir</label>
                            <input type="text" class="form-control" id="tanggal_lahir" name="tanggal_lahir"
                                value="{{ $mahasiswa->tanggal_lahir }}" readonly>
                        </div>
                        <!-- ALAMAT -->
                        <div class="form-group">
                            <label for="alamat">Alamat</label>
                            <input class="form-control" id="alamat" rows="3" name="alamat" value="{{ $mahasiswa->alamat
                            }}" readonly>
                        </div>
                        <!-- Riwayat Peminjaman -->
                        <div class="form-group">
                            <label for="peminjaman">Riwayat Peminjaman</label>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">No</th>
                                        <th scope="col">Judul</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Denda</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        {{-- LOGIC --}}
                                        @php
                                        $total_denda = 0;
                                        @endphp
                                        @foreach ($mahasiswa->peminjamans as $peminjaman)
                                        {{-- Menghitung Denda dan Status --}}
                                        @php
                                        if (!$peminjaman->tgl_kembali) {
                                        $str_tgl_peminjaman = $peminjaman->tgl_pinjam;
                                        $hari_ini = new DateTime("now");
                                        $tgl_pinjam = new DateTime($str_tgl_peminjaman);

                                        $selisih_hari = $hari_ini->diff($tgl_pinjam)->format("%r%a"); //3
                                        $jumlah_hari_terlambat = 5 - (int)$selisih_hari; # 5 adalah batas waktu pinjam
                                        $denda = 1000 * $jumlah_hari_terlambat; // Denda Tiap Pinnjaman
                                        $total_denda = $total_denda + $denda; // Total Denda
                                        $status = 'Denda';
                                        if ($denda == 0) {
                                        $status = 'Dipinjam';
                                        }
                                        }
                                        else {
                                        $status = 'Dikembalikan';
                                        $denda = 0;
                                        }
                                        @endphp

                                        {{-- TABEL --}}
                                        <th scope="row">{{ $loop->index+1 }}</th>
                                        {{-- JUDUL --}}
                                        <td>{{ $peminjaman->buku->judul }}</td>
                                        {{-- STATUS --}}
                                        <td>{{ $status }}</td>
                                        {{-- DENDA --}}
                                        <td>{{ $denda }}</td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        <!-- total_denda -->
                        <div class="form-group">
                            <label for="total_denda">Total Denda</label>
                            <input class="form-control" id="total_denda" rows="3" name="total_denda"
                                value="{{ $total_denda}}" readonly>
                        </div>
                        <a class="btn btn-primary mt-2 " type="button" href="{{ route('admin.mahasiswas.index') }}">
                            Kembali
                        </a>
                    </form>
                </div>
            </div>

        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->

    <!-- Footer -->
    <footer class="sticky-footer bg-white">
        <div class="container my-auto">
            <div class="copyright text-center my-auto">
                <span>Copyright &copy; Siperpus UTM 2021</span>
            </div>
        </div>
    </footer>
    <!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->
@endsection

@section('script')

@endsection
