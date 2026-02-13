# 📦 Logistics & Delivery Lead Time Analysis

## 🎯 Project Overview
Bu projede, e-ticaret gönderilerinin operasyonel hızını analiz ettim. Satın alma ve teslimat tarihleri arasındaki farkları (Lead Time) hesaplayarak taşıyıcı firmaların performansını ve paket iptal oranlarını değerlendirdim.

## 🛠️ Tech Stack & Skills
- **Tool:** Google BigQuery
- **Techniques:** - `DATE_DIFF`: Teslimat sürelerini gün bazlı hesaplama.
  - `COUNTIF`: İptal edilen gönderileri dinamik olarak filtreleme.
  - `Aggregations`: Ortalama teslimat hızı ve toplam hacim analizi.
  - `Data Cleaning`: Boş (null) verilerin ve iptallerin analize dahil edilmesi.
  - Handling data type mismatches by casting STRING dates to DATE objects for time-based calculations.

## 🔍 Key Performance Indicators (KPIs)
- **Lead Time Analysis:** Paketlerin ortalama kaç günde müşteriye ulaştığının tespiti.
- **Cancellation Rates:** Hangi taşıma firmasında veya öncelik seviyesinde (priority) daha fazla iptal yaşandığının analizi.
- **Efficiency Benchmarking:** En hızlı teslimat yapan firmaların belirlenmesi.
