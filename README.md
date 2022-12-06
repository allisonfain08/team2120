<h1> Atlanta Sustainable Fashion Week and eKlozet Fashion Styling App </h1>

<h5> The iOS application in development is intended to support the Atlanta Sustainable Fashion Week’s (ASFW) event in late Fall of 2022. The mission of ASFW is to raise awareness of sustainability in fashion and inform people on how to make more sustainable clothing purchase decisions. Consumers often lack pertinent information on the impacts of clothing production on the environment and have difficulty determining how to make more environmentally friendly clothing decisions.  
</n>
The client, Tanjuria Willis, leads the planning and execution of ASFW, as well as running a luxury consignment store and styling service under the brand name “EKlozet”. The iOS mobile application, in addition to supporting ASFW, is geared towards her existing and future clients and customers at EKlozet.
</n>
The app we will develop will allow people to take a quiz to determine their personal style and advise them on how to use existing pieces in combination with sustainably sourced new clothes. Users will be able to see which sustainability metrics are being met by clothing suggestions and make outfits linked to a calendar of personal and professional events. 

</h5>
</n>

<h1>Installation Guide</h1>
<h2>Prerequisites for Installation and Running</h2>
<li> iOS 16 or newer (for mac PC)
<li> macOS Monterey 12.5 or newer <a href="https://support.apple.com/en-us/HT21168">(Install Guide)</a>
    <ul>
      <li>To see what macOS version you have:</li>
          <ol>
            <li>Click on Apple icon in the top left of your mac screen</li>
            <li>Click 'About This Mac'</li>
            <li>The 'Overview' tab (default) displays your mac's current OS</li>
          </ol>
    </ul>
<li> Xcode v14.0 <a href="https://developer.apple.com/xcode/">(Install through App Store)</a>
    <ul>
      <li><strong>Note:</strong> If you are downloading Xcode from the App Store, you will need at least 20-25 GB of storage available to run Xcode and build the project. </li>
    </ul>
    
**Note:** All of these prerequisites will be installed through the App Store, so no install script is necessary. No script can be written because downloads from the App Store need users' unique Apple ID and password.

<h2> Dependent Libraries</h2>
<li> Git <a href="https://github.com/git-guides/install-git">(Install Git)</a>
<li> Swift.sqlite3 package <a href="https://www.sqlite.org/download.html">(already built into Swift, comes pre-installed on every mac)</a>
<h2> Build/Run Instructions</h2>
<p><strong>Note:</strong> Xcode intuitively builds the application and runs it when the run project button has been pressed. </p>

<ol>
  <li>Before running the app simulator, you must first download the prerequisites detailed in the previous section. These only need to be installed once before working through the steps below.</li>
  <li>Using the provided admin-access link to this GitHub repository (emailed separately), follow the instructions in this <a href="https://www.gitkraken.com/learn/git/github-download#:~:text=Click%20on%20the%20file%20you,the%20file%2C%20and%20select%20Save%20.">link</a> to properly download the <strong>main branch</strong> onto your device. This is the most updated version of the code. </li>
  <li>After installing Xcode ver 14.0, open the Xcode IDE in your applications folder. See image below for what the icon looks like. </li>
</ol>

![xcode](xcode.png) 
*Figure 1.1 Xcode Application*

4. Open the desired file (navigate to the directory where you downloaded the main branch). In this case, the file is called “altsfw.xcodeproj”

5. After the file is opened (see Figure 1.2 below), press the triangle in the upper left hand corner to launch the iOS simulator. It is circled in red. Once the build has succeeded, the iOS simulator will launch automatically.

![triangle](triangle.png) 
*Figure 1.2 Main Project File*

6. Figure 1.3 shows the initial launch screen of the simulator. From here, you now have the current version of the application running and can begin interacting with it. You’re all set!  

<img src="simulator.png" width="125" height="250" />

7. If you close out of the simulator, you must re-press the run button shown in Figure 1.2.  

<h2> Troubleshooting</h2>
<h1>Release Notes Section</h1>

<h2>Version 1.0</h2>
<h3>Features</h3>
<ul>
<li> Users can 
</ul>
<h3>Bug Fixes</h3>
<ul>
<li> Fixed BeginQuiz back button failing to send user back to Home page correctly. 
</ul>
<h3>Known Issues</h3>
<ul>
<li> Issue 1
<li> Issue 2
</ul>
