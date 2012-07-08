versions
version100: spec 
	<version: '1.0' imports: #('1.0-baseline') >
	
	spec for: #common do: [
		spec blessing: #beta.
		spec author: 'Masashi Umezawa'.
		spec 
			project: 'MessagePack Core' with: '1.0.1';
			project: 'MessagePack Test' with: '1.0.1'.
		spec 
			package: 'Stomp-Core' with: 'Stomp-Core-mu.64';
			package: 'StompTest-Core' with: 'StompTest-Core-mu.30';
			package: 'StompBench' with: 'StompBench-mu.5' ].
	spec for: #squeakCommon do: [
		spec 
			package: 'Stomp-Squeak-Core' with: 'Stomp-Squeak-Core-mu.19';
			package: 'StompTest-Squeak-Core' with: 'StompTest-Squeak-Core-mu.4'].
	spec for: #pharo do: [
		spec 
			package: 'Stomp-Pharo-Core' with: 'Stomp-Pharo-Core-mu.2'].