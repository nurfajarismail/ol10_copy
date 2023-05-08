import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import '../objectbox.g.dart';

class ObjecBox {
  final Store store;

  ObjecBox._(this.store);

  static Future<ObjecBox> create() async {
    final dir = await getApplicationDocumentsDirectory();
    final store = await openStore(directory: p.join(dir.path, "ol10_data"));

    return ObjecBox._(store);
  }
}
