json.extract! invoice, :id, :noinvoice, :tanggal, :supplier, :telp, :paymentdue, :desk, :namatamu, :namaaktifitas, :tglaktifitas, :qty, :totalamount, :namaakun, :nomorakun, :swiftcode, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
