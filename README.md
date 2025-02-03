# SkillNautic

### **Learn Management System**

## Getting Started


Set up Flutter on Windows 11 PC step by step. I’ll explain everything in simple terms, and we’ll avoid using Android Studio.

---

### **Step 1: Download Flutter**
1. **What is Flutter?**
   - Flutter is a tool that helps you build apps for phones, computers, and the web. To use it, we need to download it first.

2. **How to Download Flutter?**
   - Open your browser (like Chrome or Edge) and go to this website: [Flutter Downloads](https://flutter.dev/docs/get-started/install/windows).
   - Scroll down and find the "Windows" section.
   - Click on the link that says **"Flutter SDK"**. It will download a `.zip` file.

3. **Where to Extract Flutter?**
   - Once the download is complete, open the folder where the file was saved (usually in `Downloads`).
   - Right-click on the `.zip` file and select **Extract All**.
   - Choose a location to extract it. For example, you can create a folder called `C:\Flutter` and extract it there. After extraction, you’ll see a folder named something like `flutter`.

---

### **Step 2: Set Up Environment Variables**
1. **What are Environment Variables?**
   - These are like shortcuts that tell your computer where to find important tools. We need to tell Windows where Flutter is installed.

2. **How to Set Environment Variables?**
   - Press the **Windows key** on your keyboard and type **"Environment Variables"**.
   - Click on **"Edit the system environment variables"**.
   - In the window that opens, click on the **"Environment Variables"** button at the bottom.
   - Under **"System variables"**, find a variable called **Path** and double-click it.
   - Click **New** and add the path to the Flutter folder. For example:
     ```
     C:\Flutter\flutter\bin
     ```
   - Click **OK** to save everything.

3. **Test if Flutter Works**
   - Open a new Command Prompt (press **Windows + R**, type `cmd`, and press Enter).
   - Type this command and press Enter:
     ```
     flutter doctor
     ```
   - This will check if everything is set up correctly. Don’t worry if you see some warnings; we’ll fix them later.

---

### **Step 3: Install Git**
1. **What is Git?**
   - Git is a tool that helps developers manage code. Flutter needs Git to work properly.

2. **How to Install Git?**
   - Go to this website: [Git Downloads](https://git-scm.com/download/win).
   - Download the installer for Windows.
   - Run the installer and follow the steps. You can leave all the settings as default.
   - During installation, make sure to check the box that says **"Add Git to PATH"**.

3. **Verify Git Installation**
   - Open Command Prompt again and type:
     ```
     git --version
     ```
   - If you see a version number, Git is installed correctly.

---

### **Step 4: Install Java Development Kit (JDK)**
1. **What is JDK?**
   - JDK is a tool that helps with Android app development. Flutter needs it to build Android apps.

2. **How to Install JDK?**
   - Go to this website: [OpenJDK](https://adoptium.net/).
   - Download the latest version of **Temurin JDK** (it’s free and works well).
   - Run the installer and follow the steps. Install it in a simple location, like:
     ```
     C:\Java\jdk-17
     ```
     (Replace `17` with your version number.)

3. **Set JDK Path in Environment Variables**
   - Go back to **Environment Variables** (same steps as before).
   - Add a new variable under **System variables**:
     - Name: `JAVA_HOME`
     - Value: The path to your JDK folder (e.g., `C:\Java\jdk-17`).
   - Also, add the `bin` folder of JDK to the **Path** variable:
     ```
     C:\Java\jdk-17\bin
     ```

4. **Verify JDK Installation**
   - Open Command Prompt and type:
     ```
     java -version
     ```
   - If you see a version number, JDK is installed correctly.

---

### **Step 5: Install an Android Emulator Without Android Studio**
1. **What is an Emulator?**
   - An emulator is like a fake phone on your computer. It lets you test your apps without needing a real phone.

2. **How to Install an Emulator?**
   - Since you don’t want Android Studio, we’ll use **Android Command Line Tools**.
   - Go to this website: [Android Command Line Tools](https://developer.android.com/studio#command-tools).
   - Download the **Command Line Tools Only** package.
   - Extract the `.zip` file to a folder, for example:
     ```
     C:\Android\cmdline-tools
     ```
   - Inside the `cmdline-tools` folder, create another folder called `latest` and move all the files into it. The structure should look like this:
     ```
     C:\Android\cmdline-tools\latest\
     ```

3. **Set Android SDK Path in Environment Variables**
   - Go back to **Environment Variables**.
   - Add a new variable under **System variables**:
     - Name: `ANDROID_HOME`
     - Value: The path to your Android folder (e.g., `C:\Android`).
   - Also, add the following paths to the **Path** variable:
     ```
     C:\Android\cmdline-tools\latest\bin
     C:\Android\platform-tools
     ```

4. **Install Required SDK Components**
   - Open Command Prompt and type:
     ```
     sdkmanager "platform-tools" "platforms;android-33"
     ```
   - Replace `android-33` with the latest version number if needed.
   - This will download the necessary tools for Android development.

5. **Verify Android Setup**
   - Type this command in Command Prompt:
     ```
     adb version
     ```
   - If you see a version number, the Android tools are working.

---

### **Step 6: Install a Lightweight Code Editor**
1. **What is a Code Editor?**
   - A code editor is where you write your app’s code. We’ll use **Visual Studio Code (VS Code)** because it’s lightweight and works well with Flutter.

2. **How to Install VS Code?**
   - Go to this website: [VS Code Downloads](https://code.visualstudio.com/Download).
   - Download the installer for Windows.
   - Run the installer and follow the steps. Make sure to check the box that says **"Add to PATH"**.

3. **Install Flutter and Dart Extensions in VS Code**
   - Open VS Code.
   - Click on the **Extensions** icon on the left sidebar (or press **Ctrl + Shift + X**).
   - Search for **"Flutter"** and install the extension by Dart Code.
   - The Dart extension will be installed automatically.

---

### **Step 7: Test Your Setup**
1. **Run Flutter Doctor Again**
   - Open Command Prompt and type:
     ```
     flutter doctor
     ```
   - Fix any remaining issues by following the suggestions. For example:
     - If it says you need to accept licenses, run:
       ```
       flutter doctor --android-licenses
       ```

2. **Create a New Flutter Project**
   - In VS Code, press **Ctrl + Shift + P** and type **"Flutter: New Project"**.
   - Follow the steps to create a new project.
   - Run the app using the emulator or connect a physical device.

---

### **Summary of Paths to Set in Environment Variables**
Here’s a quick list of all the paths you need to add to the **Path** variable:
1. `C:\Flutter\flutter\bin`
2. `C:\Java\jdk-XX\bin`
3. `C:\Android\cmdline-tools\latest\bin`
4. `C:\Android\platform-tools`

And these are the custom variables:
1. `JAVA_HOME`: `C:\Java\jdk-XX`
2. `ANDROID_HOME`: `C:\Android`

---

### **That’s it! Flutter has been set up on your Windows 11 PC without Android Studio.**

---

Since you have already set up Flutter and checked the installation, follow these steps to create and run a Flutter app in **VS Code** using the command line:

---

## **1. Create a New Flutter Project**
Open **VS Code** and then open the terminal (`Ctrl + ~`) and run:

```sh
flutter create my_app
```

Replace `my_app` with your preferred project name.

---

## **2. Navigate to the Project Directory**
```sh
cd my_app
```

---

## **3. Open the Project in VS Code**
Run:
```sh
code .
```
This will open the project in VS Code.

---

## **4. Connect and Run on a Physical Device**
### **Step 1: Enable Developer Mode on Your Device**
1. Go to **Settings > About phone**.
2. Tap **Build number** 7 times to enable **Developer options**.
3. Go to **Developer options** and enable **USB debugging**.

### **Step 2: Connect Your Device**
1. Connect your Android device to the PC using a **USB cable**.
2. Run the following command to check if your device is detected:
   ```sh
   flutter devices
   ```
   If your device appears in the list, you’re good to go.

### **Step 3: Run the App**
To run the app on your device, execute:
```sh
flutter run
```
This will build and install the app on your connected device.

---

## **5. (Optional) Select Device in VS Code**
If you want to run the app from VS Code:
1. Press `F5` (or open **Run > Start Debugging**).
2. Choose your connected device if prompted.

---

Since you have already set up Flutter and checked the installation, follow these steps to create and run a Flutter app in **VS Code** using the command line:

---

## **1. Create a New Flutter Project**
Open **VS Code** and then open the terminal (`Ctrl + ~`) and run:

```sh
flutter create my_app
```

Replace `my_app` with your preferred project name.

---

## **2. Navigate to the Project Directory**
```sh
cd my_app
```

---

## **3. Open the Project in VS Code**
Run:
```sh
code .
```
This will open the project in VS Code.

---

## **4. Connect and Run on a Physical Device**
### **Step 1: Enable Developer Mode on Your Device**
1. Go to **Settings > About phone**.
2. Tap **Build number** 7 times to enable **Developer options**.
3. Go to **Developer options** and enable **USB debugging**.

### **Step 2: Connect Your Device**
1. Connect your Android device to the PC using a **USB cable**.
2. Run the following command to check if your device is detected:
   ```sh
   flutter devices
   ```
   If your device appears in the list, you’re good to go.

### **Step 3: Run the App**
To run the app on your device, execute:
```sh
flutter run
```
This will build and install the app on your connected device.

---

## **5. (Optional) Select Device in VS Code**
If you want to run the app from VS Code:
1. Press `F5` (or open **Run > Start Debugging**).
2. Choose your connected device if prompted.

---

Since you have already set up Flutter and checked the installation, follow these steps to create and run a Flutter app in **VS Code** using the command line:

---

## **1. Create a New Flutter Project**
Open **VS Code** and then open the terminal (`Ctrl + ~`) and run:

```sh
flutter create my_app
```

Replace `my_app` with your preferred project name.

---

## **2. Navigate to the Project Directory**
```sh
cd my_app
```

---

## **3. Open the Project in VS Code**
Run:
```sh
code .
```
This will open the project in VS Code.

---

## **4. Connect and Run on a Physical Device**
### **Step 1: Enable Developer Mode on Your Device**
1. Go to **Settings > About phone**.
2. Tap **Build number** 7 times to enable **Developer options**.
3. Go to **Developer options** and enable **USB debugging**.

### **Step 2: Connect Your Device**
1. Connect your Android device to the PC using a **USB cable**.
2. Run the following command to check if your device is detected:
   ```sh
   flutter devices
   ```
   If your device appears in the list, you’re good to go.

### **Step 3: Run the App**
To run the app on your device, execute:
```sh
flutter run
```
This will build and install the app on your connected device.

---

## **5. (Optional) Select Device in VS Code**
If you want to run the app from VS Code:
1. Press `F5` (or open **Run > Start Debugging**).
2. Choose your connected device if prompted.

---

### Your Flutter app should now be running on your physical device! 🚀.

# Default main.dart

Run:
```sh
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Dasboard(),
    );
  }
}

class Dasboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Container(
        color: Colors.blue.shade300,
      ),
    );
  }
}

```