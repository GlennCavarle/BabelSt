installing
install
	"self install"

	Transcript
		clear;
		show: 'creating directories ...';
		crShow: (self exec: 'mkdir -p ' , self nodeDirectory);
		crShow: (self exec: 'mkdir -p ' , self nodeDirectory , '/src');
		crShow: 'installing babel-core ...';
		crShow: (self exec: 'npm install babel-core' cwd: self nodeDirectory);
		crShow: 'installing babel compiler/exporter scripts ...'.
	self
		installAstCompilerFile;
		installEs6CompilerFile;
		installExporterFile