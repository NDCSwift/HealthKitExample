# 🏃 HealthKit Example
A SwiftUI app showing how to read and write health data using Apple's HealthKit framework.

---

## 🤔 What this is
This project demonstrates how to request HealthKit permissions and read health metrics like step count, heart rate, or active energy from the Health app. It shows the full authorization flow and how to query HealthKitStore for real user data. A practical template for any fitness or wellness app.

## ✅ Why you'd use it
- **HealthKit authorization** — Shows the correct way to request read/write permissions at runtime
- **HKStatisticsQuery** — Demonstrates how to fetch aggregate health data (daily totals, averages)
- **SwiftUI integration** — Bridges HealthKit's callback-based API into a clean SwiftUI view model

## 📺 Watch on YouTube
[![Watch on YouTube](https://img.shields.io/badge/YouTube-Watch%20the%20Tutorial-red?style=for-the-badge&logo=youtube)](https://youtu.be/ORJ9rvqoR9s)

> This project was built for the [NoahDoesCoding YouTube channel](https://www.youtube.com/@noahdoescoding).

---

## 🚀 Getting Started

### 1. Clone the Repo
```bash
git clone https://github.com/NDCSwift/HealthKitExample.git
cd HealthKitExample
```

### 2. Open in Xcode
Double-click `HealthKitExample.xcodeproj`.

### 3. Set Your Development Team
In Xcode: **TARGET → Signing & Capabilities → Team** — select your team.

### 4. Update the Bundle Identifier
Change `com.example.MyApp` to a unique reverse-domain ID.

## 🛠️ Notes
- HealthKit is not available on the Simulator — run on a real device for live data.
- Make sure **HealthKit** capability is enabled under **Signing & Capabilities**.
- Add `NSHealthShareUsageDescription` and `NSHealthUpdateUsageDescription` keys to `Info.plist`.

## 📦 Requirements
- Xcode 15+
- iOS 17+
- Real iOS device recommended

📺 [Watch the guide on YouTube](https://youtu.be/ORJ9rvqoR9s)
