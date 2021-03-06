versions
version182: spec 
	<version: '1.8.2' imports: #('1.8-baseline') >
	
	spec for: #common do: [
		spec blessing: #release.
		spec author: 'Masashi Umezawa'.
		spec 
			project: 'MessagePack Core' with: '1.0.3';
			project: 'MessagePack Test' with: '1.0.3'.
		spec 
			package: 'Stomp-Core' with: 'Stomp-Core-mu.66';
			package: 'StompTest-Core' with: 'StompTest-Core-mu.32';
			package: 'StompBench' with: 'StompBench-mu.5' ].
	spec for: #squeakCommon do: [
		spec 
			package: 'Stomp-Squeak-Core' with: 'Stomp-Squeak-Core-mu.19';
			package: 'StompTest-Squeak-Core' with: 'StompTest-Squeak-Core-mu.4'].
	spec for: #pharo do: [
		spec 
			package: 'Stomp-Pharo-Core' with: 'Stomp-Pharo-Core-mu.2'].