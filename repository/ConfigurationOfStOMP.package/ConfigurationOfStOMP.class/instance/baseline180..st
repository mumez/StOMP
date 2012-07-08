baselines
baseline180: spec 
	<version: '1.8-baseline'>
	spec for: #common do: [
		spec blessing: #baseline.
		spec 
			repository: 'http://www.squeaksource.com/STOMP'.
		spec
			project: 'MessagePack Core' with: [
				spec
					className: 'ConfigurationOfMessagePack'; loads: #('Core' );
					repository: 'http://www.squeaksource.com/MetacelloRepository' ].
		spec
			project: 'MessagePack Test' with: [
				spec
					className: 'ConfigurationOfMessagePack'; loads: #('Tests' );
					repository: 'http://www.squeaksource.com/MetacelloRepository' ].
		spec 
			package: 'Stomp-Core' with: [ spec requires: 'MessagePack Core' ];
			package: 'StompTest-Core' with: [ spec requires: #('MessagePack Test' 'Stomp-Core')];
			package: 'StompBench' with: [ spec requires: 'Stomp-Core' ].
		spec
			group: 'default' with: #('Core' 'Tests');
			group: 'Core' with: #('Stomp-Core');
			group: 'Tests' with: #('StompTest-Core');
			group: 'Bench' with: #('StompBench'). ].
	
	spec for: #squeakCommon do: [
		spec 
			package: 'Stomp-Squeak-Core' with: [spec requires: #('Stomp-Core') ]. 
		spec
			group: 'Core' with: #('Stomp-Squeak-Core').
		spec
			group: 'Tests' with: #('StompTest-Squeak-Core') ].
	spec for: #pharo do: [
		spec 
			package: 'Stomp-Pharo-Core' with: [ 
				spec postLoadDoIt: #squeakCommonPostLoadDoIt;
					requires: 'Stomp-Squeak-Core' ]. 
		spec
			group: 'Core' with: #('Stomp-Pharo-Core') ].
	