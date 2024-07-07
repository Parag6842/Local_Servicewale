import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

const _kSupabaseUrl = 'https://tpfouzxmzzculpluprfg.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRwZm91enhtenpjdWxwbHVwcmZnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTQxOTY3NzAsImV4cCI6MjAyOTc3Mjc3MH0.zreIZ3EPcIQdo_xaEO3KiN2rO4F6QXrPE8V-J0AJR8g';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
