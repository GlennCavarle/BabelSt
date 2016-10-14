installing
install
	"self install"

	Transcript
		clear;
		show: 'creating directories ...';
		crShow: (self exec: 'mkdir -p ' , self nodeDirectory) output;
		crShow: (self exec: 'mkdir -p ' , self nodeDirectory , '/src') output;
		crShow: 'installing babel-core ...';
		crShow: (self exec: 'npm install babel-core' cwd: self nodeDirectory) output;
		crShow: 'installing babel compiler/exporter scripts ...'.
	self
		installAstCompilerFile;
		installEs6CompilerFile;
		installExporterFile