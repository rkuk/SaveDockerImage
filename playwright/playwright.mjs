import { chromium, devices } from 'playwright';
import fs from 'fs';
import util from 'util';

(async () => {
    const browser = await chromium.launch({
        executablePath: "/usr/local/thorium/thorium",
        channel: "chromium",
        headless: true
    });
    // const browser = await chromium.connect("ws://localhost:9229/882aac6640529501b53374b8e2720a37");
    // const browser = await chromium.connectOverCDP("http://localhost:9222");
    if (browser.isConnected()) {
        util.log("browser launched");
        const context = await browser.newContext();
        const page = await context.newPage();
        await page.goto("https://www.baidu.com");
        await page.screenshot({
            path: "bd.jpg"
        });

        await browser.close();
    } else
        util.log("Connect to browser failed");
})();
