const updates = [
    "Initializing update log...",
    "Patch 0.5.0 Applied!",
    "Patch Notes:",
    "Implimented card database",
    "Stared app and e-ink card dev",
    "Refined UI and overall desgin",
    " ",
    "...Holocards!: The Game is still WIP... Game is complete. In our final days of dev",
    " ",
    "You are logged in as 'UPDATE'   --Type 'fetch' for current engine version.   --Type exit to quit.", 
    "Holocards | MMXXV"
  ];
  
  const fetchArt = ` 
 ───▄▀▀▀▄▄▄▄▄▄▄▀▀▀▄─── Dizz HTML Engine V0.9.9 (Sleepy Bear)
 ───█▒▒░░░░░░░░░▒▒█─── Last Updated Wed Feb 5 13:53:34
 ────█░░█░░░░░█░░█──── Logged in as 'UPDATE'
 ─▄▄──█░░░▀█▀░░░█──▄▄─ 
 █░░█─▀▄░░░░░░░▄▀─█░░█ Don't wake the bear.

 update ttyl --Type 'exit' to quit.
  `;
  
  const bomboclat = 'Bombo.. and a rasclat!'

  const help = 'Commands [insert commands here]'

  const terminalOutput = document.getElementById("terminal-output");
  const terminalInput = document.getElementById("terminal-input");
  
  // Disable input initially
  terminalInput.disabled = true;

  
  function displayUpdates() {
    let index = 0;
    const interval = setInterval(() => {
      if (index < updates.length) {
        terminalOutput.textContent += `${updates[index]}\n`;
        terminalOutput.scrollTop = terminalOutput.scrollHeight; // Scroll to bottom
        index++;
      } else {
        clearInterval(interval);
        enableInput();
      }
    }, 1500);
  }
  
  function enableInput() {
    terminalInput.disabled = false;
    terminalInput.focus();
  }
  
  // Handle user input
  terminalInput.addEventListener("keydown", (event) => {
    if (event.key === "Enter") {
      const command = terminalInput.value.trim();
      terminalOutput.textContent += `update@localhost:$ ${command}\n`;
      terminalInput.value = "";
  
      if (command === "fetch") {
        terminalOutput.textContent += `${fetchArt}\n`;
      } else if (command === "exit") {
        window.location.href = "index.html";
      } else if (command === "bomboclat") {
        terminalOutput.textContent += "bomboclattttttttt!\n";
      } else {
        terminalOutput.textContent += "Command not found, I'm not a miracle worker.\n";
      }
  
      terminalOutput.scrollTop = terminalOutput.scrollHeight; // Scroll to bottom
    }
  });
  

  window.onload = displayUpdates;