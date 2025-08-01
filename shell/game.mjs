/**
 * Made with Love (Rust) and Hate (JavaScript)
 * (c) addie.sh 2025
 */
try {
	/**
	 * @typedef {Object} EngineExports
	 * @prop {Object} exports
	 * @prop {WebAssembly.Memory} exports.memory
	 * @prop {WebAssembly.Global} exports.exposedMousePosX
	 * @prop {WebAssembly.Global} exports.exposedMousePosY
	 * @prop {WebAssembly.Memory} exports.exposedMouseStatus
	 * @prop {() => 0|1} exports.engineUpdate
	 * @prop {() => void} exports.engineMain
	 * @prop {() => void} exports.engineClean
	 */

	/**
	 * @typedef {WebAssembly.Instance & EngineExports} Engine
	 */

	/**
	 * @typedef {Object} EngineAssetTexture
	 *@prop {string} path A path to the asset.
	 * @prop {"texture"} assetType
	 * @prop {boolean} tile
	 * @prop {boolean} linear
	 * @prop {HTMLImageElement|null} data
	 * @prop {WebGLTexture|null} handle
	 */

	/**
	 * @typedef {Object} EngineAssetSound
	 * @prop {string} path A path to the asset.
	 * @prop {"sound"} assetType
	 * @prop {HTMLAudioElement|null} data
	 */

	/**
	 * @typedef {EngineAssetSound|EngineAssetTexture} EngineAsset
	 */

	/** @type {boolean} */
	const DEBUG = true;
	const VIEWPORT_WIDTH = 240;
	const VIEWPORT_HEIGHT = 180;

	// noinspection SpellCheckingInspection
	console.log(
		"%c   \n%cMade with Metra",
		// TODO: optimize the project-wide logo instead of creating a subset
		"font-size:128px;background:local url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgNSAzMiAyMiI+PGRlZnM+PGxpbmVhckdyYWRpZW50IGlkPSJlIj48c3RvcCBvZmZzZXQ9IjAiIHN0eWxlPSJzdG9wLWNvbG9yOiMwYzE1MjEiLz48c3RvcCBvZmZzZXQ9IjEiIHN0eWxlPSJzdG9wLWNvbG9yOiMzNTNjNTgiLz48L2xpbmVhckdyYWRpZW50PjxsaW5lYXJHcmFkaWVudCBpZD0iZiI+PHN0b3Agb2Zmc2V0PSIwIiBzdHlsZT0ic3RvcC1jb2xvcjojZmZmO3N0b3Atb3BhY2l0eTouNyIvPjxzdG9wIG9mZnNldD0iMSIgc3R5bGU9InN0b3AtY29sb3I6I2ZmZjtzdG9wLW9wYWNpdHk6MCIvPjwvbGluZWFyR3JhZGllbnQ+PGxpbmVhckdyYWRpZW50IGlkPSJkIj48c3RvcCBvZmZzZXQ9IjAiIHN0eWxlPSJzdG9wLWNvbG9yOiMwZWZmMGUiLz48c3RvcCBvZmZzZXQ9IjEiIHN0eWxlPSJzdG9wLWNvbG9yOiM4MmZmODIiLz48L2xpbmVhckdyYWRpZW50PjxsaW5lYXJHcmFkaWVudCBpZD0iYyI+PHN0b3Agb2Zmc2V0PSIwIiBzdHlsZT0ic3RvcC1jb2xvcjojZmZjYjAwIi8+PHN0b3Agb2Zmc2V0PSIxIiBzdHlsZT0ic3RvcC1jb2xvcjojZmZlNTc1Ii8+PC9saW5lYXJHcmFkaWVudD48bGluZWFyR3JhZGllbnQgaWQ9ImIiPjxzdG9wIG9mZnNldD0iMCIgc3R5bGU9InN0b3AtY29sb3I6I2ZmMjYyNiIvPjxzdG9wIG9mZnNldD0iMSIgc3R5bGU9InN0b3AtY29sb3I6I2ZmNWM1YyIvPjwvbGluZWFyR3JhZGllbnQ+PGxpbmVhckdyYWRpZW50IGlkPSJhIj48c3RvcCBvZmZzZXQ9IjAiIHN0eWxlPSJzdG9wLWNvbG9yOiM1MjZhY2MiLz48c3RvcCBvZmZzZXQ9IjEiIHN0eWxlPSJzdG9wLWNvbG9yOiNlZGYwZmEiLz48L2xpbmVhckdyYWRpZW50PjxsaW5lYXJHcmFkaWVudCBpZD0iZyIgeDE9IjE2LjUiIHgyPSIyMC41IiB5MT0iMjciIHkyPSIzIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgaHJlZj0iI2EiLz48bGluZWFyR3JhZGllbnQgaWQ9Im4iIHgxPSI3IiB4Mj0iOC41IiB5MT0iMjQiIHkyPSIxOCIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIGhyZWY9IiNiIi8+PGxpbmVhckdyYWRpZW50IGlkPSJvIiB4MT0iMTciIHgyPSIxOC41IiB5MT0iMjQiIHkyPSIxOCIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIGhyZWY9IiNjIi8+PGxpbmVhckdyYWRpZW50IGlkPSJwIiB4MT0iMjUiIHgyPSIyNi41IiB5MT0iMjQiIHkyPSIxOCIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIGhyZWY9IiNkIi8+PGxpbmVhckdyYWRpZW50IGlkPSJoIiB4MT0iMjQuNSIgeDI9IjEyLjUiIHkxPSIyNSIgeTI9IjciIGdyYWRpZW50VW5pdHM9InVzZXJTcGFjZU9uVXNlIiBocmVmPSIjZSIvPjxsaW5lYXJHcmFkaWVudCBpZD0ibCIgeDE9IjI0LjUiIHgyPSIxMi41IiB5MT0iMjUiIHkyPSI3IiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgaHJlZj0iI2UiLz48bGluZWFyR3JhZGllbnQgaWQ9ImsiIHgxPSIyNC41IiB4Mj0iMTIuNSIgeTE9IjI1IiB5Mj0iNyIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIGhyZWY9IiNlIi8+PGxpbmVhckdyYWRpZW50IGlkPSJqIiB4MT0iMjQuNSIgeDI9IjEyLjUiIHkxPSIyNSIgeTI9IjciIGdyYWRpZW50VW5pdHM9InVzZXJTcGFjZU9uVXNlIiBocmVmPSIjZSIvPjxyYWRpYWxHcmFkaWVudCBpZD0iaSIgY3g9IjguNzkxIiBjeT0iNi4wNDgiIHI9IjEzLjY3NCIgZng9IjguNzkxIiBmeT0iNi4wNDgiIGdyYWRpZW50VHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTEuNzg2IDEuOTI0KXNjYWxlKDEuMTcwMDgpIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgaHJlZj0iI2YiLz48L2RlZnM+PHBhdGggZD0ibTMgMjQgMy41LTE0TDI1IDZjNS0xLjA4MSA2IDIgNSA2bC0zIDEyaC00bDItOGMxLTQtMy00LTQgMGwtMiA4aC00bDItOGMxLTQtMy00LTQgMGwtMiA4eiIgc3R5bGU9ImZpbGw6dXJsKCNnKTtzdHJva2U6dXJsKCNoKTtzdHJva2Utd2lkdGg6MjtwYWludC1vcmRlcjpzdHJva2UgZmlsbCBtYXJrZXJzIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtLjUgMSkiLz48cGF0aCBkPSJtMyAyNCAzLjUtMTRMMjUgNmM1LTEuMDgxIDYgMiA1IDZsLTMgMTJoLTRsMi04YzEtNC0zLTQtNCAwbC0yIDhoLTRsMi04YzEtNC0zLTQtNCAwbC0yIDh6IiBzdHlsZT0iZmlsbDp1cmwoI2kpIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtLjUgMSkiLz48cGF0aCBkPSJtNCAxOCAuNS0xaDlsLS41IDFaIiBzdHlsZT0iZmlsbDp1cmwoI2opIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtLjUgMSkiLz48cGF0aCBkPSJtMTYgMTggLjUtMWg1bC0uNSAxWiIgc3R5bGU9ImZpbGw6dXJsKCNrKSIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLS41IDEpIi8+PHBhdGggZD0ibTI0IDE4IC41LTFoNWwtLjUgMVoiIHN0eWxlPSJmaWxsOnVybCgjbCkiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0uNSAxKSIvPjxwYXRoIGQ9Im0zIDI0IDEuNS02aDhMMTEgMjRaIiBzdHlsZT0iZmlsbDp1cmwoI24pIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtLjUgMSkiLz48cGF0aCBkPSJNMTUgMjRoNGwxLjUtNmgtNHoiIHN0eWxlPSJmaWxsOnVybCgjbykiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0uNSAxKSIvPjxwYXRoIGQ9Ik0yNC41IDE4aDRMMjcgMjRoLTR6IiBzdHlsZT0iZmlsbDp1cmwoI3ApIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtLjUgMSkiLz48L3N2Zz4=') left/contain no-repeat;",
		"color:light-dark(#000,#fff);font-size:32px;font-family:Inter Display,Inter,system-ui;",
	);
	console.log(
		"%c\u00A9 addie.sh",
		"color:light-dark(#000,#fff);font-size:16px;font-family:Inter Display,Inter,system-ui;"
	);

	{
		// https://bsky.app/profile/addie.sh/post/3lqq6ixhjp22q
		let u16 = new Uint16Array([0xACAB]);
		let u8 = new Uint8Array(u16.buffer);

		switch (u8[0]) {
			case 0xAB: {
				console.info("Running on little-endian system, no corrections required");
				break;
			}
			case 0xAC:
			default: {
				// :(
				throw Error(`Unsupported endianness (0x${u8[0].toString(16)}${u8[1].toString(16)})`);
			}
		}
	}

	/** @type {HTMLCanvasElement} */
	const canvas = document.getElementById('game');
	/** @type {WebGL2RenderingContext} */
	const gl = canvas.getContext(
		'webgl2',
		{
			alpha: false,
			antialias: false,
			depth: false,
			powerPreference: "high-performance",
		}
	);

	// to prevent layout changes, because otherwise this would run after loading
	let minScale = 1;
	resize();

	/** @type {HTMLSpanElement} */
	const overlayFps = document.getElementById('overlay-fps');
	/** @type {HTMLSpanElement} */
	const overlayMspf = document.getElementById('overlay-mspf');

	const context = {
		/** @type {Engine} */
		engine: undefined,
	};

	/** @type {?Uint8Array} */
	let cachedSaveBuffer = null;
	/** @type {?string} */
	let cachedSaveString = null;
	// note to self: JS ignores null bytes
	let textDecoder = new TextDecoder();
	let textEncoder = new TextEncoder();

	// noinspection JSValidateTypes
	/** @type {Record<string, EngineAsset>} */
	const assetBank = [
		{
			assetType: 'texture',
			path: "assets/atlas.png",
			data: null,
			tile: true,
			linear: true,
		},
		{
			assetType: 'texture',
			path: "assets/interface_3x5.png",
			data: null,
			tile: false,
			linear: false,
		},
		{
			assetType: 'texture',
			path: "assets/classic_3310.png",
			data: null,
			tile: false,
			linear: false,
		},
		{
			assetType: 'texture',
			path: "assets/font.png",
			data: null,
			tile: false,
			linear: false,
		},
		{
			assetType: 'texture',
			path: "assets/atlas.png",
			data: null,
			tile: false,
			linear: false,
		},
		{
			assetType: 'texture',
			path: "assets/square.png",
			data: null,
			tile: true,
			linear: false,
		},
		{
			assetType: 'texture',
			path: "assets/checker.png",
			data: null,
			tile: true,
			linear: false,
		},
		{
			assetType: 'sound',
			path: "assets/chime-a.wav",
			data: null,
		},
	];

	const UNIT_QUAD_VERTICES = [
		-1., -1.,
		1.0, -1.,
		1.0, 1.0,
		-1., 1.0,
	];
	const UNIT_QUAD_INDICES = [
		0, 1, 2,
		0, 2, 3,
	];

	const vao = gl.createVertexArray();
	gl.bindVertexArray(vao);

	const vbo = gl.createBuffer();
	gl.bindBuffer(gl.ARRAY_BUFFER, vbo);
	gl.bufferData(
		gl.ARRAY_BUFFER,
		new Float32Array(UNIT_QUAD_VERTICES),
		gl.STATIC_DRAW
	);

	gl.enableVertexAttribArray(0);
	gl.vertexAttribPointer(
		0,
		2,
		gl.FLOAT,
		false,
		0,
		0
	);

	const ebo = gl.createBuffer();
	gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ebo);
	gl.bufferData(
		gl.ELEMENT_ARRAY_BUFFER,
		new Uint16Array(UNIT_QUAD_INDICES),
		gl.STATIC_DRAW
	);

	/**
	 * @param {0|1} shaderStage
	 * @param {string} source
	 * @returns {WebGLShader}
	 */
	function createShader(shaderStage, source) {
		let shader = gl.createShader([gl.VERTEX_SHADER, gl.FRAGMENT_SHADER][shaderStage]);
		gl.shaderSource(shader, source);
		gl.compileShader(shader);

		if (DEBUG) {
			if (!gl.getShaderParameter(shader, gl.COMPILE_STATUS)) {
				throw new Error(
					`Failed to compile ${["vertex", "fragment"][shaderStage]} shader! ${gl.getShaderInfoLog(shader)}`
				);
			}
		}

		return shader;
	}

	/**
	 * @param {WebGLShader} vertex
	 * @param {WebGLShader} fragment
	 * @returns {WebGLProgram}
	 */
	function createProgram(vertex, fragment) {
		let program = gl.createProgram();
		gl.attachShader(program, vertex);
		gl.attachShader(program, fragment);
		gl.linkProgram(program);

		if (DEBUG) {
			if (!gl.getProgramParameter(program, gl.LINK_STATUS)) {
				throw new Error(`Failed to link shader program! ${gl.getProgramInfoLog(program)}`);
			}
		}

		return program;
	}

	const {
		UNIVERSAL_MATERIAL,
		UNIVERSAL_MATERIAL_UNIFORMS,
		POST_MATERIAL,
		POST_MATERIAL_UNIFORMS,
	} = (() => {
		const universalVertex = createShader(
			0,
			document.getElementById("data-universal-vertex").innerText
		);
		const universalFragment = createShader(
			1,
			document.getElementById("data-universal-fragment").innerText
		);

		const UNIVERSAL_MATERIAL = createProgram(universalVertex, universalFragment);
		// gl.deleteShader(universalVertex);
		// gl.deleteShader(universalFragment);
		const UNIVERSAL_MATERIAL_UNIFORMS = {
			translate: gl.getUniformLocation(
				UNIVERSAL_MATERIAL,
				"translate"
			),
			sprite: gl.getUniformLocation(
				UNIVERSAL_MATERIAL,
				"sprite"
			),
			spriteTranslate: gl.getUniformLocation(
				UNIVERSAL_MATERIAL,
				"spriteTranslate"
			),
			size: gl.getUniformLocation(
				UNIVERSAL_MATERIAL,
				"size"
			),
			color: gl.getUniformLocation(
				UNIVERSAL_MATERIAL,
				"color"
			),
		};

		const postVertex = createShader(
			0,
			document.getElementById("data-post-vertex").innerText
		);
		const postFragment = createShader(
			1,
			document.getElementById("data-post-fragment").innerText
		);

		const POST_MATERIAL = createProgram(postVertex, postFragment);
		// gl.deleteShader(postVertex);
		// gl.deleteShader(postFragment);
		const POST_MATERIAL_UNIFORMS = {
			sprite: gl.getUniformLocation(
				POST_MATERIAL,
				"sprite"
			),
			viewportSize: gl.getUniformLocation(
				POST_MATERIAL,
				"viewportSize"
			),
		};

		return {
			UNIVERSAL_MATERIAL,
			UNIVERSAL_MATERIAL_UNIFORMS,
			POST_MATERIAL,
			POST_MATERIAL_UNIFORMS
		}
	})();


	const gameFramebufferTexture = gl.createTexture();
	gl.bindTexture(gl.TEXTURE_2D, gameFramebufferTexture);
	{
		gl.texImage2D(
			gl.TEXTURE_2D,
			0,
			gl.RGBA,
			VIEWPORT_WIDTH,
			VIEWPORT_HEIGHT,
			0,
			gl.RGBA,
			gl.UNSIGNED_BYTE,
			null
		);

		// set the filtering so we don't need mips
		gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MIN_FILTER, gl.NEAREST);
		gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MAG_FILTER, gl.NEAREST);
		gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_WRAP_S, gl.CLAMP_TO_EDGE);
		gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_WRAP_T, gl.CLAMP_TO_EDGE);
	}
	// Create and bind the framebuffer
	const gameFramebuffer = gl.createFramebuffer();
	gl.bindFramebuffer(gl.FRAMEBUFFER, gameFramebuffer);
	gl.framebufferTexture2D(
		gl.FRAMEBUFFER,
		gl.COLOR_ATTACHMENT0,
		gl.TEXTURE_2D,
		gameFramebufferTexture,
		0
	);

	let startTime = 0;

	// noinspection JSUnusedGlobalSymbols
	const importObject = {
		addie: {
			/**
			 * @param {1|2|3|4|5|6} level
			 * @param {number} _targetPtr
			 * @param {number} _targetLen
			 * @param {number} locationPtr
			 * @param {number} locationLen
			 * @param {number} contentPtr
			 * @param {number} contentLen
			 */
			log: function (
				level,
				_targetPtr,
				_targetLen,
				locationPtr,
				locationLen,
				contentPtr,
				contentLen,
			) {
				let levelFnMap = ['error', 'warn', 'info', 'debug', 'trace', 'error'];
				let levelStringMap = ['ERROR', 'WARNING', 'INFO', 'DEBUG', 'TRACE', 'PANIC!'];
				// currently unused
				let location = ((locationPtr && locationLen) ? textDecoder.decode(
					context.engine.exports.memory.buffer.slice(locationPtr, locationPtr + locationLen),
				) : "");
				let content = ((contentPtr && contentLen) ? textDecoder.decode(
					context.engine.exports.memory.buffer.slice(contentPtr, contentPtr + contentLen),
				).replaceAll('%', '%%') : "");
				let string = `%c[${levelStringMap[level - 1]} ${location}]%c ${content}`;
				console[levelFnMap[level - 1]](
					string,
					"font-weight:800;",
					""
				);
			},

			/**
			 * @return {number} The time (in milliseconds) since program start.
			 */
			getTime: function () {
				// TODO: stub...?
				return performance.now() - startTime;
			},

			/**
			 * @return {number}
			 */
			getRandom: function () {
				return Math.random();
			},

			/**
			 * @param {number} dataPtr The pointer to write to
			 * @param {number} dataLen
			 * @return {number} 0 on success, length required if the buffer is null/too small, u32::MAX on unknown error
			 */
			loadPersistent: function (
				dataPtr,
				// TODO: technically dataLen probably isn't necessary,
				//		 but we don't have safeguards in place if the data changes mid-transfer.
				dataLen,
			) {
				if (cachedSaveBuffer === null) {
					try {
						cachedSaveString = localStorage.getItem('addieEnginePersistent');
						if (cachedSaveString == null) {
							cachedSaveBuffer = new Uint8Array(0);
						} else {
							cachedSaveBuffer = textEncoder.encode(cachedSaveString);
						}
					} catch (err) {
						console.error("Error reading from persistent data:", err);
						return 0xFFFFFFFF;
					}
				}

				if (dataPtr === 0 || dataLen === 0) {
					return cachedSaveBuffer.byteLength;
				} else {
					// this branch should never be called if len == 0, as enforced by caller
					let view = new Uint8Array(context.engine.exports.memory.buffer, dataPtr, dataLen);
					view.set(cachedSaveBuffer, 0);
					return 0;
				}
			},

			/**
			 * @param {number} dataPtr
			 * @param {number} dataLen
			 * @returns {0|1} 1 on success or 0 otherwise.
			 */
			savePersistent: function (dataPtr, dataLen) {
				try {
					let buf = context.engine.exports.memory.buffer.slice(dataPtr, dataPtr + dataLen);
					cachedSaveString = textDecoder.decode(buf);
					localStorage.setItem('addieEnginePersistent', cachedSaveString);
					cachedSaveBuffer = new Uint8Array(buf);
					return 1;
				} catch (err) {
					console.error("Error writing to persistent data:", err);
					return 0;
				}
			},

			/**
			 * @param {number} translateX
			 * @param {number} translateY
			 * @param {number} sizeW
			 * @param {number} sizeH
			 * @param {number} spriteIndex
			 * @param {number} spriteTranslateX
			 * @param {number} spriteTranslateY
			 * @param {number} color
			 */
			draw: function (
				translateX,
				translateY,
				sizeW,
				sizeH,
				spriteIndex,
				spriteTranslateX,
				spriteTranslateY,
				color
			) {
				gl.enable(gl.BLEND);
				gl.blendFunc(gl.SRC_ALPHA, gl.ONE_MINUS_SRC_ALPHA);
				gl.bindVertexArray(vao);
				gl.bindBuffer(gl.ARRAY_BUFFER, vbo);
				gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ebo);
				gl.useProgram(UNIVERSAL_MATERIAL);
				// console.info(`size ${sizeW}x${sizeH}, translate (${translateX}, ${translateY})`);
				gl.uniform2f(UNIVERSAL_MATERIAL_UNIFORMS.spriteTranslate, spriteTranslateX, spriteTranslateY);
				gl.uniform2f(UNIVERSAL_MATERIAL_UNIFORMS.translate, translateX, translateY);
				gl.uniform2f(UNIVERSAL_MATERIAL_UNIFORMS.size, sizeW, sizeH);
				gl.uniform1i(UNIVERSAL_MATERIAL_UNIFORMS.sprite, 0);
				const r = ((color >> 24) & 0xFF) / 255;
				const g = ((color >> 16) & 0xFF) / 255;
				const b = ((color >> 8 ) & 0xFF) / 255;
				const a = ((color >> 0 ) & 0xFF) / 255;
				gl.uniform4f(UNIVERSAL_MATERIAL_UNIFORMS.color, r, g, b, a);
				gl.bindTexture(gl.TEXTURE_2D, assetBank[spriteIndex].handle);
				gl.activeTexture(gl.TEXTURE0);
				gl.drawElements(gl.TRIANGLES, 6, gl.UNSIGNED_SHORT, 0);
			},
		}
	};

	{
		console.info("Loading...");
		console.group("Loading steps");
		let bt = performance.now();
		console.info(`Loading game WASM`);
		let sourcePromise = WebAssembly.instantiateStreaming(
			fetch("game.wasm"),
			importObject
		);
		sourcePromise.then(() => {
			let delta = performance.now() - bt;
			console.info(`Loaded game WASM in ${delta}ms`);
		});

		let assetPromise = Promise.all(Object.entries(assetBank).map(
			async value => {
				let assetId = value[0];
				let assetEntry = value[1];
				let canonicalPath = "./" + assetEntry.path;
				switch (assetEntry.assetType) {
					case "sound": {
						console.info(`Loading sound file from "${canonicalPath}"`);
						let audioElement = new Audio(canonicalPath);
						audioElement.preload = "auto";
						return await new Promise((resolve, reject) => {
							audioElement.addEventListener('error', err => {
								let delta = performance.now() - bt;
								console.error(`Failed to load sound "${assetId}" from ${assetEntry.path} after ${delta}ms!`);
								reject(err);
							});
							audioElement.addEventListener('canplaythrough', () => {
								let delta = performance.now() - bt;
								console.info(`Loaded sound "${assetId}" from ${assetEntry.path} in ${delta}ms`);
								assetBank[assetId].data = audioElement;
								resolve();
							});
						});
					}
					case "texture": {
						console.info(`Loading texture from "${canonicalPath}"`);
						let imgElement = new Image();
						imgElement.src = canonicalPath;
						return await new Promise((resolve, reject) => {
							// let hasErrored = false;
							// let hasLoaded = false;
							imgElement.addEventListener('error', err => {
								let delta = performance.now() - bt;
								console.error(`Failed to load texture \"${assetId}\" from ${assetEntry.path} after ${delta}ms!`);
								reject(err);
							});
							imgElement.addEventListener('load', () => {
								let delta = performance.now() - bt;
								console.info(`Loaded texture \"${assetId}\" from ${assetEntry.path} in ${delta}ms`);
								const handle = gl.createTexture();
								gl.bindTexture(gl.TEXTURE_2D, handle);
								gl.pixelStorei(gl.UNPACK_FLIP_Y_WEBGL, true);
								gl.texImage2D(
									gl.TEXTURE_2D,
									0,
									gl.RGBA,
									imgElement.width,
									imgElement.height,
									0,
									gl.RGBA,
									gl.UNSIGNED_BYTE,
									imgElement
								);

								if (assetBank[assetId].linear !== true) {
									gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MIN_FILTER, gl.NEAREST);
									gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MAG_FILTER, gl.NEAREST);
								}
								if (assetBank[assetId].tile !== true) {
									gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_WRAP_S, gl.CLAMP_TO_EDGE);
									gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_WRAP_T, gl.CLAMP_TO_EDGE);
								}

								gl.generateMipmap(gl.TEXTURE_2D);

								assetBank[assetId].data = imgElement;
								assetBank[assetId].handle = handle;

								resolve();
							});
						});
					}
					default: {
						console.error("Invalid ");
						return null;
					}
				}
			}
		));

		// assetBank.
		// noinspection JSValidateTypes
		context.engine = (await sourcePromise).instance;
		await assetPromise;
		console.groupEnd();

		let totalDelta = performance.now() - bt;
		console.info(`Done loading! Took ${totalDelta}ms total.`);
	}

	let mousePosX = minScale * VIEWPORT_WIDTH / 2;
	let mousePosY = minScale * VIEWPORT_HEIGHT / 2;
	let mouseStatus = 0;
	{
		/** @type {Map<string, boolean>} */
		let keyState = new Map();

		canvas.addEventListener('keydown', ev => {
			// e.key
		});
		canvas.addEventListener('keyup', ev => {});

		canvas.addEventListener('pointerdown', ev => {
			mousePosX = ev.offsetX;
			mousePosY = ev.offsetY;
			if (ev.button === 0) {
				mouseStatus = 1;
			}
		});
		canvas.addEventListener('pointermove', ev => {
			mousePosX = ev.offsetX;
			mousePosY = ev.offsetY;
		});
		document.addEventListener('pointerup', ev => {
			mousePosX = ev.offsetX;
			mousePosY = ev.offsetY;
			if (ev.button === 0) {
				mouseStatus = 0;
			}
		});
	}

	let isRunning = true;

	/** @type {number[]} */
	const frametimeRingbuffer = new Array(300).fill(Infinity);
	let frametimeRingbufferIndex = 0;

	const sleep = ms => new Promise(resolve => setTimeout(resolve, ms));

	async function update() {
		let frameBegin = performance.now();

		// write to the memory

		(new Int32Array(
			context.engine.exports.memory.buffer,
			context.engine.exports.exposedMousePosX.value,
			1
		))[0] = mousePosX / minScale;
		(new Int32Array(
			context.engine.exports.memory.buffer,
			context.engine.exports.exposedMousePosY.value,
			1
		))[0] = VIEWPORT_HEIGHT - mousePosY / minScale;
		(new Uint32Array(
			context.engine.exports.memory.buffer,
			context.engine.exports.exposedMouseStatus.value,
			1
		))[0] = mouseStatus;

		gl.bindFramebuffer(gl.FRAMEBUFFER, gameFramebuffer);
		gl.viewport(0, 0, VIEWPORT_WIDTH, VIEWPORT_HEIGHT);
		gl.clearColor(0.9, 0.87, 0.81, 1);
		gl.clear(gl.COLOR_BUFFER_BIT);
		// gl.enable(gl.DEPTH_TEST);
		// gl.enable(gl.CULL_FACE);
		// gl.disable(gl.CULL_FACE);

		let res = context.engine.exports.engineUpdate();

		gl.bindFramebuffer(gl.FRAMEBUFFER, null);
		gl.viewport(0, 0, gl.canvas.width, gl.canvas.height);
		gl.bindVertexArray(vao);
		gl.bindBuffer(gl.ARRAY_BUFFER, vbo);
		gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ebo);
		gl.useProgram(POST_MATERIAL);
		gl.uniform2i(POST_MATERIAL_UNIFORMS.viewportSize, gl.canvas.width, gl.canvas.height);
		gl.uniform1i(POST_MATERIAL_UNIFORMS.sprite, 0);
		gl.bindTexture(gl.TEXTURE_2D, gameFramebufferTexture);
		gl.activeTexture(gl.TEXTURE0);
		gl.drawElements(gl.TRIANGLES, 6, gl.UNSIGNED_SHORT, 0);

		if (res === 0) {
			isRunning = false;
		}

		gl.flush();

		if (DEBUG) {
			let error = gl.getError();
			// noinspection EqualityComparisonWithCoercionJS
			if (error !== gl.NO_ERROR) {
				console.error(`Encountered WebGL error (code ${error})!`);
				return;
			}
		}

		let frameEnd = performance.now();
		let frameTime = frameEnd - frameBegin;
		frametimeRingbuffer[frametimeRingbufferIndex] = frameTime;
		frametimeRingbufferIndex = (frametimeRingbufferIndex + 1) % frametimeRingbuffer.length;

		if (isRunning) {
			let averageFrametime = frametimeRingbuffer.reduce((prev, curr) => prev + curr, 0)
				/ frametimeRingbuffer.length;
			let fps = 1000 / averageFrametime;
			if (frametimeRingbufferIndex % Math.floor(frametimeRingbuffer.length / 2) === 0) {
				overlayFps.innerText = fps.toFixed(1);
			}
			overlayMspf.innerText = frameTime.toString();
			requestAnimationFrame(update);

		} else {
			context.engine.exports.engineClean();
		}
	}

	function resize() {
		let bounds= document.body.getBoundingClientRect();
		let fw = Math.floor(bounds.width * window.devicePixelRatio / VIEWPORT_WIDTH);
		let fh = Math.floor(bounds.height * window.devicePixelRatio / VIEWPORT_HEIGHT);
		minScale = Math.min(fw, fh);
		let realW = minScale * VIEWPORT_WIDTH;
		let realH = minScale * VIEWPORT_HEIGHT;
		canvas.width = realW;
		canvas.height = realH;
	}

	window.addEventListener('resize', resize);

	startTime = performance.now();
	console.info(`Started game loop @ ${startTime}ms`);

	// initialize stuff
	context.engine.exports.engineMain();

	requestAnimationFrame(update);
} catch (
	/** @type {Error} */
	e
) {
	document.body.childNodes.forEach(n => n.remove());
	document.body.innerText = e.message;
	const overlayError = document.getElementById('error-box');
	overlayError.innerText = e.message;
}