import 'dart:async';

// Kelas File
class File {
  // Atribut
  String _url = "";
  double _size = 0.0;

  // Konstruktor
  File(this._url, this._size);

  // Getter
  String get url => _url;
  double get size => _size;

  // Setter
  set url(String url) => _url = url;
  set size(double size) => _size = size;
}

// Kelas Image sebagai anak dari kelas File
class Image extends File {
  // Atribut
  String _resolution;
  String _format;

  // Konstruktor
  Image(String url, double size, this._resolution, this._format)
      : super(url, size);

  // Getter
  String get resolution => _resolution;
  String get format => _format;

  // Setter
  set resolution(String resolution) => _resolution = resolution;
  set format(String format) => _format = format;
}

// Kelas Dokumen sebagai anak dari kelas File
class Document extends File {
  // Atribut
  String _format;
  String _author;

  // Konstruktor
  Document(String url, double size, this._format, this._author)
      : super(url, size);

  // Getter
  String get format => _format;
  String get author => _author;

  // Setter
  set format(String format) => _format = format;
  set author(String author) => _author = author;
}

// Kelas ImageDownloader yang memiliki composite kelas Image
class ImageDownloader {
  // Atribut
  List<Image> images = [];

  // Method menambahkan Image ke list
  void addImage(Image image) {
    images.add(image);
  }

  // Method mendownload image secara asynchronous
  Future<void> downloading() async {
    print('Download starting...');
    double total = 0; // untuk menghitung banyaknya size yang didownload

    // Mendownload setiap image
    for (var image in images) {
      print('Downloading ${image.url}'); // simulasi download
      await Future.delayed(Duration(seconds: 5));
      total += image.size;
    }
    print('Download finished...');
    print('Total downloaded : $total MB');
  }
}

// Kelas DocumentDownloader yang memiliki composite kelas Document
class DocumentDownloader {
  // Atribut
  List<Document> documents = [];

  // Method menambahkan Document ke list
  void addDocument(Document document) {
    documents.add(document);
  }

  // Method mendownload document secara asynchronous
  Future<void> downloading() async {
    print('Download starting...');
    double total = 0; // untuk menghitung banyaknya size yang didownload
    // Mendownload setiap document
    for (var document in documents) {
      print('Downloading ${document.url}'); // simulasi download
      await Future.delayed(Duration(seconds: 5));
      total += document.size;
    }
    print('Download finished...');
    print('Total downloaded : $total MB');
  }
}

void main() async {
  // Membuat image dan document
  final image =
      Image("https://pixiv.com/kivotos-image.jpg", 3.4, "1920x1080", "jpg");
  final image2 = Image(
      "https://devianart.com/angel-24-image.png", 9.7, " 2560x14400", "png");
  final document = Document(
      "https://millenium.com/activity-document.pdf", 12.8, "PDF", "Ushio Noa");
  final document2 = Document(
      "https://gehenna.com/bounty-list.txt", 1.3, "txt", "Onikata Kayoko");

  // membuat sesi download
  var downloader = ImageDownloader();
  var downloader2 = DocumentDownloader();

  // menampilkan dan menambahkan image ke sesi download
  print("Image 1 detail:");
  print("------------------");
  print("URL: ${image.url}");
  print("Size: ${image.size}");
  print("Resolution: ${image.resolution}");
  print("Format: ${image.format}");
  downloader.addImage(image);
  print('');

  print("Image 2 detail:");
  print("------------------");
  print("URL: ${image2.url}");
  print("Size: ${image2.size}");
  print("Resolution: ${image2.resolution}");
  print("Format: ${image2.format}");
  downloader.addImage(image2);

  print('');
  await downloader.downloading();
  print('');

  print("==================");
  print('');
  print("Document 1 detail:");
  print("------------------");
  print("URL: ${document.url}");
  print("Size: ${document.size}");
  print("Format: ${document.format}");
  print("Author: ${document.author}");
  downloader2.addDocument(document);
  print('');

  // menampilkan dan menambahkan document ke sesi download
  print("Document 2 detail:");
  print("------------------");
  print("URL: ${document2.url}");
  print("Size: ${document2.size}");
  print("Format: ${document2.format}");
  print("Author: ${document2.author}");
  downloader2.addDocument(document2);

  print('');
  await downloader2.downloading();
}
