// ─── Kampüs Asistanı · showcase/max_absence.dart ───
// EN: Computes the maximum absent hours from the semester length and minimum attendance rule.
//     Used when a course is created or its schedule changes.
// TR: Dönem uzunluğu ve asgari devam şartından maksimum devamsızlık saatini hesaplar.
//     Ders eklendiğinde veya programı değiştiğinde kullanılır.
// Excerpt only — the full source code is private. / Yalnızca alıntıdır, tam kaynak kod kapalıdır.

int get maxAllowedAbsentHours {
  if (customMaxAbsentHours != null) return customMaxAbsentHours!;
  if (totalSemesterHours == 0) return 0;
  final maxRatio = (100.0 - minAttendancePercentage) / 100.0;
  return (totalSemesterHours * maxRatio).floor();
}
