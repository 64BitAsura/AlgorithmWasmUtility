const path = require('path'), fs=require('fs');
const exec = require('child_process').exec;

function fromDir(startPath,filter){

    //console.log('Starting from dir '+startPath+'/');

    if (!fs.existsSync(startPath)){
        console.log("no dir ",startPath);
        return;
    }

    const files=fs.readdirSync(startPath);
    for(let i=0;i<files.length;i++){
        const filename=path.join(startPath,files[i]);
        const stat = fs.lstatSync(filename);
        if (stat.isDirectory()){
            fromDir(filename,filter); //recurse
        }
        else if (filename.indexOf(filter)===(filename.length-filter.length)) {
            console.log('-- asc: ',filename);
            exec(`asc ${filename} --target debug --config ${startPath}/asconfig.json`,(error, stdout, stderr) => {
    if (error) {
        console.log(`error: ${error.message}`);
        return;
    }
    if (stderr) {
        console.log(`stderr: ${stderr}`);
        return;
    }
    console.log(`stdout: ${stdout}`);
});
        };
    };
};

fromDir('./algorithms','.ts');