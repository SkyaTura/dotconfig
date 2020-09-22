console.log('Hello')

import('./fuse.js')

const FuseTabs = () => new Promise(
  (resolve) => chrome.tabs.query({active: false}, tabs => {
    const options = {
      keys: ["title", "url"]
    }
    const fuse = new Fuse(tabs, options)
    resolve(fuse)
  })
)

