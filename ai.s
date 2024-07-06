const scanButton = document.getElementById('scanButton_aVb6U3jFnQeMhL7');
scanButton.addEventListener('click', () => {
  alert('Scan button clicked!');
  chrome.tabs.query({ active: true, currentWindow: true }, ([tab]) => {
    chrome.scripting.executeScript({
      target: { tabId: tab.id },
      func: () => {
        const element = document.querySelector('div[data-boardid="0"]');
        if (element) {
          console.log('Chessboard found....');
        } else {
          console.log('We cannot find chessboard class issue');
        }
      }
    });
  });
});
