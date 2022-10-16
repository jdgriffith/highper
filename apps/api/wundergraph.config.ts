import {
	Application,
	configureWunderGraphApplication,
	cors,
	EnvironmentVariable,
	introspect,
	templates,
} from '@wundergraph/sdk';
import server from './wundergraph.server';
import operations from './wundergraph.operations';

const db = introspect.postgresql({
	apiNamespace: 'db',
	databaseURL: 'postgresql://highper:highper@localhost:5432/highper?schema=highper',
});

const myApplication = new Application({
	name: 'app',
	apis: [db],
});

// configureWunderGraph emits the configuration
configureWunderGraphApplication({
	application: myApplication,
	server,
	operations,
	codeGenerators: [
		{
			templates: [
				// use all the typescript react templates to generate a client
				...templates.typescript.all,
				templates.typescript.operations,
				templates.typescript.linkBuilder,
			],
		},
	],
	cors: {
		...cors.allowAll,
		allowedOrigins:
			process.env.NODE_ENV === 'production'
				? [
						// change this before deploying to production to the actual domain where you're deploying your app
						'http://localhost:3030',
				  ]
				: ['http://localhost:3030', new EnvironmentVariable('WG_ALLOWED_ORIGIN')],
	},
	dotGraphQLConfig: {
		hasDotWunderGraphDirectory: false,
	},
	security: {
		enableGraphQLEndpoint: process.env.NODE_ENV !== 'production' || process.env.GITPOD_WORKSPACE_ID !== undefined,
	},
});
