// ─── Kampüs Asistanı · showcase/attendance_risk.dart ───
// EN: Decides how risky a course's attendance is, based on the remaining allowed absent hours.
//     Drives the colored risk badges on the dashboard and course list.
// TR: Kalan devamsızlık hakkına göre bir dersin risk seviyesini belirler.
//     Ana sayfadaki ve ders listesindeki renkli risk rozetlerini belirler.
// Excerpt only — the full source code is private. / Yalnızca alıntıdır, tam kaynak kod kapalıdır.

RiskLevel getRiskLevel(int currentAbsentHours) {
  if (!trackAttendance) return RiskLevel.exempt;
  final allowed = maxAllowedAbsentHours;
  if (currentAbsentHours > allowed) return RiskLevel.failed;
  final remaining = allowed - currentAbsentHours;
  if (remaining <= 2) return RiskLevel.high;
  if (remaining <= 4) return RiskLevel.medium;
  return RiskLevel.low;
}
