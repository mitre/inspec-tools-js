// Our foreign package API.

// Export all currently handled schema types
// export {ExecJSON as ExecJSON_1_0} from "./generated-parsers/exec-json";
// export {ExecJsonmin as ExecJSONMin_1_0} from "./generated-parsers/exec-jsonmin";
// export {ProfileJSON as ProfileJSON_1_0} from "./generated-parsers/profile-json";
// 
// // Export Conversion functions
// export {ConversionResult, convertFile, AnyExec, AnyProfile, AnyFullControl} from "./fileparse";
// 
// // Export types
// export { ControlStatus, Severity, ResultStatus } from "./compat-wrappers";
// 
// // Export HDF format
// export { hdfWrapControl, HDFControl } from "./compat-wrappers";
// 
// // Export nist utilities
// export * from "./nist";

const yargs = require('yargs');
import XCCDF from "./xccdf"
import "inspecjs";
import { convertFile, ConversionResult } from "inspecjs";
import { AnyExec, AnyProfile, AnyFullControl } from "inspecjs";
var fs = require('fs');

const libxml = require('libxmljs');

const argv = yargs
  .command('xccdf2inspec', 'xccdf2inspec translates an xccdf file to an inspec profile', {
    xccdf: {
      description: 'xccdf2inspec translates an xccdf file to an inspec profile',
      alias: 'x',
      type: 'string',
      demand: true
    },
    attributes: {
      alias: 'a',
      type: 'string'
    },
    format: {
      alias: 'f',
      required: false,
    },
    separate_files: {
      alias: 's',
      required: false,
      type: 'boolean'
    },
    replace_tags: {
      required: false,
      alias: 'r'
    },
    metadata: {
      required: false,
      alias: 'm'
    }
  })
  .help()
  .alias('help', 'h')
  .argv;

var xccdf: XCCDF = new XCCDF(argv.xccdf)

let result: ConversionResult;
try {
  result = convertFile(xccdf.stringify());
  // Handle as profile
  let profile = result["1_0_ProfileJson"];

  console.log(profile);
} catch (e) {
  console.error(
    `Failed to convert file ${argv.xccdf} due to error "${e}". We should display this as an error modal.`
  );
  // return
}
