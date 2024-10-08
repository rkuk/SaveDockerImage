import {
    createClient
} from "webdav";
import {
    existsSync,
    createReadStream
} from "fs";

function push(imageName) {
    const fileName = imageName.replace(/[\/:]/g, "-");
    const client = createClient(process.env.DAV_URL, {
        username: process.env.DAV_USER,
        password: process.env.DAV_PASS
    });
    let uploadStream = client.createWriteStream(`/SSD/dockerImg/${fileName}.tar`);
    createReadStream("image.tar").pipe(uploadStream);
}

push(process.argv[2]);
