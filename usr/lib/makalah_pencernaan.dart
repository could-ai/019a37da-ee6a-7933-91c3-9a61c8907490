import 'package:flutter/material.dart';

class PaperScreen extends StatelessWidget {
  const PaperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    final GlobalKey pendahuluanKey = GlobalKey();
    final GlobalKey organUtamaKey = GlobalKey();
    final GlobalKey organTambahanKey = GlobalKey();
    final GlobalKey prosesPencernaanKey = GlobalKey();
    final GlobalKey gangguanKey = GlobalKey();
    final GlobalKey penutupKey = GlobalKey();

    void scrollToSection(GlobalKey key) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sistem Pencernaan Manusia"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Row(
        children: [
          // Daftar Isi
          Container(
            width: 250,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border(
                right: BorderSide(color: Colors.grey[400]!),
              ),
            ),
            child: ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Daftar Isi",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListTile(
                  title: const Text("1. Pendahuluan"),
                  onTap: () => scrollToSection(pendahuluanKey),
                ),
                ListTile(
                  title: const Text("2. Organ-Organ Pencernaan Utama"),
                  onTap: () => scrollToSection(organUtamaKey),
                ),
                ListTile(
                  title: const Text("3. Organ-Organ Pencernaan Tambahan"),
                  onTap: () => scrollToSection(organTambahanKey),
                ),
                ListTile(
                  title: const Text("4. Proses Pencernaan"),
                  onTap: () => scrollToSection(prosesPencernaanKey),
                ),
                ListTile(
                  title: const Text("5. Gangguan Sistem Pencernaan"),
                  onTap: () => scrollToSection(gangguanKey),
                ),
                ListTile(
                  title: const Text("6. Penutup"),
                  onTap: () => scrollToSection(penutupKey),
                ),
              ],
            ),
          ),
          // Konten Makalah
          Expanded(
            child: SingleChildScrollView(
              controller: scrollController,
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSection(
                    key: pendahuluanKey,
                    title: "1. Pendahuluan",
                    content:
                        "Sistem pencernaan manusia adalah jaringan organ yang bekerja sama untuk mengubah makanan menjadi energi dan nutrisi yang dibutuhkan tubuh. Proses ini melibatkan pemecahan makanan menjadi molekul yang lebih kecil yang dapat diserap dan digunakan oleh sel-sel tubuh. Tanpa sistem pencernaan yang berfungsi baik, tubuh kita tidak akan mendapatkan 'bahan bakar' yang diperlukan untuk beraktivitas, tumbuh, dan memperbaiki diri. Makalah ini akan membahas secara rinci organ-organ yang terlibat, proses yang terjadi, serta beberapa gangguan umum pada sistem pencernaan.",
                  ),
                  _buildSection(
                    key: organUtamaKey,
                    title: "2. Organ-Organ Pencernaan Utama",
                    content:
                        "Organ-organ ini membentuk saluran pencernaan, yaitu jalur panjang yang dilalui makanan dari awal hingga akhir.",
                    subSections: [
                      _buildSubSection(
                        "a. Mulut",
                        "Pintu gerbang sistem pencernaan. Di sini, makanan dikunyah oleh gigi (pencernaan mekanis) dan dicampur dengan air liur yang mengandung enzim untuk memulai pemecahan karbohidrat (pencernaan kimiawi).",
                      ),
                      _buildSubSection(
                        "b. Kerongkongan (Esofagus)",
                        "Tabung berotot yang menghubungkan mulut dengan lambung. Gerakan peristaltik, yaitu kontraksi otot ritmis, mendorong makanan ke bawah menuju lambung.",
                      ),
                      _buildSubSection(
                        "c. Lambung",
                        "Organ berbentuk kantong tempat makanan dicampur dengan asam lambung dan enzim pencernaan yang kuat. Asam ini membunuh bakteri berbahaya dan membantu memecah protein. Makanan diubah menjadi bubur kental yang disebut kimus (chyme).",
                      ),
                      _buildSubSection(
                        "d. Usus Halus",
                        "Bagian terpanjang dari saluran pencernaan. Di sinilah sebagian besar penyerapan nutrisi terjadi. Dindingnya yang berlipat-lipat dan dilapisi vili (jonjot usus) memperluas area permukaan untuk penyerapan maksimal. Nutrisi seperti protein, lemak, dan karbohidrat diserap ke dalam aliran darah.",
                      ),
                      _buildSubSection(
                        "e. Usus Besar",
                        "Sisa makanan yang tidak dapat dicerna masuk ke usus besar. Fungsi utamanya adalah menyerap kembali air dan elektrolit dari sisa makanan tersebut, serta memadatkan sisa-sisa tersebut menjadi feses.",
                      ),
                      _buildSubSection(
                        "f. Rektum dan Anus",
                        "Rektum adalah bagian akhir dari usus besar yang berfungsi sebagai tempat penyimpanan sementara feses sebelum dikeluarkan dari tubuh melalui anus.",
                      ),
                    ],
                  ),
                  _buildSection(
                    key: organTambahanKey,
                    title: "3. Organ-Organ Pencernaan Tambahan",
                    content:
                        "Organ-organ ini tidak dilalui makanan, tetapi mereka menghasilkan atau menyimpan zat yang penting untuk proses pencernaan.",
                    subSections: [
                      _buildSubSection(
                        "a. Hati",
                        "Organ dalam terbesar ini memiliki banyak fungsi, salah satunya adalah menghasilkan empedu. Empedu adalah cairan yang membantu memecah lemak menjadi butiran-butiran kecil agar lebih mudah dicerna.",
                      ),
                      _buildSubSection(
                        "b. Kantung Empedu",
                        "Kantung kecil di bawah hati ini berfungsi untuk menyimpan dan mengentalkan empedu yang dihasilkan oleh hati. Ketika dibutuhkan, empedu akan dilepaskan ke usus halus.",
                      ),
                      _buildSubSection(
                        "c. Pankreas",
                        "Pankreas menghasilkan enzim pencernaan kuat yang dapat memecah karbohidrat, protein, dan lemak. Enzim ini juga dilepaskan ke usus halus untuk membantu proses pencernaan.",
                      ),
                    ],
                  ),
                  _buildSection(
                    key: prosesPencernaanKey,
                    title: "4. Proses Pencernaan",
                    content:
                        "Proses pencernaan dapat dibagi menjadi dua jenis utama:",
                    subSections: [
                      _buildSubSection(
                        "a. Pencernaan Mekanis",
                        "Ini adalah proses fisik memecah makanan menjadi potongan-potongan yang lebih kecil. Proses ini terjadi saat mengunyah di mulut dan saat otot-otot lambung mengaduk makanan.",
                      ),
                      _buildSubSection(
                        "b. Pencernaan Kimiawi",
                        "Ini adalah proses pemecahan molekul makanan yang kompleks menjadi molekul yang lebih sederhana dengan bantuan enzim. Proses ini dimulai di mulut, berlanjut secara intensif di lambung dan usus halus.",
                      ),
                    ],
                  ),
                  _buildSection(
                    key: gangguanKey,
                    title: "5. Gangguan pada Sistem Pencernaan",
                    content:
                        "Sistem pencernaan bisa mengalami berbagai gangguan, di antaranya:\n\n- **Maag (Gastritis):** Peradangan pada dinding lambung.\n- **Diare:** Feses menjadi encer karena usus besar tidak menyerap cukup air.\n- **Sembelit (Konstipasi):** Kesulitan buang air besar karena feses terlalu keras.\n- **GERD (Gastroesophageal Reflux Disease):** Naiknya asam lambung ke kerongkongan yang menyebabkan rasa terbakar di dada (heartburn).",
                  ),
                  _buildSection(
                    key: penutupKey,
                    title: "6. Penutup",
                    content:
                        "Sistem pencernaan adalah sistem yang luar biasa kompleks dan vital bagi kelangsungan hidup manusia. Setiap organ memiliki peran spesifik dalam memastikan bahwa makanan yang kita konsumsi dapat diubah menjadi energi dan nutrisi. Menjaga kesehatan sistem pencernaan dengan pola makan seimbang, cukup minum air, dan gaya hidup sehat adalah kunci untuk menjaga kesehatan tubuh secara keseluruhan.",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection({
    required GlobalKey key,
    required String title,
    required String content,
    List<Widget> subSections = const [],
  }) {
    return Card(
      key: key,
      margin: const EdgeInsets.only(bottom: 20),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              content,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 16, height: 1.5),
            ),
            if (subSections.isNotEmpty) ...[
              const SizedBox(height: 15),
              ...subSections,
            ]
          ],
        ),
      ),
    );
  }

  Widget _buildSubSection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            content,
            textAlign: TextAlign.justify,
            style: const TextStyle(fontSize: 16, height: 1.5),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
