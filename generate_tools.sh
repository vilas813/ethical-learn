#!/bin/bash

tools=(
    "nmap:Nmap एक network scanning tool है।"
    "maltego:Maltego एक intelligence gathering tool है।"
    "theharvester:theHarvester email और subdomain harvesting के लिए।"
    "recon-ng:Recon-ng web reconnaissance के लिए।"
    "dnsenum:Dnsenum DNS enumeration के लिए।"
    "dnsrecon:Dnsrecon DNS reconnaissance के लिए।"
    "nikto:Nikto web server scanning के लिए।"
    "openvas:OpenVAS vulnerability scanning के लिए।"
    "owasp-zap:OWASP ZAP web app security testing के लिए।"
    "sqlmap:SQLmap SQL injection testing के लिए।"
    "burp-suite:Burp Suite web app testing के लिए।"
    "commix:Commix command injection testing के लिए।"
    "skipfish:Skipfish web crawling और scanning के लिए।"
    "wfuzz:Wfuzz web fuzzing के लिए।"
    "hydra:Hydra password cracking के लिए।"
    "hashcat:Hashcat GPU-based password cracking के लिए।"
    "john-the-ripper:John the Ripper password cracking के लिए।"
    "medusa:Medusa parallel password cracking के लिए।"
    "aircrack-ng:Aircrack-ng wireless security testing के लिए।"
    "reaver:Reaver WPS cracking के लिए।"
    "kismet:Kismet wireless network detection के लिए।"
    "wifite:Wifite automated wireless attacks के लिए।"
    "beef:BeEF browser exploitation के लिए।"
    "armitage:Armitage Metasploit GUI के लिए।"
    "wireshark:Wireshark network protocol analyzer।"
    "ettercap:Ettercap man-in-the-middle attacks के लिए।"
    "bettercap:Bettercap network attacks के लिए।"
    "autopsy:Autopsy digital forensics के लिए।"
    "binwalk:Binwalk file analysis के लिए।"
    "foremost:Foremost file carving के लिए।"
)

for tool in "${tools[@]}"; do
    name=$(echo $tool | cut -d: -f1)
    desc=$(echo $tool | cut -d: -f2)
    filename="${name}.html"
    title="${name} - Ethical Learn"
    
    cat > "tools/$filename" << HTML_EOF
<!DOCTYPE html>
<html lang="hi">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>$title</title>
    <style>
      :root {
        --bg: #0b1220;
        --surface: #121c2a;
        --text: #e8f0ff;
        --muted: #a3b1c2;
        --accent: #4fb6ff;
        --radius: 14px;
      }

      * {
        box-sizing: border-box;
      }

      body {
        margin: 0;
        font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
        background: radial-gradient(circle at top, #1b2c4a 0%, #05080f 55%, #03040a 100%);
        color: var(--text);
        line-height: 1.5;
      }

      .container {
        max-width: 960px;
        margin: 0 auto;
        padding: 3.5rem 1.5rem 4rem;
      }

      header {
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 1.25rem 0;
      }

      header h1 {
        font-size: 1.5rem;
        letter-spacing: -0.02em;
        margin: 0;
      }

      nav a {
        color: var(--muted);
        text-decoration: none;
        margin-left: 1rem;
      }

      nav a:hover {
        color: var(--accent);
      }

      .content {
        background: var(--surface);
        border-radius: var(--radius);
        padding: 2rem;
        margin-top: 2rem;
      }

      h2 {
        color: var(--accent);
        margin-top: 2rem;
        margin-bottom: 1rem;
      }

      p {
        margin-bottom: 1rem;
      }

      ul {
        margin-bottom: 1rem;
        padding-left: 1.5rem;
      }

      li {
        margin-bottom: 0.5rem;
      }

      code {
        background: rgba(255, 255, 255, 0.1);
        padding: 0.2rem 0.4rem;
        border-radius: 4px;
        font-family: 'Courier New', monospace;
      }

      footer {
        border-top: 1px solid rgba(255, 255, 255, 0.08);
        padding: 2.5rem 0 1rem;
        text-align: center;
        color: var(--muted);
        font-size: 0.95rem;
      }

      footer a {
        color: var(--muted);
        text-decoration: none;
        font-weight: 600;
      }

      footer a:hover {
        color: var(--accent);
      }

      @media (max-width: 520px) {
        header {
          flex-direction: column;
          align-items: flex-start;
        }

        nav {
          margin-top: 1rem;
        }

        .container {
          padding: 2.5rem 1.25rem 3rem;
        }
      }
    </style>
  </head>
  <body>
    <div class="container">
      <header>
        <h1>Ethical Learn</h1>
        <nav>
          <a href="../index.html">Home</a>
          <a href="../about.html">About</a>
          <a href="../login.html">Login</a>
          <a href="../signup.html">Signup</a>
        </nav>
      </header>

      <div class="content">
        <h2>$name क्या है?</h2>
        <p>$desc यह tool Kali Linux में available है और ethical hacking में इस्तेमाल होता है।</p>

        <h2>Basic Usage</h2>
        <p>इस tool का basic usage सीखने के लिए Kali Linux में install करें और documentation पढ़ें।</p>

        <h2>Kali Linux में Install करना</h2>
        <p>अधिकतर tools by default installed होते हैं। अगर नहीं तो <code>sudo apt install $name</code></p>

        <h2>Important Note</h2>
        <p>इस tool का उपयोग केवल educational और authorized purposes के लिए करें।</p>
      </div>

      <footer>
        <p>
          Made with care for ethical learning experiences —
          <a href="mailto:hello@ethicallearn.example">Contact us</a>
        </p>
      </footer>
    </div>
  </body>
</html>
HTML_EOF
done
