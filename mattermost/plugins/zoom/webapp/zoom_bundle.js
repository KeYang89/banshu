/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId])
/******/ 			return installedModules[moduleId].exports;
/******/
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// identity function for calling harmony imports with the correct context
/******/ 	__webpack_require__.i = function(value) { return value; };
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, {
/******/ 				configurable: false,
/******/ 				enumerable: true,
/******/ 				get: getter
/******/ 			});
/******/ 		}
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = 184);
/******/ })
/************************************************************************/
/******/ ([
/* 0 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});
exports.default = keyMirror;
/**
 * Copyright (c) 2013-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 *
 */

/**
 * Constructs an enumeration with keys equal to their value.
 *
 * For example:
 *
 *   var COLORS = keyMirror({blue: null, red: null});
 *   var myColor = COLORS.blue;
 *   var isColorValid = !!COLORS[myColor];
 *
 * The last line could not be performed if the values of the generated enum were
 * not equal to their keys.
 *
 *   Input:  {key1: val1, key2: val2}
 *   Output: {key1: key1, key2: key2}
 *
 * @param {object} obj
 * @return {object}
 */
function keyMirror(obj) {
    if (!(obj instanceof Object && !Array.isArray(obj))) {
        throw new Error('keyMirror(...): Argument must be an object.');
    }

    var ret = {};
    for (var key in obj) {
        if (!obj.hasOwnProperty(key)) {
            continue;
        }

        ret[key] = key;
    }

    return ret;
}

/***/ }),
/* 1 */
/***/ (function(module, exports) {

var core = module.exports = { version: '2.5.1' };
if (typeof __e == 'number') __e = core; // eslint-disable-line no-undef


/***/ }),
/* 2 */
/***/ (function(module, exports) {

// https://github.com/zloirock/core-js/issues/86#issuecomment-115759028
var global = module.exports = typeof window != 'undefined' && window.Math == Math
  ? window : typeof self != 'undefined' && self.Math == Math ? self
  // eslint-disable-next-line no-new-func
  : Function('return this')();
if (typeof __g == 'number') __g = global; // eslint-disable-line no-undef


/***/ }),
/* 3 */
/***/ (function(module, exports, __webpack_require__) {

var store = __webpack_require__(44)('wks');
var uid = __webpack_require__(31);
var Symbol = __webpack_require__(2).Symbol;
var USE_SYMBOL = typeof Symbol == 'function';

var $exports = module.exports = function (name) {
  return store[name] || (store[name] =
    USE_SYMBOL && Symbol[name] || (USE_SYMBOL ? Symbol : uid)('Symbol.' + name));
};

$exports.store = store;


/***/ }),
/* 4 */
/***/ (function(module, exports, __webpack_require__) {

var global = __webpack_require__(2);
var core = __webpack_require__(1);
var ctx = __webpack_require__(17);
var hide = __webpack_require__(9);
var PROTOTYPE = 'prototype';

var $export = function (type, name, source) {
  var IS_FORCED = type & $export.F;
  var IS_GLOBAL = type & $export.G;
  var IS_STATIC = type & $export.S;
  var IS_PROTO = type & $export.P;
  var IS_BIND = type & $export.B;
  var IS_WRAP = type & $export.W;
  var exports = IS_GLOBAL ? core : core[name] || (core[name] = {});
  var expProto = exports[PROTOTYPE];
  var target = IS_GLOBAL ? global : IS_STATIC ? global[name] : (global[name] || {})[PROTOTYPE];
  var key, own, out;
  if (IS_GLOBAL) source = name;
  for (key in source) {
    // contains in native
    own = !IS_FORCED && target && target[key] !== undefined;
    if (own && key in exports) continue;
    // export native or passed
    out = own ? target[key] : source[key];
    // prevent global pollution for namespaces
    exports[key] = IS_GLOBAL && typeof target[key] != 'function' ? source[key]
    // bind timers to global for call from export context
    : IS_BIND && own ? ctx(out, global)
    // wrap global constructors for prevent change them in library
    : IS_WRAP && target[key] == out ? (function (C) {
      var F = function (a, b, c) {
        if (this instanceof C) {
          switch (arguments.length) {
            case 0: return new C();
            case 1: return new C(a);
            case 2: return new C(a, b);
          } return new C(a, b, c);
        } return C.apply(this, arguments);
      };
      F[PROTOTYPE] = C[PROTOTYPE];
      return F;
    // make static versions for prototype methods
    })(out) : IS_PROTO && typeof out == 'function' ? ctx(Function.call, out) : out;
    // export proto methods to core.%CONSTRUCTOR%.methods.%NAME%
    if (IS_PROTO) {
      (exports.virtual || (exports.virtual = {}))[key] = out;
      // export proto methods to core.%CONSTRUCTOR%.prototype.%NAME%
      if (type & $export.R && expProto && !expProto[key]) hide(expProto, key, out);
    }
  }
};
// type bitmap
$export.F = 1;   // forced
$export.G = 2;   // global
$export.S = 4;   // static
$export.P = 8;   // proto
$export.B = 16;  // bind
$export.W = 32;  // wrap
$export.U = 64;  // safe
$export.R = 128; // real proto method for `library`
module.exports = $export;


/***/ }),
/* 5 */
/***/ (function(module, exports, __webpack_require__) {

var isObject = __webpack_require__(10);
module.exports = function (it) {
  if (!isObject(it)) throw TypeError(it + ' is not an object!');
  return it;
};


/***/ }),
/* 6 */
/***/ (function(module, exports, __webpack_require__) {

// Thank's IE8 for his funny defineProperty
module.exports = !__webpack_require__(12)(function () {
  return Object.defineProperty({}, 'a', { get: function () { return 7; } }).a != 7;
});


/***/ }),
/* 7 */
/***/ (function(module, exports, __webpack_require__) {

var anObject = __webpack_require__(5);
var IE8_DOM_DEFINE = __webpack_require__(59);
var toPrimitive = __webpack_require__(47);
var dP = Object.defineProperty;

exports.f = __webpack_require__(6) ? Object.defineProperty : function defineProperty(O, P, Attributes) {
  anObject(O);
  P = toPrimitive(P, true);
  anObject(Attributes);
  if (IE8_DOM_DEFINE) try {
    return dP(O, P, Attributes);
  } catch (e) { /* empty */ }
  if ('get' in Attributes || 'set' in Attributes) throw TypeError('Accessors not supported!');
  if ('value' in Attributes) O[P] = Attributes.value;
  return O;
};


/***/ }),
/* 8 */
/***/ (function(module, exports) {

var hasOwnProperty = {}.hasOwnProperty;
module.exports = function (it, key) {
  return hasOwnProperty.call(it, key);
};


/***/ }),
/* 9 */
/***/ (function(module, exports, __webpack_require__) {

var dP = __webpack_require__(7);
var createDesc = __webpack_require__(29);
module.exports = __webpack_require__(6) ? function (object, key, value) {
  return dP.f(object, key, createDesc(1, value));
} : function (object, key, value) {
  object[key] = value;
  return object;
};


/***/ }),
/* 10 */
/***/ (function(module, exports) {

module.exports = function (it) {
  return typeof it === 'object' ? it !== null : typeof it === 'function';
};


/***/ }),
/* 11 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


exports.__esModule = true;

exports.default = function (instance, Constructor) {
  if (!(instance instanceof Constructor)) {
    throw new TypeError("Cannot call a class as a function");
  }
};

/***/ }),
/* 12 */
/***/ (function(module, exports) {

module.exports = function (exec) {
  try {
    return !!exec();
  } catch (e) {
    return true;
  }
};


/***/ }),
/* 13 */
/***/ (function(module, exports, __webpack_require__) {

// to indexed object, toObject with fallback for non-array-like ES3 strings
var IObject = __webpack_require__(60);
var defined = __webpack_require__(37);
module.exports = function (it) {
  return IObject(defined(it));
};


/***/ }),
/* 14 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


exports.__esModule = true;

var _defineProperty = __webpack_require__(55);

var _defineProperty2 = _interopRequireDefault(_defineProperty);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.default = function () {
  function defineProperties(target, props) {
    for (var i = 0; i < props.length; i++) {
      var descriptor = props[i];
      descriptor.enumerable = descriptor.enumerable || false;
      descriptor.configurable = true;
      if ("value" in descriptor) descriptor.writable = true;
      (0, _defineProperty2.default)(target, descriptor.key, descriptor);
    }
  }

  return function (Constructor, protoProps, staticProps) {
    if (protoProps) defineProperties(Constructor.prototype, protoProps);
    if (staticProps) defineProperties(Constructor, staticProps);
    return Constructor;
  };
}();

/***/ }),
/* 15 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


exports.__esModule = true;

var _promise = __webpack_require__(96);

var _promise2 = _interopRequireDefault(_promise);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.default = function (fn) {
  return function () {
    var gen = fn.apply(this, arguments);
    return new _promise2.default(function (resolve, reject) {
      function step(key, arg) {
        try {
          var info = gen[key](arg);
          var value = info.value;
        } catch (error) {
          reject(error);
          return;
        }

        if (info.done) {
          resolve(value);
        } else {
          return _promise2.default.resolve(value).then(function (value) {
            step("next", value);
          }, function (err) {
            step("throw", err);
          });
        }
      }

      return step("next");
    });
  };
};

/***/ }),
/* 16 */
/***/ (function(module, exports) {

var toString = {}.toString;

module.exports = function (it) {
  return toString.call(it).slice(8, -1);
};


/***/ }),
/* 17 */
/***/ (function(module, exports, __webpack_require__) {

// optional / simple context binding
var aFunction = __webpack_require__(25);
module.exports = function (fn, that, length) {
  aFunction(fn);
  if (that === undefined) return fn;
  switch (length) {
    case 1: return function (a) {
      return fn.call(that, a);
    };
    case 2: return function (a, b) {
      return fn.call(that, a, b);
    };
    case 3: return function (a, b, c) {
      return fn.call(that, a, b, c);
    };
  }
  return function (/* ...args */) {
    return fn.apply(that, arguments);
  };
};


/***/ }),
/* 18 */
/***/ (function(module, exports) {

module.exports = {};


/***/ }),
/* 19 */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(175);


/***/ }),
/* 20 */
/***/ (function(module, exports) {

// shim for using process in browser
var process = module.exports = {};

// cached from whatever global is present so that test runners that stub it
// don't break things.  But we need to wrap it in a try catch in case it is
// wrapped in strict mode code which doesn't define any globals.  It's inside a
// function because try/catches deoptimize in certain engines.

var cachedSetTimeout;
var cachedClearTimeout;

function defaultSetTimout() {
    throw new Error('setTimeout has not been defined');
}
function defaultClearTimeout () {
    throw new Error('clearTimeout has not been defined');
}
(function () {
    try {
        if (typeof setTimeout === 'function') {
            cachedSetTimeout = setTimeout;
        } else {
            cachedSetTimeout = defaultSetTimout;
        }
    } catch (e) {
        cachedSetTimeout = defaultSetTimout;
    }
    try {
        if (typeof clearTimeout === 'function') {
            cachedClearTimeout = clearTimeout;
        } else {
            cachedClearTimeout = defaultClearTimeout;
        }
    } catch (e) {
        cachedClearTimeout = defaultClearTimeout;
    }
} ())
function runTimeout(fun) {
    if (cachedSetTimeout === setTimeout) {
        //normal enviroments in sane situations
        return setTimeout(fun, 0);
    }
    // if setTimeout wasn't available but was latter defined
    if ((cachedSetTimeout === defaultSetTimout || !cachedSetTimeout) && setTimeout) {
        cachedSetTimeout = setTimeout;
        return setTimeout(fun, 0);
    }
    try {
        // when when somebody has screwed with setTimeout but no I.E. maddness
        return cachedSetTimeout(fun, 0);
    } catch(e){
        try {
            // When we are in I.E. but the script has been evaled so I.E. doesn't trust the global object when called normally
            return cachedSetTimeout.call(null, fun, 0);
        } catch(e){
            // same as above but when it's a version of I.E. that must have the global object for 'this', hopfully our context correct otherwise it will throw a global error
            return cachedSetTimeout.call(this, fun, 0);
        }
    }


}
function runClearTimeout(marker) {
    if (cachedClearTimeout === clearTimeout) {
        //normal enviroments in sane situations
        return clearTimeout(marker);
    }
    // if clearTimeout wasn't available but was latter defined
    if ((cachedClearTimeout === defaultClearTimeout || !cachedClearTimeout) && clearTimeout) {
        cachedClearTimeout = clearTimeout;
        return clearTimeout(marker);
    }
    try {
        // when when somebody has screwed with setTimeout but no I.E. maddness
        return cachedClearTimeout(marker);
    } catch (e){
        try {
            // When we are in I.E. but the script has been evaled so I.E. doesn't  trust the global object when called normally
            return cachedClearTimeout.call(null, marker);
        } catch (e){
            // same as above but when it's a version of I.E. that must have the global object for 'this', hopfully our context correct otherwise it will throw a global error.
            // Some versions of I.E. have different rules for clearTimeout vs setTimeout
            return cachedClearTimeout.call(this, marker);
        }
    }



}
var queue = [];
var draining = false;
var currentQueue;
var queueIndex = -1;

function cleanUpNextTick() {
    if (!draining || !currentQueue) {
        return;
    }
    draining = false;
    if (currentQueue.length) {
        queue = currentQueue.concat(queue);
    } else {
        queueIndex = -1;
    }
    if (queue.length) {
        drainQueue();
    }
}

function drainQueue() {
    if (draining) {
        return;
    }
    var timeout = runTimeout(cleanUpNextTick);
    draining = true;

    var len = queue.length;
    while(len) {
        currentQueue = queue;
        queue = [];
        while (++queueIndex < len) {
            if (currentQueue) {
                currentQueue[queueIndex].run();
            }
        }
        queueIndex = -1;
        len = queue.length;
    }
    currentQueue = null;
    draining = false;
    runClearTimeout(timeout);
}

process.nextTick = function (fun) {
    var args = new Array(arguments.length - 1);
    if (arguments.length > 1) {
        for (var i = 1; i < arguments.length; i++) {
            args[i - 1] = arguments[i];
        }
    }
    queue.push(new Item(fun, args));
    if (queue.length === 1 && !draining) {
        runTimeout(drainQueue);
    }
};

// v8 likes predictible objects
function Item(fun, array) {
    this.fun = fun;
    this.array = array;
}
Item.prototype.run = function () {
    this.fun.apply(null, this.array);
};
process.title = 'browser';
process.browser = true;
process.env = {};
process.argv = [];
process.version = ''; // empty string to avoid regexp issues
process.versions = {};

function noop() {}

process.on = noop;
process.addListener = noop;
process.once = noop;
process.off = noop;
process.removeListener = noop;
process.removeAllListeners = noop;
process.emit = noop;
process.prependListener = noop;
process.prependOnceListener = noop;

process.listeners = function (name) { return [] }

process.binding = function (name) {
    throw new Error('process.binding is not supported');
};

process.cwd = function () { return '/' };
process.chdir = function (dir) {
    throw new Error('process.chdir is not supported');
};
process.umask = function() { return 0; };


/***/ }),
/* 21 */
/***/ (function(module, exports, __webpack_require__) {

module.exports = { "default": __webpack_require__(103), __esModule: true };

/***/ }),
/* 22 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


exports.__esModule = true;

var _assign = __webpack_require__(93);

var _assign2 = _interopRequireDefault(_assign);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.default = _assign2.default || function (target) {
  for (var i = 1; i < arguments.length; i++) {
    var source = arguments[i];

    for (var key in source) {
      if (Object.prototype.hasOwnProperty.call(source, key)) {
        target[key] = source[key];
      }
    }
  }

  return target;
};

/***/ }),
/* 23 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


exports.__esModule = true;

var _setPrototypeOf = __webpack_require__(95);

var _setPrototypeOf2 = _interopRequireDefault(_setPrototypeOf);

var _create = __webpack_require__(94);

var _create2 = _interopRequireDefault(_create);

var _typeof2 = __webpack_require__(56);

var _typeof3 = _interopRequireDefault(_typeof2);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.default = function (subClass, superClass) {
  if (typeof superClass !== "function" && superClass !== null) {
    throw new TypeError("Super expression must either be null or a function, not " + (typeof superClass === "undefined" ? "undefined" : (0, _typeof3.default)(superClass)));
  }

  subClass.prototype = (0, _create2.default)(superClass && superClass.prototype, {
    constructor: {
      value: subClass,
      enumerable: false,
      writable: true,
      configurable: true
    }
  });
  if (superClass) _setPrototypeOf2.default ? (0, _setPrototypeOf2.default)(subClass, superClass) : subClass.__proto__ = superClass;
};

/***/ }),
/* 24 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


exports.__esModule = true;

var _typeof2 = __webpack_require__(56);

var _typeof3 = _interopRequireDefault(_typeof2);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.default = function (self, call) {
  if (!self) {
    throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
  }

  return call && ((typeof call === "undefined" ? "undefined" : (0, _typeof3.default)(call)) === "object" || typeof call === "function") ? call : self;
};

/***/ }),
/* 25 */
/***/ (function(module, exports) {

module.exports = function (it) {
  if (typeof it != 'function') throw TypeError(it + ' is not a function!');
  return it;
};


/***/ }),
/* 26 */
/***/ (function(module, exports) {

module.exports = true;


/***/ }),
/* 27 */
/***/ (function(module, exports, __webpack_require__) {

// 19.1.2.14 / 15.2.3.14 Object.keys(O)
var $keys = __webpack_require__(65);
var enumBugKeys = __webpack_require__(39);

module.exports = Object.keys || function keys(O) {
  return $keys(O, enumBugKeys);
};


/***/ }),
/* 28 */
/***/ (function(module, exports) {

exports.f = {}.propertyIsEnumerable;


/***/ }),
/* 29 */
/***/ (function(module, exports) {

module.exports = function (bitmap, value) {
  return {
    enumerable: !(bitmap & 1),
    configurable: !(bitmap & 2),
    writable: !(bitmap & 4),
    value: value
  };
};


/***/ }),
/* 30 */
/***/ (function(module, exports, __webpack_require__) {

var def = __webpack_require__(7).f;
var has = __webpack_require__(8);
var TAG = __webpack_require__(3)('toStringTag');

module.exports = function (it, tag, stat) {
  if (it && !has(it = stat ? it : it.prototype, TAG)) def(it, TAG, { configurable: true, value: tag });
};


/***/ }),
/* 31 */
/***/ (function(module, exports) {

var id = 0;
var px = Math.random();
module.exports = function (key) {
  return 'Symbol('.concat(key === undefined ? '' : key, ')_', (++id + px).toString(36));
};


/***/ }),
/* 32 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});
exports.makeStyleFromTheme = makeStyleFromTheme;
exports.changeOpacity = changeOpacity;
// Copyright (c) 2017-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

function makeStyleFromTheme(getStyleFromTheme) {
    var lastTheme = null;
    var style = null;

    return function (theme) {
        if (theme !== lastTheme) {
            style = getStyleFromTheme(theme);
            lastTheme = theme;
        }

        return style;
    };
}

function changeOpacity(oldColor, opacity) {
    var color = oldColor;
    if (color.length && color[0] === '#') {
        color = color.slice(1);
    }

    if (color.length === 3) {
        var tempColor = color;
        color = '';

        color += tempColor[0] + tempColor[0];
        color += tempColor[1] + tempColor[1];
        color += tempColor[2] + tempColor[2];
    }

    var r = parseInt(color.substring(0, 2), 16);
    var g = parseInt(color.substring(2, 4), 16);
    var b = parseInt(color.substring(4, 6), 16);

    return 'rgba(' + r + ',' + g + ',' + b + ',' + opacity + ')';
}

/***/ }),
/* 33 */
/***/ (function(module, exports, __webpack_require__) {

/* WEBPACK VAR INJECTION */(function(process) {/**
 * Copyright 2013-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */

if (process.env.NODE_ENV !== 'production') {
  var REACT_ELEMENT_TYPE = (typeof Symbol === 'function' &&
    Symbol.for &&
    Symbol.for('react.element')) ||
    0xeac7;

  var isValidElement = function(object) {
    return typeof object === 'object' &&
      object !== null &&
      object.$$typeof === REACT_ELEMENT_TYPE;
  };

  // By explicitly using `prop-types` you are opting into new development behavior.
  // http://fb.me/prop-types-in-prod
  var throwOnDirectAccess = true;
  module.exports = __webpack_require__(174)(isValidElement, throwOnDirectAccess);
} else {
  // By explicitly using `prop-types` you are opting into new production behavior.
  // http://fb.me/prop-types-in-prod
  module.exports = __webpack_require__(173)();
}

/* WEBPACK VAR INJECTION */}.call(exports, __webpack_require__(20)))

/***/ }),
/* 34 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


exports.__esModule = true;
exports.defaultMemoize = defaultMemoize;
exports.createSelectorCreator = createSelectorCreator;
exports.createStructuredSelector = createStructuredSelector;
function defaultEqualityCheck(a, b) {
  return a === b;
}

function areArgumentsShallowlyEqual(equalityCheck, prev, next) {
  if (prev === null || next === null || prev.length !== next.length) {
    return false;
  }

  // Do this in a for loop (and not a `forEach` or an `every`) so we can determine equality as fast as possible.
  var length = prev.length;
  for (var i = 0; i < length; i++) {
    if (!equalityCheck(prev[i], next[i])) {
      return false;
    }
  }

  return true;
}

function defaultMemoize(func) {
  var equalityCheck = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : defaultEqualityCheck;

  var lastArgs = null;
  var lastResult = null;
  // we reference arguments instead of spreading them for performance reasons
  return function () {
    if (!areArgumentsShallowlyEqual(equalityCheck, lastArgs, arguments)) {
      // apply arguments instead of spreading for performance.
      lastResult = func.apply(null, arguments);
    }

    lastArgs = arguments;
    return lastResult;
  };
}

function getDependencies(funcs) {
  var dependencies = Array.isArray(funcs[0]) ? funcs[0] : funcs;

  if (!dependencies.every(function (dep) {
    return typeof dep === 'function';
  })) {
    var dependencyTypes = dependencies.map(function (dep) {
      return typeof dep;
    }).join(', ');
    throw new Error('Selector creators expect all input-selectors to be functions, ' + ('instead received the following types: [' + dependencyTypes + ']'));
  }

  return dependencies;
}

function createSelectorCreator(memoize) {
  for (var _len = arguments.length, memoizeOptions = Array(_len > 1 ? _len - 1 : 0), _key = 1; _key < _len; _key++) {
    memoizeOptions[_key - 1] = arguments[_key];
  }

  return function () {
    for (var _len2 = arguments.length, funcs = Array(_len2), _key2 = 0; _key2 < _len2; _key2++) {
      funcs[_key2] = arguments[_key2];
    }

    var recomputations = 0;
    var resultFunc = funcs.pop();
    var dependencies = getDependencies(funcs);

    var memoizedResultFunc = memoize.apply(undefined, [function () {
      recomputations++;
      // apply arguments instead of spreading for performance.
      return resultFunc.apply(null, arguments);
    }].concat(memoizeOptions));

    // If a selector is called with the exact same arguments we don't need to traverse our dependencies again.
    var selector = defaultMemoize(function () {
      var params = [];
      var length = dependencies.length;

      for (var i = 0; i < length; i++) {
        // apply arguments instead of spreading and mutate a local list of params for performance.
        params.push(dependencies[i].apply(null, arguments));
      }

      // apply arguments instead of spreading for performance.
      return memoizedResultFunc.apply(null, params);
    });

    selector.resultFunc = resultFunc;
    selector.recomputations = function () {
      return recomputations;
    };
    selector.resetRecomputations = function () {
      return recomputations = 0;
    };
    return selector;
  };
}

var createSelector = exports.createSelector = createSelectorCreator(defaultMemoize);

function createStructuredSelector(selectors) {
  var selectorCreator = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : createSelector;

  if (typeof selectors !== 'object') {
    throw new Error('createStructuredSelector expects first argument to be an object ' + ('where each property is a selector, instead received a ' + typeof selectors));
  }
  var objectKeys = Object.keys(selectors);
  return selectorCreator(objectKeys.map(function (key) {
    return selectors[key];
  }), function () {
    for (var _len3 = arguments.length, values = Array(_len3), _key3 = 0; _key3 < _len3; _key3++) {
      values[_key3] = arguments[_key3];
    }

    return values.reduce(function (composition, value, index) {
      composition[objectKeys[index]] = value;
      return composition;
    }, {});
  });
}

/***/ }),
/* 35 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_babel_runtime_regenerator__ = __webpack_require__(19);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_babel_runtime_regenerator___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_babel_runtime_regenerator__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_defineProperty__ = __webpack_require__(99);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_defineProperty___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_defineProperty__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_babel_runtime_helpers_asyncToGenerator__ = __webpack_require__(15);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_babel_runtime_helpers_asyncToGenerator___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2_babel_runtime_helpers_asyncToGenerator__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_mattermost_redux_action_types__ = __webpack_require__(152);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_mattermost_redux_action_types___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_3_mattermost_redux_action_types__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__client__ = __webpack_require__(85);
/* harmony export (immutable) */ __webpack_exports__["a"] = startMeeting;







function startMeeting(channelId) {
    var personal = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : false;

    var _this = this;

    var topic = arguments.length > 2 && arguments[2] !== undefined ? arguments[2] : '';
    var meetingId = arguments.length > 3 && arguments[3] !== undefined ? arguments[3] : 0;

    return function () {
        var _ref = __WEBPACK_IMPORTED_MODULE_2_babel_runtime_helpers_asyncToGenerator___default()( /*#__PURE__*/__WEBPACK_IMPORTED_MODULE_0_babel_runtime_regenerator___default.a.mark(function _callee(dispatch, getState) {
            var post;
            return __WEBPACK_IMPORTED_MODULE_0_babel_runtime_regenerator___default.a.wrap(function _callee$(_context) {
                while (1) {
                    switch (_context.prev = _context.next) {
                        case 0:
                            _context.prev = 0;
                            _context.next = 3;
                            return __WEBPACK_IMPORTED_MODULE_4__client__["a" /* default */].startMeeting(channelId, personal, topic, meetingId);

                        case 3:
                            _context.next = 10;
                            break;

                        case 5:
                            _context.prev = 5;
                            _context.t0 = _context['catch'](0);
                            post = {
                                id: 'zoomPlugin' + Date.now(),
                                create_at: Date.now(),
                                update_at: 0,
                                edit_at: 0,
                                delete_at: 0,
                                is_pinned: false,
                                user_id: getState().entities.users.currentUserId,
                                channel_id: channelId,
                                root_id: '',
                                parent_id: '',
                                original_id: '',
                                message: 'We could not verify your Mattermost account in Zoom. Please ensure that your Mattermost email address matches your Zoom email address.',
                                type: 'system_ephemeral',
                                props: {},
                                hashtags: '',
                                pending_post_id: ''
                            };


                            dispatch({
                                type: __WEBPACK_IMPORTED_MODULE_3_mattermost_redux_action_types__["PostTypes"].RECEIVED_POSTS,
                                data: {
                                    order: [],
                                    posts: __WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_defineProperty___default()({}, post.id, post)
                                },
                                channelId: channelId
                            });

                            return _context.abrupt('return', { error: _context.t0 });

                        case 10:
                            return _context.abrupt('return', { data: true });

                        case 11:
                        case 'end':
                            return _context.stop();
                    }
                }
            }, _callee, _this, [[0, 5]]);
        }));

        return function (_x4, _x5) {
            return _ref.apply(this, arguments);
        };
    }();
}

/***/ }),
/* 36 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__svgs_js__ = __webpack_require__(90);
/* harmony reexport (binding) */ __webpack_require__.d(__webpack_exports__, "a", function() { return __WEBPACK_IMPORTED_MODULE_0__svgs_js__["a"]; });




/***/ }),
/* 37 */
/***/ (function(module, exports) {

// 7.2.1 RequireObjectCoercible(argument)
module.exports = function (it) {
  if (it == undefined) throw TypeError("Can't call method on  " + it);
  return it;
};


/***/ }),
/* 38 */
/***/ (function(module, exports, __webpack_require__) {

var isObject = __webpack_require__(10);
var document = __webpack_require__(2).document;
// typeof document.createElement is 'object' in old IE
var is = isObject(document) && isObject(document.createElement);
module.exports = function (it) {
  return is ? document.createElement(it) : {};
};


/***/ }),
/* 39 */
/***/ (function(module, exports) {

// IE 8- don't enum bug keys
module.exports = (
  'constructor,hasOwnProperty,isPrototypeOf,propertyIsEnumerable,toLocaleString,toString,valueOf'
).split(',');


/***/ }),
/* 40 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

// 25.4.1.5 NewPromiseCapability(C)
var aFunction = __webpack_require__(25);

function PromiseCapability(C) {
  var resolve, reject;
  this.promise = new C(function ($$resolve, $$reject) {
    if (resolve !== undefined || reject !== undefined) throw TypeError('Bad Promise constructor');
    resolve = $$resolve;
    reject = $$reject;
  });
  this.resolve = aFunction(resolve);
  this.reject = aFunction(reject);
}

module.exports.f = function (C) {
  return new PromiseCapability(C);
};


/***/ }),
/* 41 */
/***/ (function(module, exports, __webpack_require__) {

// 19.1.2.2 / 15.2.3.5 Object.create(O [, Properties])
var anObject = __webpack_require__(5);
var dPs = __webpack_require__(123);
var enumBugKeys = __webpack_require__(39);
var IE_PROTO = __webpack_require__(43)('IE_PROTO');
var Empty = function () { /* empty */ };
var PROTOTYPE = 'prototype';

// Create object with fake `null` prototype: use iframe Object with cleared prototype
var createDict = function () {
  // Thrash, waste and sodomy: IE GC bug
  var iframe = __webpack_require__(38)('iframe');
  var i = enumBugKeys.length;
  var lt = '<';
  var gt = '>';
  var iframeDocument;
  iframe.style.display = 'none';
  __webpack_require__(58).appendChild(iframe);
  iframe.src = 'javascript:'; // eslint-disable-line no-script-url
  // createDict = iframe.contentWindow.Object;
  // html.removeChild(iframe);
  iframeDocument = iframe.contentWindow.document;
  iframeDocument.open();
  iframeDocument.write(lt + 'script' + gt + 'document.F=Object' + lt + '/script' + gt);
  iframeDocument.close();
  createDict = iframeDocument.F;
  while (i--) delete createDict[PROTOTYPE][enumBugKeys[i]];
  return createDict();
};

module.exports = Object.create || function create(O, Properties) {
  var result;
  if (O !== null) {
    Empty[PROTOTYPE] = anObject(O);
    result = new Empty();
    Empty[PROTOTYPE] = null;
    // add "__proto__" for Object.getPrototypeOf polyfill
    result[IE_PROTO] = O;
  } else result = createDict();
  return Properties === undefined ? result : dPs(result, Properties);
};


/***/ }),
/* 42 */
/***/ (function(module, exports) {

exports.f = Object.getOwnPropertySymbols;


/***/ }),
/* 43 */
/***/ (function(module, exports, __webpack_require__) {

var shared = __webpack_require__(44)('keys');
var uid = __webpack_require__(31);
module.exports = function (key) {
  return shared[key] || (shared[key] = uid(key));
};


/***/ }),
/* 44 */
/***/ (function(module, exports, __webpack_require__) {

var global = __webpack_require__(2);
var SHARED = '__core-js_shared__';
var store = global[SHARED] || (global[SHARED] = {});
module.exports = function (key) {
  return store[key] || (store[key] = {});
};


/***/ }),
/* 45 */
/***/ (function(module, exports) {

// 7.1.4 ToInteger
var ceil = Math.ceil;
var floor = Math.floor;
module.exports = function (it) {
  return isNaN(it = +it) ? 0 : (it > 0 ? floor : ceil)(it);
};


/***/ }),
/* 46 */
/***/ (function(module, exports, __webpack_require__) {

// 7.1.13 ToObject(argument)
var defined = __webpack_require__(37);
module.exports = function (it) {
  return Object(defined(it));
};


/***/ }),
/* 47 */
/***/ (function(module, exports, __webpack_require__) {

// 7.1.1 ToPrimitive(input [, PreferredType])
var isObject = __webpack_require__(10);
// instead of the ES6 spec version, we didn't implement @@toPrimitive case
// and the second argument - flag - preferred type is a string
module.exports = function (it, S) {
  if (!isObject(it)) return it;
  var fn, val;
  if (S && typeof (fn = it.toString) == 'function' && !isObject(val = fn.call(it))) return val;
  if (typeof (fn = it.valueOf) == 'function' && !isObject(val = fn.call(it))) return val;
  if (!S && typeof (fn = it.toString) == 'function' && !isObject(val = fn.call(it))) return val;
  throw TypeError("Can't convert object to primitive value");
};


/***/ }),
/* 48 */
/***/ (function(module, exports, __webpack_require__) {

var global = __webpack_require__(2);
var core = __webpack_require__(1);
var LIBRARY = __webpack_require__(26);
var wksExt = __webpack_require__(49);
var defineProperty = __webpack_require__(7).f;
module.exports = function (name) {
  var $Symbol = core.Symbol || (core.Symbol = LIBRARY ? {} : global.Symbol || {});
  if (name.charAt(0) != '_' && !(name in $Symbol)) defineProperty($Symbol, name, { value: wksExt.f(name) });
};


/***/ }),
/* 49 */
/***/ (function(module, exports, __webpack_require__) {

exports.f = __webpack_require__(3);


/***/ }),
/* 50 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


/**
 * Copyright (c) 2013-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * 
 */

function makeEmptyFunction(arg) {
  return function () {
    return arg;
  };
}

/**
 * This function accepts and discards inputs; it has no side effects. This is
 * primarily useful idiomatically for overridable function endpoints which
 * always need to be callable, since JS lacks a null-call idiom ala Cocoa.
 */
var emptyFunction = function emptyFunction() {};

emptyFunction.thatReturns = makeEmptyFunction;
emptyFunction.thatReturnsFalse = makeEmptyFunction(false);
emptyFunction.thatReturnsTrue = makeEmptyFunction(true);
emptyFunction.thatReturnsNull = makeEmptyFunction(null);
emptyFunction.thatReturnsThis = function () {
  return this;
};
emptyFunction.thatReturnsArgument = function (arg) {
  return arg;
};

module.exports = emptyFunction;

/***/ }),
/* 51 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";
/* WEBPACK VAR INJECTION */(function(process) {/**
 * Copyright (c) 2013-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 */



/**
 * Use invariant() to assert state which your program assumes to be true.
 *
 * Provide sprintf-style format (only %s is supported) and arguments
 * to provide information about what broke and what you were
 * expecting.
 *
 * The invariant message will be stripped in production, but the invariant
 * will remain to ensure logic does not differ in production.
 */

var validateFormat = function validateFormat(format) {};

if (process.env.NODE_ENV !== 'production') {
  validateFormat = function validateFormat(format) {
    if (format === undefined) {
      throw new Error('invariant requires an error message argument');
    }
  };
}

function invariant(condition, format, a, b, c, d, e, f) {
  validateFormat(format);

  if (!condition) {
    var error;
    if (format === undefined) {
      error = new Error('Minified exception occurred; use the non-minified dev environment ' + 'for the full error message and additional helpful warnings.');
    } else {
      var args = [a, b, c, d, e, f];
      var argIndex = 0;
      error = new Error(format.replace(/%s/g, function () {
        return args[argIndex++];
      }));
      error.name = 'Invariant Violation';
    }

    error.framesToPop = 1; // we don't care about invariant's own frame
    throw error;
  }
}

module.exports = invariant;
/* WEBPACK VAR INJECTION */}.call(exports, __webpack_require__(20)))

/***/ }),
/* 52 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";
/**
 * Copyright 2013-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */



var ReactPropTypesSecret = 'SECRET_DO_NOT_PASS_THIS_OR_YOU_WILL_BE_FIRED';

module.exports = ReactPropTypesSecret;


/***/ }),
/* 53 */
/***/ (function(module, exports) {

/**
 * Check if `obj` is an object.
 *
 * @param {Object} obj
 * @return {Boolean}
 * @api private
 */

function isObject(obj) {
  return null !== obj && 'object' === typeof obj;
}

module.exports = isObject;


/***/ }),
/* 54 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__actions__ = __webpack_require__(35);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__share_meeting_modal_jsx__ = __webpack_require__(89);
var connect = window['react-redux'].connect;
var bindActionCreators = window.redux.bindActionCreators;






function mapStateToProps(state, ownProps) {
    return ownProps;
}

function mapDispatchToProps(dispatch) {
    return {
        actions: bindActionCreators({
            startMeeting: __WEBPACK_IMPORTED_MODULE_0__actions__["a" /* startMeeting */]
        }, dispatch)
    };
}

/* harmony default export */ __webpack_exports__["a"] = connect(mapStateToProps, mapDispatchToProps)(__WEBPACK_IMPORTED_MODULE_1__share_meeting_modal_jsx__["a" /* default */]);

/***/ }),
/* 55 */
/***/ (function(module, exports, __webpack_require__) {

module.exports = { "default": __webpack_require__(102), __esModule: true };

/***/ }),
/* 56 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


exports.__esModule = true;

var _iterator = __webpack_require__(98);

var _iterator2 = _interopRequireDefault(_iterator);

var _symbol = __webpack_require__(97);

var _symbol2 = _interopRequireDefault(_symbol);

var _typeof = typeof _symbol2.default === "function" && typeof _iterator2.default === "symbol" ? function (obj) { return typeof obj; } : function (obj) { return obj && typeof _symbol2.default === "function" && obj.constructor === _symbol2.default && obj !== _symbol2.default.prototype ? "symbol" : typeof obj; };

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.default = typeof _symbol2.default === "function" && _typeof(_iterator2.default) === "symbol" ? function (obj) {
  return typeof obj === "undefined" ? "undefined" : _typeof(obj);
} : function (obj) {
  return obj && typeof _symbol2.default === "function" && obj.constructor === _symbol2.default && obj !== _symbol2.default.prototype ? "symbol" : typeof obj === "undefined" ? "undefined" : _typeof(obj);
};

/***/ }),
/* 57 */
/***/ (function(module, exports, __webpack_require__) {

// getting tag from 19.1.3.6 Object.prototype.toString()
var cof = __webpack_require__(16);
var TAG = __webpack_require__(3)('toStringTag');
// ES3 wrong here
var ARG = cof(function () { return arguments; }()) == 'Arguments';

// fallback for IE11 Script Access Denied error
var tryGet = function (it, key) {
  try {
    return it[key];
  } catch (e) { /* empty */ }
};

module.exports = function (it) {
  var O, T, B;
  return it === undefined ? 'Undefined' : it === null ? 'Null'
    // @@toStringTag case
    : typeof (T = tryGet(O = Object(it), TAG)) == 'string' ? T
    // builtinTag case
    : ARG ? cof(O)
    // ES3 arguments fallback
    : (B = cof(O)) == 'Object' && typeof O.callee == 'function' ? 'Arguments' : B;
};


/***/ }),
/* 58 */
/***/ (function(module, exports, __webpack_require__) {

var document = __webpack_require__(2).document;
module.exports = document && document.documentElement;


/***/ }),
/* 59 */
/***/ (function(module, exports, __webpack_require__) {

module.exports = !__webpack_require__(6) && !__webpack_require__(12)(function () {
  return Object.defineProperty(__webpack_require__(38)('div'), 'a', { get: function () { return 7; } }).a != 7;
});


/***/ }),
/* 60 */
/***/ (function(module, exports, __webpack_require__) {

// fallback for non-array-like ES3 and non-enumerable old V8 strings
var cof = __webpack_require__(16);
// eslint-disable-next-line no-prototype-builtins
module.exports = Object('z').propertyIsEnumerable(0) ? Object : function (it) {
  return cof(it) == 'String' ? it.split('') : Object(it);
};


/***/ }),
/* 61 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

var LIBRARY = __webpack_require__(26);
var $export = __webpack_require__(4);
var redefine = __webpack_require__(68);
var hide = __webpack_require__(9);
var has = __webpack_require__(8);
var Iterators = __webpack_require__(18);
var $iterCreate = __webpack_require__(117);
var setToStringTag = __webpack_require__(30);
var getPrototypeOf = __webpack_require__(64);
var ITERATOR = __webpack_require__(3)('iterator');
var BUGGY = !([].keys && 'next' in [].keys()); // Safari has buggy iterators w/o `next`
var FF_ITERATOR = '@@iterator';
var KEYS = 'keys';
var VALUES = 'values';

var returnThis = function () { return this; };

module.exports = function (Base, NAME, Constructor, next, DEFAULT, IS_SET, FORCED) {
  $iterCreate(Constructor, NAME, next);
  var getMethod = function (kind) {
    if (!BUGGY && kind in proto) return proto[kind];
    switch (kind) {
      case KEYS: return function keys() { return new Constructor(this, kind); };
      case VALUES: return function values() { return new Constructor(this, kind); };
    } return function entries() { return new Constructor(this, kind); };
  };
  var TAG = NAME + ' Iterator';
  var DEF_VALUES = DEFAULT == VALUES;
  var VALUES_BUG = false;
  var proto = Base.prototype;
  var $native = proto[ITERATOR] || proto[FF_ITERATOR] || DEFAULT && proto[DEFAULT];
  var $default = $native || getMethod(DEFAULT);
  var $entries = DEFAULT ? !DEF_VALUES ? $default : getMethod('entries') : undefined;
  var $anyNative = NAME == 'Array' ? proto.entries || $native : $native;
  var methods, key, IteratorPrototype;
  // Fix native
  if ($anyNative) {
    IteratorPrototype = getPrototypeOf($anyNative.call(new Base()));
    if (IteratorPrototype !== Object.prototype && IteratorPrototype.next) {
      // Set @@toStringTag to native iterators
      setToStringTag(IteratorPrototype, TAG, true);
      // fix for some old engines
      if (!LIBRARY && !has(IteratorPrototype, ITERATOR)) hide(IteratorPrototype, ITERATOR, returnThis);
    }
  }
  // fix Array#{values, @@iterator}.name in V8 / FF
  if (DEF_VALUES && $native && $native.name !== VALUES) {
    VALUES_BUG = true;
    $default = function values() { return $native.call(this); };
  }
  // Define iterator
  if ((!LIBRARY || FORCED) && (BUGGY || VALUES_BUG || !proto[ITERATOR])) {
    hide(proto, ITERATOR, $default);
  }
  // Plug for library
  Iterators[NAME] = $default;
  Iterators[TAG] = returnThis;
  if (DEFAULT) {
    methods = {
      values: DEF_VALUES ? $default : getMethod(VALUES),
      keys: IS_SET ? $default : getMethod(KEYS),
      entries: $entries
    };
    if (FORCED) for (key in methods) {
      if (!(key in proto)) redefine(proto, key, methods[key]);
    } else $export($export.P + $export.F * (BUGGY || VALUES_BUG), NAME, methods);
  }
  return methods;
};


/***/ }),
/* 62 */
/***/ (function(module, exports, __webpack_require__) {

var pIE = __webpack_require__(28);
var createDesc = __webpack_require__(29);
var toIObject = __webpack_require__(13);
var toPrimitive = __webpack_require__(47);
var has = __webpack_require__(8);
var IE8_DOM_DEFINE = __webpack_require__(59);
var gOPD = Object.getOwnPropertyDescriptor;

exports.f = __webpack_require__(6) ? gOPD : function getOwnPropertyDescriptor(O, P) {
  O = toIObject(O);
  P = toPrimitive(P, true);
  if (IE8_DOM_DEFINE) try {
    return gOPD(O, P);
  } catch (e) { /* empty */ }
  if (has(O, P)) return createDesc(!pIE.f.call(O, P), O[P]);
};


/***/ }),
/* 63 */
/***/ (function(module, exports, __webpack_require__) {

// 19.1.2.7 / 15.2.3.4 Object.getOwnPropertyNames(O)
var $keys = __webpack_require__(65);
var hiddenKeys = __webpack_require__(39).concat('length', 'prototype');

exports.f = Object.getOwnPropertyNames || function getOwnPropertyNames(O) {
  return $keys(O, hiddenKeys);
};


/***/ }),
/* 64 */
/***/ (function(module, exports, __webpack_require__) {

// 19.1.2.9 / 15.2.3.2 Object.getPrototypeOf(O)
var has = __webpack_require__(8);
var toObject = __webpack_require__(46);
var IE_PROTO = __webpack_require__(43)('IE_PROTO');
var ObjectProto = Object.prototype;

module.exports = Object.getPrototypeOf || function (O) {
  O = toObject(O);
  if (has(O, IE_PROTO)) return O[IE_PROTO];
  if (typeof O.constructor == 'function' && O instanceof O.constructor) {
    return O.constructor.prototype;
  } return O instanceof Object ? ObjectProto : null;
};


/***/ }),
/* 65 */
/***/ (function(module, exports, __webpack_require__) {

var has = __webpack_require__(8);
var toIObject = __webpack_require__(13);
var arrayIndexOf = __webpack_require__(110)(false);
var IE_PROTO = __webpack_require__(43)('IE_PROTO');

module.exports = function (object, names) {
  var O = toIObject(object);
  var i = 0;
  var result = [];
  var key;
  for (key in O) if (key != IE_PROTO) has(O, key) && result.push(key);
  // Don't enum bug & hidden keys
  while (names.length > i) if (has(O, key = names[i++])) {
    ~arrayIndexOf(result, key) || result.push(key);
  }
  return result;
};


/***/ }),
/* 66 */
/***/ (function(module, exports) {

module.exports = function (exec) {
  try {
    return { e: false, v: exec() };
  } catch (e) {
    return { e: true, v: e };
  }
};


/***/ }),
/* 67 */
/***/ (function(module, exports, __webpack_require__) {

var anObject = __webpack_require__(5);
var isObject = __webpack_require__(10);
var newPromiseCapability = __webpack_require__(40);

module.exports = function (C, x) {
  anObject(C);
  if (isObject(x) && x.constructor === C) return x;
  var promiseCapability = newPromiseCapability.f(C);
  var resolve = promiseCapability.resolve;
  resolve(x);
  return promiseCapability.promise;
};


/***/ }),
/* 68 */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(9);


/***/ }),
/* 69 */
/***/ (function(module, exports, __webpack_require__) {

// 7.3.20 SpeciesConstructor(O, defaultConstructor)
var anObject = __webpack_require__(5);
var aFunction = __webpack_require__(25);
var SPECIES = __webpack_require__(3)('species');
module.exports = function (O, D) {
  var C = anObject(O).constructor;
  var S;
  return C === undefined || (S = anObject(C)[SPECIES]) == undefined ? D : aFunction(S);
};


/***/ }),
/* 70 */
/***/ (function(module, exports, __webpack_require__) {

var ctx = __webpack_require__(17);
var invoke = __webpack_require__(113);
var html = __webpack_require__(58);
var cel = __webpack_require__(38);
var global = __webpack_require__(2);
var process = global.process;
var setTask = global.setImmediate;
var clearTask = global.clearImmediate;
var MessageChannel = global.MessageChannel;
var Dispatch = global.Dispatch;
var counter = 0;
var queue = {};
var ONREADYSTATECHANGE = 'onreadystatechange';
var defer, channel, port;
var run = function () {
  var id = +this;
  // eslint-disable-next-line no-prototype-builtins
  if (queue.hasOwnProperty(id)) {
    var fn = queue[id];
    delete queue[id];
    fn();
  }
};
var listener = function (event) {
  run.call(event.data);
};
// Node.js 0.9+ & IE10+ has setImmediate, otherwise:
if (!setTask || !clearTask) {
  setTask = function setImmediate(fn) {
    var args = [];
    var i = 1;
    while (arguments.length > i) args.push(arguments[i++]);
    queue[++counter] = function () {
      // eslint-disable-next-line no-new-func
      invoke(typeof fn == 'function' ? fn : Function(fn), args);
    };
    defer(counter);
    return counter;
  };
  clearTask = function clearImmediate(id) {
    delete queue[id];
  };
  // Node.js 0.8-
  if (__webpack_require__(16)(process) == 'process') {
    defer = function (id) {
      process.nextTick(ctx(run, id, 1));
    };
  // Sphere (JS game engine) Dispatch API
  } else if (Dispatch && Dispatch.now) {
    defer = function (id) {
      Dispatch.now(ctx(run, id, 1));
    };
  // Browsers with MessageChannel, includes WebWorkers
  } else if (MessageChannel) {
    channel = new MessageChannel();
    port = channel.port2;
    channel.port1.onmessage = listener;
    defer = ctx(port.postMessage, port, 1);
  // Browsers with postMessage, skip WebWorkers
  // IE8 has postMessage, but it's sync & typeof its postMessage is 'object'
  } else if (global.addEventListener && typeof postMessage == 'function' && !global.importScripts) {
    defer = function (id) {
      global.postMessage(id + '', '*');
    };
    global.addEventListener('message', listener, false);
  // IE8-
  } else if (ONREADYSTATECHANGE in cel('script')) {
    defer = function (id) {
      html.appendChild(cel('script'))[ONREADYSTATECHANGE] = function () {
        html.removeChild(this);
        run.call(id);
      };
    };
  // Rest old browsers
  } else {
    defer = function (id) {
      setTimeout(ctx(run, id, 1), 0);
    };
  }
}
module.exports = {
  set: setTask,
  clear: clearTask
};


/***/ }),
/* 71 */
/***/ (function(module, exports, __webpack_require__) {

// 7.1.15 ToLength
var toInteger = __webpack_require__(45);
var min = Math.min;
module.exports = function (it) {
  return it > 0 ? min(toInteger(it), 0x1fffffffffffff) : 0; // pow(2, 53) - 1 == 9007199254740991
};


/***/ }),
/* 72 */
/***/ (function(module, exports) {



/***/ }),
/* 73 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

var $at = __webpack_require__(129)(true);

// 21.1.3.27 String.prototype[@@iterator]()
__webpack_require__(61)(String, 'String', function (iterated) {
  this._t = String(iterated); // target
  this._i = 0;                // next index
// 21.1.5.2.1 %StringIteratorPrototype%.next()
}, function () {
  var O = this._t;
  var index = this._i;
  var point;
  if (index >= O.length) return { value: undefined, done: true };
  point = $at(O, index);
  this._i += point.length;
  return { value: point, done: false };
});


/***/ }),
/* 74 */
/***/ (function(module, exports, __webpack_require__) {

__webpack_require__(132);
var global = __webpack_require__(2);
var hide = __webpack_require__(9);
var Iterators = __webpack_require__(18);
var TO_STRING_TAG = __webpack_require__(3)('toStringTag');

var DOMIterables = ('CSSRuleList,CSSStyleDeclaration,CSSValueList,ClientRectList,DOMRectList,DOMStringList,' +
  'DOMTokenList,DataTransferItemList,FileList,HTMLAllCollection,HTMLCollection,HTMLFormElement,HTMLSelectElement,' +
  'MediaList,MimeTypeArray,NamedNodeMap,NodeList,PaintRequestList,Plugin,PluginArray,SVGLengthList,SVGNumberList,' +
  'SVGPathSegList,SVGPointList,SVGStringList,SVGTransformList,SourceBufferList,StyleSheetList,TextTrackCueList,' +
  'TextTrackList,TouchList').split(',');

for (var i = 0; i < DOMIterables.length; i++) {
  var NAME = DOMIterables[i];
  var Collection = global[NAME];
  var proto = Collection && Collection.prototype;
  if (proto && !proto[TO_STRING_TAG]) hide(proto, TO_STRING_TAG, NAME);
  Iterators[NAME] = Iterators.Array;
}


/***/ }),
/* 75 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";
/* WEBPACK VAR INJECTION */(function(process) {/**
 * Copyright (c) 2014-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 */



var emptyFunction = __webpack_require__(50);

/**
 * Similar to invariant but only logs a warning if the condition is not met.
 * This can be used to log issues in development environments in critical
 * paths. Removing the logging code for production environments will keep the
 * same logic and follow the same code paths.
 */

var warning = emptyFunction;

if (process.env.NODE_ENV !== 'production') {
  var printWarning = function printWarning(format) {
    for (var _len = arguments.length, args = Array(_len > 1 ? _len - 1 : 0), _key = 1; _key < _len; _key++) {
      args[_key - 1] = arguments[_key];
    }

    var argIndex = 0;
    var message = 'Warning: ' + format.replace(/%s/g, function () {
      return args[argIndex++];
    });
    if (typeof console !== 'undefined') {
      console.error(message);
    }
    try {
      // --- Welcome to debugging React ---
      // This error was thrown as a convenience so that you can use this stack
      // to find the callsite that caused this warning to fire.
      throw new Error(message);
    } catch (x) {}
  };

  warning = function warning(condition, format) {
    if (format === undefined) {
      throw new Error('`warning(condition, format, ...args)` requires a warning ' + 'message argument');
    }

    if (format.indexOf('Failed Composite propType: ') === 0) {
      return; // Ignore CompositeComponent proptype check.
    }

    if (!condition) {
      for (var _len2 = arguments.length, args = Array(_len2 > 2 ? _len2 - 2 : 0), _key2 = 2; _key2 < _len2; _key2++) {
        args[_key2 - 2] = arguments[_key2];
      }

      printWarning.apply(undefined, [format].concat(args));
    }
  };
}

module.exports = warning;
/* WEBPACK VAR INJECTION */}.call(exports, __webpack_require__(20)))

/***/ }),
/* 76 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});
exports.Stats = exports.Teams = exports.Alerts = exports.WebsocketEvents = exports.RequestStatus = exports.Files = exports.Posts = exports.Preferences = exports.General = undefined;

var _general = __webpack_require__(162);

var _general2 = _interopRequireDefault(_general);

var _request_status = __webpack_require__(165);

var _request_status2 = _interopRequireDefault(_request_status);

var _websocket = __webpack_require__(168);

var _websocket2 = _interopRequireDefault(_websocket);

var _preferences = __webpack_require__(164);

var _preferences2 = _interopRequireDefault(_preferences);

var _posts = __webpack_require__(163);

var _posts2 = _interopRequireDefault(_posts);

var _files = __webpack_require__(161);

var _files2 = _interopRequireDefault(_files);

var _alerts = __webpack_require__(160);

var _alerts2 = _interopRequireDefault(_alerts);

var _teams = __webpack_require__(167);

var _teams2 = _interopRequireDefault(_teams);

var _stats = __webpack_require__(166);

var _stats2 = _interopRequireDefault(_stats);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.General = _general2.default;
exports.Preferences = _preferences2.default;
exports.Posts = _posts2.default;
exports.Files = _files2.default;
exports.RequestStatus = _request_status2.default;
exports.WebsocketEvents = _websocket2.default;
exports.Alerts = _alerts2.default;
exports.Teams = _teams2.default;
exports.Stats = _stats2.default; // Copyright (c) 2016-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

/***/ }),
/* 77 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});
exports.canDownloadFilesOnMobile = exports.canUploadFilesOnMobile = undefined;
exports.getConfig = getConfig;
exports.getLicense = getLicense;
exports.getCurrentUrl = getCurrentUrl;

var _reselect = __webpack_require__(34);

function getConfig(state) {
    return state.entities.general.config;
} // Copyright (c) 2017-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

function getLicense(state) {
    return state.entities.general.license;
}

function getCurrentUrl(state) {
    return state.entities.general.credentials.url;
}

var canUploadFilesOnMobile = exports.canUploadFilesOnMobile = (0, _reselect.createSelector)(getConfig, getLicense, function (config, license) {
    // Defaults to true if either setting doesn't exist
    return config.EnableFileAttachments !== 'false' && (license.IsLicensed === 'false' || license.Compliance === 'false' || config.EnableMobileFileUpload !== 'false');
});

var canDownloadFilesOnMobile = exports.canDownloadFilesOnMobile = (0, _reselect.createSelector)(getConfig, getLicense, function (config, license) {
    // Defaults to true if the setting doesn't exist
    return license.IsLicensed === 'false' || license.Compliance === 'false' || config.EnableMobileFileDownload !== 'false';
});

/***/ }),
/* 78 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});
exports.createShallowSelector = exports.createIdsSelector = undefined;
exports.memoizeResult = memoizeResult;

var _reselect = __webpack_require__(34);

var _shallowEquals = __webpack_require__(177);

var _shallowEquals2 = _interopRequireDefault(_shallowEquals);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

// Copyright (c) 2017-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

function memoizeResult(func) {
    var lastArgs = null;
    var lastResult = null;

    // we reference arguments instead of spreading them for performance reasons
    return function shallowCompare() {
        if (!(0, _shallowEquals2.default)(lastArgs, arguments)) {
            //eslint-disable-line prefer-rest-params
            // apply arguments instead of spreading for performance.
            var result = Reflect.apply(func, null, arguments); //eslint-disable-line prefer-rest-params
            if (!(0, _shallowEquals2.default)(lastResult, result)) {
                lastResult = result;
            }
        }

        lastArgs = arguments; //eslint-disable-line prefer-rest-params
        return lastResult;
    };
}

// Use this selector when you want a shallow comparison of the arguments and you want to memoize the result
// try and use this only when your selector returns an array of ids
var createIdsSelector = exports.createIdsSelector = (0, _reselect.createSelectorCreator)(memoizeResult);

// Use this selector when you want a shallow comparison of the arguments and you don't need to memoize the result
var createShallowSelector = exports.createShallowSelector = (0, _reselect.createSelectorCreator)(_reselect.defaultMemoize, _shallowEquals2.default);

/***/ }),
/* 79 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});
exports.getFullName = getFullName;
exports.displayUsername = displayUsername;
exports.rolesIncludePermission = rolesIncludePermission;
exports.isAdmin = isAdmin;
exports.isTeamAdmin = isTeamAdmin;
exports.isSystemAdmin = isSystemAdmin;
exports.isChannelAdmin = isChannelAdmin;
exports.hasUserAccessTokenRole = hasUserAccessTokenRole;
exports.hasPostAllRole = hasPostAllRole;
exports.hasPostAllPublicRole = hasPostAllPublicRole;
exports.profileListToMap = profileListToMap;
exports.removeUserFromList = removeUserFromList;
exports.filterProfilesMatchingTerm = filterProfilesMatchingTerm;
exports.sortByUsername = sortByUsername;

var _constants = __webpack_require__(76);

function getFullName(user) {
    if (user.first_name && user.last_name) {
        return user.first_name + ' ' + user.last_name;
    } else if (user.first_name) {
        return user.first_name;
    } else if (user.last_name) {
        return user.last_name;
    }

    return '';
} // Copyright (c) 2016-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

function displayUsername(user, teammateNameDisplay) {
    var name = '';

    if (user) {
        if (teammateNameDisplay === _constants.Preferences.DISPLAY_PREFER_NICKNAME) {
            name = user.nickname || getFullName(user);
        } else if (teammateNameDisplay === _constants.Preferences.DISPLAY_PREFER_FULL_NAME) {
            name = getFullName(user);
        }

        if (!name.trim().length) {
            name = user.username;
        }
    }

    return name;
}

function rolesIncludePermission(roles, permission) {
    var rolesArray = roles.split(' ');
    return rolesArray.includes(permission);
}

function isAdmin(roles) {
    return isSystemAdmin(roles) || isTeamAdmin(roles);
}

function isTeamAdmin(roles) {
    return rolesIncludePermission(roles, _constants.General.TEAM_ADMIN_ROLE);
}

function isSystemAdmin(roles) {
    return rolesIncludePermission(roles, _constants.General.SYSTEM_ADMIN_ROLE);
}

function isChannelAdmin(roles) {
    return rolesIncludePermission(roles, _constants.General.CHANNEL_ADMIN_ROLE);
}

function hasUserAccessTokenRole(roles) {
    return rolesIncludePermission(roles, _constants.General.SYSTEM_USER_ACCESS_TOKEN_ROLE);
}

function hasPostAllRole(roles) {
    return rolesIncludePermission(roles, _constants.General.SYSTEM_POST_ALL_ROLE);
}

function hasPostAllPublicRole(roles) {
    return rolesIncludePermission(roles, _constants.General.SYSTEM_POST_ALL_PUBLIC_ROLE);
}

function profileListToMap(profileList) {
    var profiles = {};
    for (var i = 0; i < profileList.length; i++) {
        profiles[profileList[i].id] = profileList[i];
    }
    return profiles;
}

function removeUserFromList(userId, list) {
    for (var i = list.length - 1; i >= 0; i--) {
        if (list[i].id === userId) {
            list.splice(i, 1);
            return list;
        }
    }

    return list;
}

function filterProfilesMatchingTerm(users, term) {
    var lowercasedTerm = term.toLowerCase();

    return users.filter(function (user) {
        if (!user) {
            return false;
        }
        var username = (user.username || '').toLowerCase();
        var first = (user.first_name || '').toLowerCase();
        var last = (user.last_name || '').toLowerCase();
        var full = first + ' ' + last;
        var email = (user.email || '').toLowerCase();
        var nickname = (user.nickname || '').toLowerCase();

        var emailPrefix = '';
        var emailDomain = '';
        var split = email.split('@');
        emailPrefix = split[0];
        if (split.length > 1) {
            emailDomain = split[1];
        }

        return username.startsWith(lowercasedTerm) || first.startsWith(lowercasedTerm) || last.startsWith(lowercasedTerm) || full.startsWith(lowercasedTerm) || nickname.startsWith(term) || emailPrefix.startsWith(term) || emailDomain.startsWith(term);
    });
}

function sortByUsername(a, b) {
    var nameA = a.username;
    var nameB = b.username;

    return nameA.localeCompare(nameB);
}

/***/ }),
/* 80 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_extends__ = __webpack_require__(22);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_extends___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_extends__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__actions__ = __webpack_require__(35);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__channel_header_button_jsx__ = __webpack_require__(86);

var connect = window['react-redux'].connect;
var bindActionCreators = window.redux.bindActionCreators;






function mapStateToProps(state, ownProps) {
    var channelId = state.entities.channels.currentChannelId;
    var channel = state.entities.channels.channels[channelId] || {};
    var userId = state.entities.users.currentUserId;
    if (channel.name === userId + '__' + userId) {
        channelId = '';
    }

    return __WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_extends___default()({
        channelId: channelId
    }, ownProps);
}

function mapDispatchToProps(dispatch) {
    return {
        actions: bindActionCreators({
            startMeeting: __WEBPACK_IMPORTED_MODULE_1__actions__["a" /* startMeeting */]
        }, dispatch)
    };
}

/* harmony default export */ __webpack_exports__["a"] = connect(mapStateToProps, mapDispatchToProps)(__WEBPACK_IMPORTED_MODULE_2__channel_header_button_jsx__["a" /* default */]);

/***/ }),
/* 81 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_extends__ = __webpack_require__(22);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_extends___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_extends__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__actions__ = __webpack_require__(35);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__mobile_channel_header_button_jsx__ = __webpack_require__(87);

var connect = window['react-redux'].connect;
var bindActionCreators = window.redux.bindActionCreators;






function mapStateToProps(state, ownProps) {
    var channelId = state.entities.channels.currentChannelId;
    var channel = state.entities.channels.channels[channelId] || {};
    var userId = state.entities.users.currentUserId;
    if (channel.name === userId + '__' + userId) {
        channelId = '';
    }

    return __WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_extends___default()({
        channelId: channelId
    }, ownProps);
}

function mapDispatchToProps(dispatch) {
    return {
        actions: bindActionCreators({
            startMeeting: __WEBPACK_IMPORTED_MODULE_1__actions__["a" /* startMeeting */]
        }, dispatch)
    };
}

/* harmony default export */ __webpack_exports__["a"] = connect(mapStateToProps, mapDispatchToProps)(__WEBPACK_IMPORTED_MODULE_2__mobile_channel_header_button_jsx__["a" /* default */]);

/***/ }),
/* 82 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_extends__ = __webpack_require__(22);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_extends___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_extends__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_mattermost_redux_selectors_entities_preferences__ = __webpack_require__(169);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_mattermost_redux_selectors_entities_preferences___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_1_mattermost_redux_selectors_entities_preferences__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__utils_user_utils__ = __webpack_require__(92);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__post_type_zoom_jsx__ = __webpack_require__(88);

var connect = window['react-redux'].connect;
var bindActionCreators = window.redux.bindActionCreators;







function mapStateToProps(state, ownProps) {
    var post = ownProps.post || {};
    var user = state.entities.users.profiles[post.user_id] || {};

    return __WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_extends___default()({}, ownProps, {
        creatorName: __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_2__utils_user_utils__["a" /* displayUsernameForUser */])(user, state.entities.general.config),
        useMilitaryTime: __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_1_mattermost_redux_selectors_entities_preferences__["getBool"])(state, 'display_settings', 'use_military_time', false)
    });
}

function mapDispatchToProps(dispatch) {
    return {
        actions: bindActionCreators({}, dispatch)
    };
}

/* harmony default export */ __webpack_exports__["a"] = connect(mapStateToProps, mapDispatchToProps)(__WEBPACK_IMPORTED_MODULE_3__post_type_zoom_jsx__["a" /* default */]);

/***/ }),
/* 83 */
/***/ (function(module, exports) {

var g;

// This works in non-strict mode
g = (function() {
	return this;
})();

try {
	// This works if eval is allowed (see CSP)
	g = g || Function("return this")() || (1,eval)("this");
} catch(e) {
	// This works if the window reference is available
	if(typeof window === "object")
		g = window;
}

// g can still be undefined, but nothing to do about it...
// We return undefined, instead of nothing here, so it's
// easier to handle this case. if(!global) { ...}

module.exports = g;


/***/ }),
/* 84 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_babel_runtime_regenerator__ = __webpack_require__(19);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_babel_runtime_regenerator___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_babel_runtime_regenerator__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_asyncToGenerator__ = __webpack_require__(15);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_asyncToGenerator___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_asyncToGenerator__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_babel_runtime_helpers_classCallCheck__ = __webpack_require__(11);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_babel_runtime_helpers_classCallCheck___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2_babel_runtime_helpers_classCallCheck__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_superagent__ = __webpack_require__(178);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_superagent___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_3_superagent__);





var Client = function Client() {
    var _this = this;

    __WEBPACK_IMPORTED_MODULE_2_babel_runtime_helpers_classCallCheck___default()(this, Client);

    this.startMeeting = function () {
        var _ref = __WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_asyncToGenerator___default()( /*#__PURE__*/__WEBPACK_IMPORTED_MODULE_0_babel_runtime_regenerator___default.a.mark(function _callee(channelId) {
            var personal = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : true;
            var topic = arguments.length > 2 && arguments[2] !== undefined ? arguments[2] : '';
            var meetingId = arguments.length > 3 && arguments[3] !== undefined ? arguments[3] : 0;
            return __WEBPACK_IMPORTED_MODULE_0_babel_runtime_regenerator___default.a.wrap(function _callee$(_context) {
                while (1) {
                    switch (_context.prev = _context.next) {
                        case 0:
                            return _context.abrupt('return', _this.doPost(_this.url + '/api/v1/meetings', { channel_id: channelId, personal: personal, topic: topic, meeting_id: meetingId }));

                        case 1:
                        case 'end':
                            return _context.stop();
                    }
                }
            }, _callee, _this);
        }));

        return function (_x) {
            return _ref.apply(this, arguments);
        };
    }();

    this.doPost = function () {
        var _ref2 = __WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_asyncToGenerator___default()( /*#__PURE__*/__WEBPACK_IMPORTED_MODULE_0_babel_runtime_regenerator___default.a.mark(function _callee2(url, body) {
            var headers = arguments.length > 2 && arguments[2] !== undefined ? arguments[2] : {};
            var response;
            return __WEBPACK_IMPORTED_MODULE_0_babel_runtime_regenerator___default.a.wrap(function _callee2$(_context2) {
                while (1) {
                    switch (_context2.prev = _context2.next) {
                        case 0:
                            headers['X-Requested-With'] = 'XMLHttpRequest';

                            _context2.prev = 1;
                            _context2.next = 4;
                            return __WEBPACK_IMPORTED_MODULE_3_superagent___default.a.post(url).send(body).set(headers).type('application/json').accept('application/json');

                        case 4:
                            response = _context2.sent;
                            return _context2.abrupt('return', response.body);

                        case 8:
                            _context2.prev = 8;
                            _context2.t0 = _context2['catch'](1);
                            throw _context2.t0;

                        case 11:
                        case 'end':
                            return _context2.stop();
                    }
                }
            }, _callee2, _this, [[1, 8]]);
        }));

        return function (_x5, _x6) {
            return _ref2.apply(this, arguments);
        };
    }();

    this.url = '/plugins/zoom';
};

/* harmony default export */ __webpack_exports__["a"] = Client;

/***/ }),
/* 85 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__client_js__ = __webpack_require__(84);


var Client = new __WEBPACK_IMPORTED_MODULE_0__client_js__["a" /* default */]();

/* harmony default export */ __webpack_exports__["a"] = Client;

/***/ }),
/* 86 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_extends__ = __webpack_require__(22);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_extends___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_extends__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_babel_runtime_regenerator__ = __webpack_require__(19);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_babel_runtime_regenerator___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_1_babel_runtime_regenerator__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_babel_runtime_helpers_asyncToGenerator__ = __webpack_require__(15);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_babel_runtime_helpers_asyncToGenerator___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2_babel_runtime_helpers_asyncToGenerator__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_babel_runtime_core_js_object_get_prototype_of__ = __webpack_require__(21);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_babel_runtime_core_js_object_get_prototype_of___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_3_babel_runtime_core_js_object_get_prototype_of__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4_babel_runtime_helpers_classCallCheck__ = __webpack_require__(11);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4_babel_runtime_helpers_classCallCheck___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_4_babel_runtime_helpers_classCallCheck__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_babel_runtime_helpers_createClass__ = __webpack_require__(14);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_babel_runtime_helpers_createClass___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_5_babel_runtime_helpers_createClass__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6_babel_runtime_helpers_possibleConstructorReturn__ = __webpack_require__(24);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6_babel_runtime_helpers_possibleConstructorReturn___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_6_babel_runtime_helpers_possibleConstructorReturn__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7_babel_runtime_helpers_inherits__ = __webpack_require__(23);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7_babel_runtime_helpers_inherits___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_7_babel_runtime_helpers_inherits__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__share_meeting_modal__ = __webpack_require__(54);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_9__constants__ = __webpack_require__(36);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_10_prop_types__ = __webpack_require__(33);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_10_prop_types___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_10_prop_types__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_11_mattermost_redux_utils_theme_utils__ = __webpack_require__(32);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_11_mattermost_redux_utils_theme_utils___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_11_mattermost_redux_utils_theme_utils__);








var React = window.react;
var _window$reactBootstr = window['react-bootstrap'],
    Overlay = _window$reactBootstr.Overlay,
    OverlayTrigger = _window$reactBootstr.OverlayTrigger,
    Popover = _window$reactBootstr.Popover,
    Tooltip = _window$reactBootstr.Tooltip;









var ChannelHeaderButton = function (_React$PureComponent) {
    __WEBPACK_IMPORTED_MODULE_7_babel_runtime_helpers_inherits___default()(ChannelHeaderButton, _React$PureComponent);

    function ChannelHeaderButton(props) {
        var _this2 = this;

        __WEBPACK_IMPORTED_MODULE_4_babel_runtime_helpers_classCallCheck___default()(this, ChannelHeaderButton);

        var _this = __WEBPACK_IMPORTED_MODULE_6_babel_runtime_helpers_possibleConstructorReturn___default()(this, (ChannelHeaderButton.__proto__ || __WEBPACK_IMPORTED_MODULE_3_babel_runtime_core_js_object_get_prototype_of___default()(ChannelHeaderButton)).call(this, props));

        _this.showHover = function () {
            _this.setState({ hover: true });
        };

        _this.hideHover = function () {
            _this.setState({ hover: false });
        };

        _this.rowStartShowHover = function () {
            _this.setState({ rowStartHover: true });
        };

        _this.rowStartHideHover = function () {
            _this.setState({ rowStartHover: false });
        };

        _this.rowStartWithTopicShowHover = function () {
            _this.setState({ rowStartWithTopicHover: true });
        };

        _this.rowStartWithTopicHideHover = function () {
            _this.setState({ rowStartWithTopicHover: false });
        };

        _this.rowShareShowHover = function () {
            _this.setState({ rowShareHover: true });
        };

        _this.rowShareHideHover = function () {
            _this.setState({ rowShareHover: false });
        };

        _this.resetHover = function () {
            _this.hideHover();
            _this.rowStartHideHover();
            _this.rowStartWithTopicHideHover();
            _this.rowShareHideHover();
        };

        _this.showModal = function () {
            _this.setState({ showPopover: false, showModal: true, shareModal: false });
            _this.resetHover();
        };

        _this.showModalAsShare = function () {
            _this.setState({ showPopover: false, showModal: true, shareModal: true });
            _this.resetHover();
        };

        _this.hideModal = function () {
            _this.setState({ showModal: false });
            _this.resetHover();
        };

        _this.startMeeting = __WEBPACK_IMPORTED_MODULE_2_babel_runtime_helpers_asyncToGenerator___default()( /*#__PURE__*/__WEBPACK_IMPORTED_MODULE_1_babel_runtime_regenerator___default.a.mark(function _callee() {
            return __WEBPACK_IMPORTED_MODULE_1_babel_runtime_regenerator___default.a.wrap(function _callee$(_context) {
                while (1) {
                    switch (_context.prev = _context.next) {
                        case 0:
                            _context.next = 2;
                            return _this.props.actions.startMeeting(_this.props.channelId, true, _this.state.topic);

                        case 2:
                            _this.setState({ showPopover: false });
                            _this.resetHover();

                        case 4:
                        case 'end':
                            return _context.stop();
                    }
                }
            }, _callee, _this2);
        }));


        _this.state = {
            showPopover: false,
            hover: false,
            rowStartHover: false,
            rowStartWithTopicHover: false,
            rowShareHover: false,
            showModal: false,
            shareModal: false
        };
        return _this;
    }

    __WEBPACK_IMPORTED_MODULE_5_babel_runtime_helpers_createClass___default()(ChannelHeaderButton, [{
        key: 'render',
        value: function render() {
            var _this3 = this;

            if (this.props.channelId === '') {
                return React.createElement('div', null);
            }

            var style = getStyle(this.props.theme);

            var isHovering = this.state.hover || this.state.showPopover;
            var containerStyle = isHovering ? __WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_extends___default()({}, style.iconContainer, style.iconContainerHover) : style.iconContainer;
            var iconStyle = isHovering ? style.iconButtonHover : style.iconButton;

            return React.createElement(
                'div',
                null,
                React.createElement(
                    'div',
                    {
                        id: 'zoomChannelHeaderPopover',
                        style: containerStyle,
                        onMouseEnter: this.showHover,
                        onMouseLeave: this.hideHover
                    },
                    React.createElement(
                        OverlayTrigger,
                        {
                            trigger: ['hover', 'focus'],
                            delayShow: 400,
                            placement: 'bottom',
                            overlay: React.createElement(
                                Tooltip,
                                { id: 'zoomChannelHeaderTooltip' },
                                'Zoom'
                            )
                        },
                        React.createElement(
                            'div',
                            {
                                id: 'zoomChannelHeaderButton',
                                onClick: function onClick(e) {
                                    _this3.setState({ popoverTarget: e.target, showPopover: !_this3.state.showPopover });
                                }
                            },
                            React.createElement('span', {
                                style: iconStyle,
                                'aria-hidden': 'true',
                                dangerouslySetInnerHTML: { __html: __WEBPACK_IMPORTED_MODULE_9__constants__["a" /* Svgs */].VIDEO_CAMERA }
                            })
                        )
                    ),
                    React.createElement(
                        Overlay,
                        {
                            rootClose: true,
                            show: this.state.showPopover,
                            target: function target() {
                                return _this3.state.popoverTarget;
                            },
                            onHide: function onHide() {
                                return _this3.setState({ showPopover: false });
                            },
                            placement: 'bottom'
                        },
                        React.createElement(
                            Popover,
                            {
                                id: 'zoomPopover',
                                style: style.popover
                            },
                            React.createElement(
                                'div',
                                { style: style.popoverBody },
                                React.createElement(
                                    'div',
                                    {
                                        id: 'zoomPopoverStartMeeting',
                                        onMouseEnter: this.rowStartShowHover,
                                        onMouseLeave: this.rowStartHideHover,
                                        onClick: this.startMeeting,
                                        style: this.state.rowStartHover ? style.popoverRowHover : style.popoverRowNoHover
                                    },
                                    React.createElement('span', {
                                        style: style.popoverIcon,
                                        className: 'pull-left',
                                        dangerouslySetInnerHTML: { __html: __WEBPACK_IMPORTED_MODULE_9__constants__["a" /* Svgs */].VIDEO_CAMERA_2 },
                                        'aria-hidden': 'true'
                                    }),
                                    React.createElement(
                                        'div',
                                        { style: style.popoverRow },
                                        React.createElement(
                                            'div',
                                            { style: style.popoverText },
                                            'Start Zoom Meeting Now'
                                        )
                                    )
                                ),
                                React.createElement(
                                    'div',
                                    {
                                        id: 'zoomPopoverStartMeetingWithTopic',
                                        onMouseEnter: this.rowStartWithTopicShowHover,
                                        onMouseLeave: this.rowStartWithTopicHideHover,
                                        onClick: this.showModal,
                                        style: this.state.rowStartWithTopicHover ? style.popoverRowHover : style.popoverRowNoHover
                                    },
                                    React.createElement('span', {
                                        style: style.popoverIcon,
                                        className: 'pull-left',
                                        'aria-hidden': 'true',
                                        dangerouslySetInnerHTML: { __html: __WEBPACK_IMPORTED_MODULE_9__constants__["a" /* Svgs */].VIDEO_CAMERA_2 }
                                    }),
                                    React.createElement(
                                        'div',
                                        { style: style.popoverRow },
                                        React.createElement(
                                            'div',
                                            { style: style.popoverText },
                                            'Start Zoom Meeting with Topic'
                                        )
                                    )
                                ),
                                React.createElement(
                                    'div',
                                    {
                                        id: 'zoomPopoverShareMeeting',
                                        onMouseEnter: this.rowShareShowHover,
                                        onMouseLeave: this.rowShareHideHover,
                                        onClick: this.showModalAsShare,
                                        style: this.state.rowShareHover ? style.popoverRowHover : style.popoverRowNoHover
                                    },
                                    React.createElement('span', {
                                        style: __WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_extends___default()({}, style.popoverIcon, { top: '16px' }),
                                        className: 'pull-left',
                                        dangerouslySetInnerHTML: { __html: __WEBPACK_IMPORTED_MODULE_9__constants__["a" /* Svgs */].SHARE },
                                        'aria-hidden': 'true'
                                    }),
                                    React.createElement(
                                        'div',
                                        { style: style.popoverRow },
                                        React.createElement(
                                            'div',
                                            { style: style.popoverText },
                                            'Share Zoom Meeting'
                                        )
                                    )
                                )
                            )
                        )
                    )
                ),
                React.createElement(__WEBPACK_IMPORTED_MODULE_8__share_meeting_modal__["a" /* default */], {
                    show: this.state.showModal,
                    channelId: this.props.channelId,
                    theme: this.props.theme,
                    hide: this.hideModal,
                    share: this.state.shareModal
                })
            );
        }
    }]);

    return ChannelHeaderButton;
}(React.PureComponent);

ChannelHeaderButton.propTypes = {
    /*
     * The current channel ID
     */
    channelId: __WEBPACK_IMPORTED_MODULE_10_prop_types___default.a.string.isRequired,

    /*
     * Logged in user's theme
     */
    theme: __WEBPACK_IMPORTED_MODULE_10_prop_types___default.a.object.isRequired,

    actions: __WEBPACK_IMPORTED_MODULE_10_prop_types___default.a.shape({

        /*
         * Action to start a meeting
         */
        startMeeting: __WEBPACK_IMPORTED_MODULE_10_prop_types___default.a.func.isRequired
    }).isRequired
};
/* harmony default export */ __webpack_exports__["a"] = ChannelHeaderButton;


var getStyle = __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_11_mattermost_redux_utils_theme_utils__["makeStyleFromTheme"])(function (theme) {
    return {
        iconContainer: {
            border: '1px solid',
            borderRadius: '50%',
            borderColor: __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_11_mattermost_redux_utils_theme_utils__["changeOpacity"])(theme.centerChannelColor, 0.12),
            cursor: 'pointer',
            height: '37px',
            lineHeight: '36px',
            margin: '17px 10px 0 0',
            minWidth: '30px',
            textAlign: 'center',
            width: '37px',
            fill: __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_11_mattermost_redux_utils_theme_utils__["changeOpacity"])(theme.centerChannelColor, 0.4)
        },
        iconContainerHover: {
            fill: theme.linkColor,
            borderColor: theme.linkColor
        },
        iconButton: {
            color: '#B1B1B3'
        },
        iconButtonHover: {
            color: theme.linkColor
        },
        popover: {
            marginLeft: '-100px',
            maxWidth: '285px',
            height: '155px',
            width: '285px',
            background: theme.centerChannelBg
        },
        popoverBody: {
            maxHeight: '305px',
            overflow: 'auto',
            position: 'relative',
            width: '285px',
            left: '-14px',
            top: '-9px'
        },
        popoverRow: {
            border: 'none',
            cursor: 'pointer',
            height: '50px',
            margin: '1px 0',
            overflow: 'hidden',
            padding: '6px 19px 0 10px'
        },
        popoverRowNoHover: {
            borderLeft: '3px solid',
            borderColor: theme.centerChannelBg,
            fontWeight: 'normal'
        },
        popoverRowHover: {
            borderLeft: '3px solid transparent',
            borderColor: theme.linkColor,
            background: __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_11_mattermost_redux_utils_theme_utils__["changeOpacity"])(theme.linkColor, 0.08),
            fontWeight: 'bold'
        },
        popoverText: {
            fontWeight: 'inherit',
            fontSize: '14px',
            position: 'relative',
            top: '10px',
            left: '4px'
        },
        popoverIcon: {
            margin: '0',
            paddingLeft: '16px',
            position: 'relative',
            top: '14px',
            fontSize: '18px',
            fill: theme.buttonBg
        }
    };
});

/***/ }),
/* 87 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_babel_runtime_regenerator__ = __webpack_require__(19);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_babel_runtime_regenerator___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_babel_runtime_regenerator__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_asyncToGenerator__ = __webpack_require__(15);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_asyncToGenerator___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_asyncToGenerator__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_babel_runtime_core_js_object_get_prototype_of__ = __webpack_require__(21);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_babel_runtime_core_js_object_get_prototype_of___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2_babel_runtime_core_js_object_get_prototype_of__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_babel_runtime_helpers_classCallCheck__ = __webpack_require__(11);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_babel_runtime_helpers_classCallCheck___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_3_babel_runtime_helpers_classCallCheck__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4_babel_runtime_helpers_createClass__ = __webpack_require__(14);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4_babel_runtime_helpers_createClass___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_4_babel_runtime_helpers_createClass__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_babel_runtime_helpers_possibleConstructorReturn__ = __webpack_require__(24);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_babel_runtime_helpers_possibleConstructorReturn___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_5_babel_runtime_helpers_possibleConstructorReturn__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6_babel_runtime_helpers_inherits__ = __webpack_require__(23);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6_babel_runtime_helpers_inherits___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_6_babel_runtime_helpers_inherits__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__share_meeting_modal__ = __webpack_require__(54);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__constants__ = __webpack_require__(36);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_9_prop_types__ = __webpack_require__(33);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_9_prop_types___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_9_prop_types__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_10_mattermost_redux_utils_theme_utils__ = __webpack_require__(32);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_10_mattermost_redux_utils_theme_utils___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_10_mattermost_redux_utils_theme_utils__);







var React = window.react;








var MIN_SCREEN_WIDTH = 480;

var MobileChannelHeaderButton = function (_React$PureComponent) {
    __WEBPACK_IMPORTED_MODULE_6_babel_runtime_helpers_inherits___default()(MobileChannelHeaderButton, _React$PureComponent);

    function MobileChannelHeaderButton(props) {
        var _this2 = this;

        __WEBPACK_IMPORTED_MODULE_3_babel_runtime_helpers_classCallCheck___default()(this, MobileChannelHeaderButton);

        var _this = __WEBPACK_IMPORTED_MODULE_5_babel_runtime_helpers_possibleConstructorReturn___default()(this, (MobileChannelHeaderButton.__proto__ || __WEBPACK_IMPORTED_MODULE_2_babel_runtime_core_js_object_get_prototype_of___default()(MobileChannelHeaderButton)).call(this, props));

        _this.showModal = function () {
            _this.setState({ showModal: true, shareModal: false });
        };

        _this.showModalAsShare = function () {
            _this.setState({ showModal: true, shareModal: true });
        };

        _this.hideModal = function () {
            _this.setState({ showModal: false });
        };

        _this.startMeeting = __WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_asyncToGenerator___default()( /*#__PURE__*/__WEBPACK_IMPORTED_MODULE_0_babel_runtime_regenerator___default.a.mark(function _callee() {
            return __WEBPACK_IMPORTED_MODULE_0_babel_runtime_regenerator___default.a.wrap(function _callee$(_context) {
                while (1) {
                    switch (_context.prev = _context.next) {
                        case 0:
                            _context.next = 2;
                            return _this.props.actions.startMeeting(_this.props.channelId, true, _this.state.topic);

                        case 2:
                        case 'end':
                            return _context.stop();
                    }
                }
            }, _callee, _this2);
        }));


        _this.state = {
            showModal: false,
            shareModal: false
        };
        return _this;
    }

    __WEBPACK_IMPORTED_MODULE_4_babel_runtime_helpers_createClass___default()(MobileChannelHeaderButton, [{
        key: 'render',
        value: function render() {
            if (this.props.channelId === '' || window.innerWidth <= MIN_SCREEN_WIDTH) {
                return React.createElement('div', null);
            }

            var style = getStyle(this.props.theme);

            // TODO: convert CSS classes to style objects to remove reliance on webapp
            return React.createElement(
                'div',
                { className: 'navbar-toggle navbar-right__icon navbar-search pull-right' },
                React.createElement(
                    'div',
                    { className: 'navbar-brand' },
                    React.createElement(
                        'div',
                        { className: 'dropdown' },
                        React.createElement(
                            'a',
                            {
                                href: '#',
                                className: 'dropdown-toggle theme',
                                style: style.icon,
                                type: 'button',
                                'data-toggle': 'dropdown',
                                'aria-expanded': 'true'
                            },
                            React.createElement('span', {
                                className: 'icon icon__search',
                                dangerouslySetInnerHTML: { __html: __WEBPACK_IMPORTED_MODULE_8__constants__["a" /* Svgs */].VIDEO_CAMERA },
                                'aria-hidden': 'true'
                            })
                        ),
                        React.createElement(
                            'ul',
                            {
                                className: 'dropdown-menu',
                                role: 'menu'
                            },
                            React.createElement(
                                'li',
                                { role: 'presentation' },
                                React.createElement(
                                    'a',
                                    {
                                        role: 'menuitem',
                                        href: '#',
                                        onClick: this.startMeeting
                                    },
                                    'Start Zoom Meeting Now'
                                )
                            ),
                            React.createElement(
                                'li',
                                { role: 'presentation' },
                                React.createElement(
                                    'a',
                                    {
                                        role: 'menuitem',
                                        href: '#',
                                        onClick: this.showModal
                                    },
                                    'Start Zoom Meeting with Topic'
                                )
                            ),
                            React.createElement(
                                'li',
                                { role: 'presentation' },
                                React.createElement(
                                    'a',
                                    {
                                        role: 'menuitem',
                                        href: '#',
                                        onClick: this.showModalAsShare
                                    },
                                    'Share Zoom Meeting'
                                )
                            ),
                            React.createElement(
                                'div',
                                {
                                    className: 'close visible-xs-block'
                                },
                                '×'
                            )
                        )
                    )
                ),
                React.createElement(__WEBPACK_IMPORTED_MODULE_7__share_meeting_modal__["a" /* default */], {
                    show: this.state.showModal,
                    channelId: this.props.channelId,
                    theme: this.props.theme,
                    hide: this.hideModal,
                    share: this.state.shareModal
                })
            );
        }
    }]);

    return MobileChannelHeaderButton;
}(React.PureComponent);

MobileChannelHeaderButton.propTypes = {
    /*
     * The current channel ID
     */
    channelId: __WEBPACK_IMPORTED_MODULE_9_prop_types___default.a.string.isRequired,

    /*
     * Logged in user's theme
     */
    theme: __WEBPACK_IMPORTED_MODULE_9_prop_types___default.a.object.isRequired,

    actions: __WEBPACK_IMPORTED_MODULE_9_prop_types___default.a.shape({

        /*
         * Action to start a meeting
         */
        startMeeting: __WEBPACK_IMPORTED_MODULE_9_prop_types___default.a.func.isRequired
    }).isRequired
};
/* harmony default export */ __webpack_exports__["a"] = MobileChannelHeaderButton;


var getStyle = __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_10_mattermost_redux_utils_theme_utils__["makeStyleFromTheme"])(function (theme) {
    return {
        icon: {
            position: 'relative',
            top: '-9px',
            left: '1px',
            fill: theme.buttonBg
        }
    };
});

/***/ }),
/* 88 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_babel_runtime_core_js_object_get_prototype_of__ = __webpack_require__(21);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_babel_runtime_core_js_object_get_prototype_of___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_babel_runtime_core_js_object_get_prototype_of__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_classCallCheck__ = __webpack_require__(11);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_classCallCheck___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_classCallCheck__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_babel_runtime_helpers_createClass__ = __webpack_require__(14);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_babel_runtime_helpers_createClass___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2_babel_runtime_helpers_createClass__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_babel_runtime_helpers_possibleConstructorReturn__ = __webpack_require__(24);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_babel_runtime_helpers_possibleConstructorReturn___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_3_babel_runtime_helpers_possibleConstructorReturn__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4_babel_runtime_helpers_inherits__ = __webpack_require__(23);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4_babel_runtime_helpers_inherits___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_4_babel_runtime_helpers_inherits__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__constants__ = __webpack_require__(36);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__utils_date_utils__ = __webpack_require__(91);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7_prop_types__ = __webpack_require__(33);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7_prop_types___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_7_prop_types__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8_mattermost_redux_utils_theme_utils__ = __webpack_require__(32);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8_mattermost_redux_utils_theme_utils___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_8_mattermost_redux_utils_theme_utils__);





var React = window.react;







var PostTypeZoom = function (_React$PureComponent) {
    __WEBPACK_IMPORTED_MODULE_4_babel_runtime_helpers_inherits___default()(PostTypeZoom, _React$PureComponent);

    function PostTypeZoom(props) {
        __WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_classCallCheck___default()(this, PostTypeZoom);

        var _this = __WEBPACK_IMPORTED_MODULE_3_babel_runtime_helpers_possibleConstructorReturn___default()(this, (PostTypeZoom.__proto__ || __WEBPACK_IMPORTED_MODULE_0_babel_runtime_core_js_object_get_prototype_of___default()(PostTypeZoom)).call(this, props));

        _this.state = {};
        return _this;
    }

    __WEBPACK_IMPORTED_MODULE_2_babel_runtime_helpers_createClass___default()(PostTypeZoom, [{
        key: 'render',
        value: function render() {
            var style = getStyle(this.props.theme);
            var post = this.props.post;
            var props = post.props || {};

            var preText = void 0;
            var content = void 0;
            var subtitle = void 0;
            if (props.meeting_status === 'STARTED') {
                preText = this.props.creatorName + ' has started a meeting';
                content = React.createElement(
                    'a',
                    {
                        className: 'btn btn-lg btn-primary',
                        style: style.button,
                        target: '_blank',
                        href: 'https://zoom.us/j/' + props.meeting_id
                    },
                    React.createElement('i', {
                        style: style.buttonIcon,
                        dangerouslySetInnerHTML: { __html: __WEBPACK_IMPORTED_MODULE_5__constants__["a" /* Svgs */].VIDEO_CAMERA_3 }
                    }),
                    'JOIN MEETING'
                );

                if (props.meeting_personal) {
                    subtitle = React.createElement(
                        'span',
                        null,
                        'Personal Meeting ID (PMI) : ',
                        React.createElement(
                            'a',
                            {
                                target: '_blank',
                                href: 'https://zoom.us/j/' + props.meeting_id
                            },
                            props.meeting_id
                        )
                    );
                } else {
                    subtitle = React.createElement(
                        'span',
                        null,
                        'Meeting ID : ',
                        React.createElement(
                            'a',
                            {
                                target: '_blank',
                                href: 'https://zoom.us/j/' + props.meeting_id
                            },
                            props.meeting_id
                        )
                    );
                }
            } else if (props.meeting_status === 'ENDED') {
                preText = this.props.creatorName + ' has ended the meeting';

                if (props.meeting_personal) {
                    subtitle = 'Personal Meeting ID (PMI) : ' + props.meeting_id;
                } else {
                    subtitle = 'Meeting ID : ' + props.meeting_id;
                }

                var startDate = new Date(post.create_at);
                var start = __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_6__utils_date_utils__["a" /* formatDate */])(startDate);
                var length = Math.ceil((new Date(post.update_at) - startDate) / 1000 / 60);

                content = React.createElement(
                    'div',
                    null,
                    React.createElement(
                        'h2',
                        { style: style.summary },
                        'Meeting Summary'
                    ),
                    React.createElement(
                        'span',
                        { style: style.summaryItem },
                        'Date: ' + start
                    ),
                    React.createElement('br', null),
                    React.createElement(
                        'span',
                        { style: style.summaryItem },
                        'Meeting Length: ' + length + ' minute(s)'
                    )
                );
            }

            var title = 'Zoom Meeting';
            if (props.meeting_topic) {
                title = props.meeting_topic;
            }

            return React.createElement(
                'div',
                null,
                preText,
                React.createElement(
                    'div',
                    { style: style.attachment },
                    React.createElement(
                        'div',
                        { style: style.content },
                        React.createElement(
                            'div',
                            { style: style.container },
                            React.createElement(
                                'h1',
                                { style: style.title },
                                title
                            ),
                            subtitle,
                            React.createElement(
                                'div',
                                null,
                                React.createElement(
                                    'div',
                                    { style: style.body },
                                    content
                                )
                            )
                        )
                    )
                )
            );
        }
    }]);

    return PostTypeZoom;
}(React.PureComponent);

PostTypeZoom.propTypes = {

    /*
     * The post to render the message for.
     */
    post: __WEBPACK_IMPORTED_MODULE_7_prop_types___default.a.object.isRequired,

    /**
     * Set to render post body compactly.
     */
    compactDisplay: __WEBPACK_IMPORTED_MODULE_7_prop_types___default.a.bool,

    /**
     * Flags if the post_message_view is for the RHS (Reply).
     */
    isRHS: __WEBPACK_IMPORTED_MODULE_7_prop_types___default.a.bool,

    /**
     * Set to display times using 24 hours.
     */
    useMilitaryTime: __WEBPACK_IMPORTED_MODULE_7_prop_types___default.a.bool,

    /*
     * Logged in user's theme.
     */
    theme: __WEBPACK_IMPORTED_MODULE_7_prop_types___default.a.object.isRequired,

    /*
     * Creator's name.
     */
    creatorName: __WEBPACK_IMPORTED_MODULE_7_prop_types___default.a.string.isRequired
};
PostTypeZoom.defaultProps = {
    mentionKeys: [],
    compactDisplay: false,
    isRHS: false
};
/* harmony default export */ __webpack_exports__["a"] = PostTypeZoom;


var getStyle = __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_8_mattermost_redux_utils_theme_utils__["makeStyleFromTheme"])(function (theme) {
    return {
        attachment: {
            marginLeft: '-20px',
            position: 'relative'
        },
        content: {
            borderRadius: '4px',
            borderStyle: 'solid',
            borderWidth: '1px',
            borderColor: '#BDBDBF',
            margin: '5px 0 5px 20px',
            padding: '2px 5px'
        },
        container: {
            borderLeftStyle: 'solid',
            borderLeftWidth: '4px',
            padding: '10px',
            borderLeftColor: '#89AECB'
        },
        body: {
            overflowX: 'auto',
            overflowY: 'hidden',
            paddingRight: '5px',
            width: '100%'
        },
        title: {
            fontSize: '16px',
            fontWeight: '600',
            height: '22px',
            lineHeight: '18px',
            margin: '5px 0 1px 0',
            padding: '0'
        },
        button: {
            fontFamily: 'Open Sans',
            fontSize: '12px',
            fontWeight: 'bold',
            letterSpacing: '1px',
            lineHeight: '19px',
            marginTop: '12px',
            borderRadius: '4px',
            color: theme.buttonColor
        },
        buttonIcon: {
            paddingRight: '8px',
            fill: theme.buttonColor
        },
        summary: {
            fontFamily: 'Open Sans',
            fontSize: '14px',
            fontWeight: '600',
            lineHeight: '26px',
            margin: '0',
            padding: '14px 0 0 0'
        },
        summaryItem: {
            fontFamily: 'Open Sans',
            fontSize: '14px',
            lineHeight: '26px'
        }
    };
});

/***/ }),
/* 89 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_babel_runtime_regenerator__ = __webpack_require__(19);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_babel_runtime_regenerator___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_babel_runtime_regenerator__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_asyncToGenerator__ = __webpack_require__(15);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_asyncToGenerator___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_asyncToGenerator__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_babel_runtime_core_js_object_get_prototype_of__ = __webpack_require__(21);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_babel_runtime_core_js_object_get_prototype_of___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2_babel_runtime_core_js_object_get_prototype_of__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_babel_runtime_helpers_classCallCheck__ = __webpack_require__(11);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_babel_runtime_helpers_classCallCheck___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_3_babel_runtime_helpers_classCallCheck__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4_babel_runtime_helpers_possibleConstructorReturn__ = __webpack_require__(24);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4_babel_runtime_helpers_possibleConstructorReturn___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_4_babel_runtime_helpers_possibleConstructorReturn__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_babel_runtime_helpers_createClass__ = __webpack_require__(14);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_babel_runtime_helpers_createClass___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_5_babel_runtime_helpers_createClass__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6_babel_runtime_helpers_inherits__ = __webpack_require__(23);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6_babel_runtime_helpers_inherits___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_6_babel_runtime_helpers_inherits__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7_prop_types__ = __webpack_require__(33);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7_prop_types___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_7_prop_types__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8_mattermost_redux_utils_theme_utils__ = __webpack_require__(32);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8_mattermost_redux_utils_theme_utils___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_8_mattermost_redux_utils_theme_utils__);







var React = window.react;
var Modal = window['react-bootstrap'].Modal;





var ZOOM_MEETING_ID_LENGTH = [9, 10, 11];

var ShareMeetingModal = function (_React$PureComponent) {
    __WEBPACK_IMPORTED_MODULE_6_babel_runtime_helpers_inherits___default()(ShareMeetingModal, _React$PureComponent);

    __WEBPACK_IMPORTED_MODULE_5_babel_runtime_helpers_createClass___default()(ShareMeetingModal, [{
        key: 'componentWillReceiveProps',
        value: function componentWillReceiveProps(nextProps) {
            if (nextProps.show && !this.props.show) {
                this.setState({
                    topic: '',
                    meetingId: '',
                    meetingIdError: null
                });
            }
        }
    }]);

    function ShareMeetingModal(props) {
        var _this2 = this;

        __WEBPACK_IMPORTED_MODULE_3_babel_runtime_helpers_classCallCheck___default()(this, ShareMeetingModal);

        var _this = __WEBPACK_IMPORTED_MODULE_4_babel_runtime_helpers_possibleConstructorReturn___default()(this, (ShareMeetingModal.__proto__ || __WEBPACK_IMPORTED_MODULE_2_babel_runtime_core_js_object_get_prototype_of___default()(ShareMeetingModal)).call(this, props));

        _this.onTopicChange = function (e) {
            _this.setState({ topic: e.target.value });
        };

        _this.onMeetingIdChange = function (e) {
            _this.setState({ meetingId: e.target.value });
        };

        _this.startMeeting = __WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_asyncToGenerator___default()( /*#__PURE__*/__WEBPACK_IMPORTED_MODULE_0_babel_runtime_regenerator___default.a.mark(function _callee() {
            var meetingId;
            return __WEBPACK_IMPORTED_MODULE_0_babel_runtime_regenerator___default.a.wrap(function _callee$(_context) {
                while (1) {
                    switch (_context.prev = _context.next) {
                        case 0:
                            meetingId = _this.state.meetingId.trim().replace(/-/g, '');

                            if (!(_this.props.share && !ZOOM_MEETING_ID_LENGTH.includes(meetingId.length))) {
                                _context.next = 4;
                                break;
                            }

                            _this.setState({ meetingIdError: 'Meeting ID must be a 9, 10 or 11-digit number' });
                            return _context.abrupt('return');

                        case 4:

                            _this.setState({ meetingIdError: null });

                            _context.next = 7;
                            return _this.props.actions.startMeeting(_this.props.channelId, true, _this.state.topic, parseInt(meetingId, 10));

                        case 7:
                            _this.props.hide();

                        case 8:
                        case 'end':
                            return _context.stop();
                    }
                }
            }, _callee, _this2);
        }));

        _this.onHide = function () {
            _this.setState({
                topic: '',
                meetingId: '',
                meetingIdError: null
            });

            _this.props.hide();
        };

        _this.state = {
            topic: '',
            meetingId: '',
            meetingIdError: null
        };
        return _this;
    }

    __WEBPACK_IMPORTED_MODULE_5_babel_runtime_helpers_createClass___default()(ShareMeetingModal, [{
        key: 'render',
        value: function render() {
            var style = getStyle(this.props.theme);

            var title = 'Start Zoom Meeting';
            var button = 'Start Meeting';
            var meetingIdInput = void 0;
            if (this.props.share) {
                title = 'Share Zoom Meeting';
                button = 'Share Meeting';

                var error = void 0;
                if (this.state.meetingIdError) {
                    error = React.createElement(
                        'label',
                        {
                            className: 'control-label',
                            style: style.error
                        },
                        this.state.meetingIdError
                    );
                }

                meetingIdInput = React.createElement(
                    'div',
                    { style: style.meetingId },
                    React.createElement(
                        'label',
                        {
                            className: 'control-label col-sm-3',
                            style: style.label
                        },
                        'Meeting ID'
                    ),
                    React.createElement(
                        'div',
                        { className: 'col-sm-9' },
                        React.createElement('input', {
                            onChange: this.onMeetingIdChange,
                            type: 'text',
                            className: 'form-control',
                            placeholder: 'E.g.: \u201C314-257-8967\u201D',
                            value: this.state.meetingId,
                            maxLength: 100
                        }),
                        error
                    )
                );
            }

            return React.createElement(
                Modal,
                {
                    show: this.props.show,
                    onHide: this.onHide
                },
                React.createElement(
                    'form',
                    { onSubmit: function onSubmit(e) {
                            return e.preventDefault();
                        } },
                    React.createElement(
                        Modal.Header,
                        { closeButton: true },
                        React.createElement(
                            'h4',
                            { style: style.title },
                            title
                        )
                    ),
                    React.createElement(
                        Modal.Body,
                        null,
                        React.createElement(
                            'div',
                            null,
                            React.createElement(
                                'label',
                                {
                                    className: 'control-label col-sm-3',
                                    style: style.label
                                },
                                'Topic ',
                                React.createElement(
                                    'i',
                                    { style: { fontWeight: 'normal' } },
                                    '(optional)'
                                )
                            ),
                            React.createElement(
                                'div',
                                { className: 'col-sm-9' },
                                React.createElement('input', {
                                    onChange: this.onTopicChange,
                                    autoFocus: true,
                                    type: 'text',
                                    className: 'form-control',
                                    placeholder: 'E.g.: \u201COne on one\u201D, \u201CMarketing\u201D, \u201C\u4F1A\u8BAE\u5BA4\u201D',
                                    value: this.state.topic,
                                    maxLength: 100
                                })
                            )
                        ),
                        meetingIdInput
                    ),
                    React.createElement(
                        Modal.Footer,
                        null,
                        React.createElement(
                            'button',
                            {
                                type: 'button',
                                className: 'btn btn-default',
                                onClick: this.props.hide
                            },
                            'Cancel'
                        ),
                        React.createElement(
                            'button',
                            {
                                type: 'submit',
                                className: 'btn btn-primary',
                                onClick: this.startMeeting
                            },
                            button
                        )
                    )
                )
            );
        }
    }]);

    return ShareMeetingModal;
}(React.PureComponent);

ShareMeetingModal.propTypes = {
    /*
     * Set to true to show modal
     */
    show: __WEBPACK_IMPORTED_MODULE_7_prop_types___default.a.bool.isRequired,

    /*
     * Set to true to show share options
     */
    share: __WEBPACK_IMPORTED_MODULE_7_prop_types___default.a.bool.isRequired,

    /*
     * Current channel ID
     */
    channelId: __WEBPACK_IMPORTED_MODULE_7_prop_types___default.a.string.isRequired,

    /*
     * Logged in user's theme
     */
    theme: __WEBPACK_IMPORTED_MODULE_7_prop_types___default.a.object.isRequired,

    /*
     * Function to hide the modal
     */
    hide: __WEBPACK_IMPORTED_MODULE_7_prop_types___default.a.func.isRequired,

    actions: __WEBPACK_IMPORTED_MODULE_7_prop_types___default.a.shape({

        /*
         * Action to start a meeting
         */
        startMeeting: __WEBPACK_IMPORTED_MODULE_7_prop_types___default.a.func.isRequired
    }).isRequired
};
/* harmony default export */ __webpack_exports__["a"] = ShareMeetingModal;


var getStyle = __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_8_mattermost_redux_utils_theme_utils__["makeStyleFromTheme"])(function (theme) {
    return {
        title: {
            margin: '5px 0 0 0',
            fontSize: '17px'
        },
        label: {
            top: '6px'
        },
        error: {
            color: '#811519',
            marginTop: '10px',
            fontFamily: 'Open Sans',
            fontWeight: 'normal',
            fontSize: '14px',
            lineHeight: '19px'
        },
        meetingId: {
            marginTop: '55px'
        }
    };
});

/***/ }),
/* 90 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony default export */ __webpack_exports__["a"] = {
    VIDEO_CAMERA: "<svg width='16px' height='12px' viewBox='0 0 16 12' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'> <g stroke='none' stroke-width='1' fill='inherit' fill-rule='evenodd'> <g transform='translate(-696.000000, -34.000000)' fill-rule='nonzero' fill='inherit'> <g transform='translate(-1.000000, 0.000000)'> <g transform='translate(687.000000, 22.000000)'> <g transform='translate(10.000000, 12.000000)'> <path d='M15.105,1.447 L12,3 L12,1 C12,0.447 11.553,0 11,0 L1,0 C0.447,0 0,0.447 0,1 L0,11 C0,11.553 0.447,12 1,12 L11,12 C11.553,12 12,11.553 12,11 L12,9 L15.105,10.553 C15.6,10.8 16,10.553 16,10 L16,2 C16,1.447 15.6,1.2 15.105,1.447 Z M12.895,7.211 C12.612,7.07 12.306,7 12,7 L10.5,7 C10.224,7 10,7.224 10,7.5 L10,10 L2,10 L2,2 L10,2 L10,4.5 C10,4.776 10.224,5 10.5,5 L12,5 C12.306,5 12.612,4.93 12.895,4.789 L14,4.236 L14,7.763 L12.895,7.211 Z'></path> </g> </g> </g> </g> </g> </svg>",
    VIDEO_CAMERA_2: "<svg width='27px' height='14px' viewBox='0 0 19 10' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'><title>icon video small</title> <desc>Created with Sketch.</desc><defs><linearGradient x1='50%' y1='0%' x2='50%' y2='100%' id='linearGradient-1'><stop stop-color='#FFFFFF' offset='0%'></stop><stop stop-color='#F4F4F4' offset='100%'></stop></linearGradient></defs><g id='v2' stroke='none' stroke-width='1' fill='inherit' fill-rule='evenodd'><g id='zoom-bot-&amp;-drop-down' transform='translate(-443.000000, -250.000000)'><g id='zoom-bot---share-meeting' transform='translate(340.000000, 98.000000)'><g id='Send-Button' transform='translate(83.000000, 136.000000)'><g id='icon-video-small' transform='translate(20.000000, 16.000000)'><path d='M1,0 L10,0 L10,0 C12.209139,-4.05812251e-16 14,1.790861 14,4 L14,9 L14,9 C14,9.55228475 13.5522847,10 13,10 L4,10 L4,10 C1.790861,10 2.705415e-16,8.209139 0,6 L0,1 L0,1 C-6.76353751e-17,0.44771525 0.44771525,1.01453063e-16 1,0 Z' id='Rectangle-4' fill='inherit'></path><path d='M15.3667766,2.86236308 L17.3667766,1.22606168 L17.3667766,1.22606168 C17.794228,0.876342075 18.4242495,0.93935609 18.7739691,1.36680742 C18.9201398,1.54546732 19,1.76919482 19,2.00003079 L19,8.99999935 L19,8.99999935 C19,9.5522841 18.5522847,9.99999935 18,9.99999935 C17.769164,9.99999935 17.5454365,9.92013917 17.3667766,9.77396845 L15.3667766,8.13766705 L15.3667766,8.13766705 C15.1346326,7.94773826 15,7.66363761 15,7.36369795 L15,3.63633218 L15,3.63633218 C15,3.33639253 15.1346326,3.05229188 15.3667766,2.86236308 Z' id='Rectangle-5' fill='inherit'></path></g></g></g></g></g></svg>",
    VIDEO_CAMERA_3: "<svg width='19px' height='10px' viewBox='0 0 19 10' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'><title>icon video small</title><desc>Created with Sketch.</desc><defs><linearGradient x1='50%' y1='0%' x2='50%' y2='100%' id='linearGradient-1'><stop stop-color='#FFFFFF' offset='0%'></stop><stop stop-color='#F4F4F4' offset='100%'></stop></linearGradient></defs><g id='v2' stroke='none' stroke-width='1' fill='inherit' fill-rule='evenodd'><g id='zoom-bot-&amp;-drop-down' transform='translate(-443.000000, -250.000000)'><g id='zoom-bot---share-meeting' transform='translate(340.000000, 98.000000)'><g id='Send-Button' transform='translate(83.000000, 136.000000)'><g id='icon-video-small' transform='translate(20.000000, 16.000000)'><path d='M1,0 L10,0 L10,0 C12.209139,-4.05812251e-16 14,1.790861 14,4 L14,9 L14,9 C14,9.55228475 13.5522847,10 13,10 L4,10 L4,10 C1.790861,10 2.705415e-16,8.209139 0,6 L0,1 L0,1 C-6.76353751e-17,0.44771525 0.44771525,1.01453063e-16 1,0 Z' id='Rectangle-4' fill='inherit'></path><path d='M15.3667766,2.86236308 L17.3667766,1.22606168 L17.3667766,1.22606168 C17.794228,0.876342075 18.4242495,0.93935609 18.7739691,1.36680742 C18.9201398,1.54546732 19,1.76919482 19,2.00003079 L19,8.99999935 L19,8.99999935 C19,9.5522841 18.5522847,9.99999935 18,9.99999935 C17.769164,9.99999935 17.5454365,9.92013917 17.3667766,9.77396845 L15.3667766,8.13766705 L15.3667766,8.13766705 C15.1346326,7.94773826 15,7.66363761 15,7.36369795 L15,3.63633218 L15,3.63633218 C15,3.33639253 15.1346326,3.05229188 15.3667766,2.86236308 Z' id='Rectangle-5' fill='inherit'></path></g></g></g></g></g></svg>",
    SHARE: "<svg width='27px' height='18px' viewBox='0 0 27 18' version='1.1' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'><title>icon share</title><desc>Created with Sketch.</desc><defs></defs><g id='v2' stroke='none' stroke-width='1' fill='inherit' fill-rule='evenodd'><g id='zoom-bot-&amp;-drop-down' transform='translate(-807.000000, -122.000000)' fill='inherit'><g id='Pop-up' transform='translate(787.000000, 50.000000)'><path d='M23,72 L44,72 L44,72 C45.6568542,72 47,73.3431458 47,75 L47,87 L47,87 C47,88.6568542 45.6568542,90 44,90 L23,90 C21.3431458,90 20,88.6568542 20,87 L20,75 L20,75 C20,73.3431458 21.3431458,72 23,72 L23,72 Z M35.8749836,82.2499851 C35.4322762,82.2499851 35.0416522,82.3867035 34.7031114,82.6601404 L32.7109287,81.4101434 C32.763012,81.1367065 32.763012,80.8632697 32.7109287,80.5898328 L34.7031114,79.3398358 C35.0416522,79.6132726 35.4322762,79.7499911 35.8749836,79.7499911 C36.3958158,79.7499911 36.8385229,79.5676999 37.2031054,79.2031174 C37.567688,78.8385348 37.7499791,78.3958277 37.7499791,77.8749955 C37.7499791,77.3541633 37.567688,76.9114563 37.2031054,76.5468737 C36.8385229,76.1822911 36.3958158,76 35.8749836,76 C35.3541514,76 34.9114443,76.1822911 34.5468618,76.5468737 C34.1822792,76.9114563 33.9999881,77.3541633 33.9999881,77.8749955 C33.9999881,78.0182243 34.013009,78.1549427 34.0390505,78.2851508 L32.0468677,79.5351478 C31.708327,79.261711 31.3177029,79.1249925 30.8749955,79.1249925 C30.3541633,79.1249925 29.9114563,79.3072837 29.5468737,79.6718662 C29.1822911,80.0364488 29,80.4791559 29,80.9999881 C29,81.5208203 29.1822911,81.9635273 29.5468737,82.3281099 C29.9114563,82.6926925 30.3541633,82.8749836 30.8749955,82.8749836 C31.3177029,82.8749836 31.708327,82.7382652 32.0468677,82.4648283 L34.0390505,83.7148254 C34.013009,83.8450335 33.9999881,83.9817519 33.9999881,84.1249806 C33.9999881,84.6458128 34.1822792,85.0885199 34.5468618,85.4531025 C34.9114443,85.817685 35.3541514,85.9999762 35.8749836,85.9999762 C36.3958158,85.9999762 36.8385229,85.817685 37.2031054,85.4531025 C37.567688,85.0885199 37.7499791,84.6458128 37.7499791,84.1249806 C37.7499791,83.6041484 37.567688,83.1614414 37.2031054,82.7968588 C36.8385229,82.4322762 36.3958158,82.2499851 35.8749836,82.2499851 Z' id='icon-share'></path></g></g></g></svg>"
};

/***/ }),
/* 91 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony export (immutable) */ __webpack_exports__["a"] = formatDate;
function formatDate(date) {
    var useMilitaryTime = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : false;

    var monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];

    var day = date.getDate();
    var monthIndex = date.getMonth();
    var hours = date.getHours();
    var minutes = date.getMinutes();

    var ampm = '';
    if (!useMilitaryTime) {
        ampm = ' AM';
        if (hours >= 12) {
            ampm = ' PM';
        }

        hours %= 12;
        if (!hours) {
            hours = 12;
        }
    }

    return monthNames[monthIndex] + ' ' + day + ' at ' + hours + ':' + minutes + ampm;
}

/***/ }),
/* 92 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_mattermost_redux_utils_user_utils__ = __webpack_require__(79);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_mattermost_redux_utils_user_utils___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_mattermost_redux_utils_user_utils__);
/* harmony export (immutable) */ __webpack_exports__["a"] = displayUsernameForUser;


function displayUsernameForUser(user, config) {
    if (user) {
        var nameFormat = config.TeammateNameDisplay;
        var name = user.username;
        if (nameFormat === 'nickname_full_name' && user.nickname && user.nickname !== '') {
            name = user.nickname;
        } else if ((user.first_name || user.last_name) && (nameFormat === 'nickname_full_name' || nameFormat === 'full_name')) {
            name = __webpack_require__.i(__WEBPACK_IMPORTED_MODULE_0_mattermost_redux_utils_user_utils__["getFullName"])(user);
        }

        return name;
    }

    return '';
}

/***/ }),
/* 93 */
/***/ (function(module, exports, __webpack_require__) {

module.exports = { "default": __webpack_require__(100), __esModule: true };

/***/ }),
/* 94 */
/***/ (function(module, exports, __webpack_require__) {

module.exports = { "default": __webpack_require__(101), __esModule: true };

/***/ }),
/* 95 */
/***/ (function(module, exports, __webpack_require__) {

module.exports = { "default": __webpack_require__(104), __esModule: true };

/***/ }),
/* 96 */
/***/ (function(module, exports, __webpack_require__) {

module.exports = { "default": __webpack_require__(105), __esModule: true };

/***/ }),
/* 97 */
/***/ (function(module, exports, __webpack_require__) {

module.exports = { "default": __webpack_require__(106), __esModule: true };

/***/ }),
/* 98 */
/***/ (function(module, exports, __webpack_require__) {

module.exports = { "default": __webpack_require__(107), __esModule: true };

/***/ }),
/* 99 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


exports.__esModule = true;

var _defineProperty = __webpack_require__(55);

var _defineProperty2 = _interopRequireDefault(_defineProperty);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.default = function (obj, key, value) {
  if (key in obj) {
    (0, _defineProperty2.default)(obj, key, {
      value: value,
      enumerable: true,
      configurable: true,
      writable: true
    });
  } else {
    obj[key] = value;
  }

  return obj;
};

/***/ }),
/* 100 */
/***/ (function(module, exports, __webpack_require__) {

__webpack_require__(133);
module.exports = __webpack_require__(1).Object.assign;


/***/ }),
/* 101 */
/***/ (function(module, exports, __webpack_require__) {

__webpack_require__(134);
var $Object = __webpack_require__(1).Object;
module.exports = function create(P, D) {
  return $Object.create(P, D);
};


/***/ }),
/* 102 */
/***/ (function(module, exports, __webpack_require__) {

__webpack_require__(135);
var $Object = __webpack_require__(1).Object;
module.exports = function defineProperty(it, key, desc) {
  return $Object.defineProperty(it, key, desc);
};


/***/ }),
/* 103 */
/***/ (function(module, exports, __webpack_require__) {

__webpack_require__(136);
module.exports = __webpack_require__(1).Object.getPrototypeOf;


/***/ }),
/* 104 */
/***/ (function(module, exports, __webpack_require__) {

__webpack_require__(137);
module.exports = __webpack_require__(1).Object.setPrototypeOf;


/***/ }),
/* 105 */
/***/ (function(module, exports, __webpack_require__) {

__webpack_require__(72);
__webpack_require__(73);
__webpack_require__(74);
__webpack_require__(138);
__webpack_require__(140);
__webpack_require__(141);
module.exports = __webpack_require__(1).Promise;


/***/ }),
/* 106 */
/***/ (function(module, exports, __webpack_require__) {

__webpack_require__(139);
__webpack_require__(72);
__webpack_require__(142);
__webpack_require__(143);
module.exports = __webpack_require__(1).Symbol;


/***/ }),
/* 107 */
/***/ (function(module, exports, __webpack_require__) {

__webpack_require__(73);
__webpack_require__(74);
module.exports = __webpack_require__(49).f('iterator');


/***/ }),
/* 108 */
/***/ (function(module, exports) {

module.exports = function () { /* empty */ };


/***/ }),
/* 109 */
/***/ (function(module, exports) {

module.exports = function (it, Constructor, name, forbiddenField) {
  if (!(it instanceof Constructor) || (forbiddenField !== undefined && forbiddenField in it)) {
    throw TypeError(name + ': incorrect invocation!');
  } return it;
};


/***/ }),
/* 110 */
/***/ (function(module, exports, __webpack_require__) {

// false -> Array#indexOf
// true  -> Array#includes
var toIObject = __webpack_require__(13);
var toLength = __webpack_require__(71);
var toAbsoluteIndex = __webpack_require__(130);
module.exports = function (IS_INCLUDES) {
  return function ($this, el, fromIndex) {
    var O = toIObject($this);
    var length = toLength(O.length);
    var index = toAbsoluteIndex(fromIndex, length);
    var value;
    // Array#includes uses SameValueZero equality algorithm
    // eslint-disable-next-line no-self-compare
    if (IS_INCLUDES && el != el) while (length > index) {
      value = O[index++];
      // eslint-disable-next-line no-self-compare
      if (value != value) return true;
    // Array#indexOf ignores holes, Array#includes - not
    } else for (;length > index; index++) if (IS_INCLUDES || index in O) {
      if (O[index] === el) return IS_INCLUDES || index || 0;
    } return !IS_INCLUDES && -1;
  };
};


/***/ }),
/* 111 */
/***/ (function(module, exports, __webpack_require__) {

// all enumerable object keys, includes symbols
var getKeys = __webpack_require__(27);
var gOPS = __webpack_require__(42);
var pIE = __webpack_require__(28);
module.exports = function (it) {
  var result = getKeys(it);
  var getSymbols = gOPS.f;
  if (getSymbols) {
    var symbols = getSymbols(it);
    var isEnum = pIE.f;
    var i = 0;
    var key;
    while (symbols.length > i) if (isEnum.call(it, key = symbols[i++])) result.push(key);
  } return result;
};


/***/ }),
/* 112 */
/***/ (function(module, exports, __webpack_require__) {

var ctx = __webpack_require__(17);
var call = __webpack_require__(116);
var isArrayIter = __webpack_require__(114);
var anObject = __webpack_require__(5);
var toLength = __webpack_require__(71);
var getIterFn = __webpack_require__(131);
var BREAK = {};
var RETURN = {};
var exports = module.exports = function (iterable, entries, fn, that, ITERATOR) {
  var iterFn = ITERATOR ? function () { return iterable; } : getIterFn(iterable);
  var f = ctx(fn, that, entries ? 2 : 1);
  var index = 0;
  var length, step, iterator, result;
  if (typeof iterFn != 'function') throw TypeError(iterable + ' is not iterable!');
  // fast case for arrays with default iterator
  if (isArrayIter(iterFn)) for (length = toLength(iterable.length); length > index; index++) {
    result = entries ? f(anObject(step = iterable[index])[0], step[1]) : f(iterable[index]);
    if (result === BREAK || result === RETURN) return result;
  } else for (iterator = iterFn.call(iterable); !(step = iterator.next()).done;) {
    result = call(iterator, f, step.value, entries);
    if (result === BREAK || result === RETURN) return result;
  }
};
exports.BREAK = BREAK;
exports.RETURN = RETURN;


/***/ }),
/* 113 */
/***/ (function(module, exports) {

// fast apply, http://jsperf.lnkit.com/fast-apply/5
module.exports = function (fn, args, that) {
  var un = that === undefined;
  switch (args.length) {
    case 0: return un ? fn()
                      : fn.call(that);
    case 1: return un ? fn(args[0])
                      : fn.call(that, args[0]);
    case 2: return un ? fn(args[0], args[1])
                      : fn.call(that, args[0], args[1]);
    case 3: return un ? fn(args[0], args[1], args[2])
                      : fn.call(that, args[0], args[1], args[2]);
    case 4: return un ? fn(args[0], args[1], args[2], args[3])
                      : fn.call(that, args[0], args[1], args[2], args[3]);
  } return fn.apply(that, args);
};


/***/ }),
/* 114 */
/***/ (function(module, exports, __webpack_require__) {

// check on default Array iterator
var Iterators = __webpack_require__(18);
var ITERATOR = __webpack_require__(3)('iterator');
var ArrayProto = Array.prototype;

module.exports = function (it) {
  return it !== undefined && (Iterators.Array === it || ArrayProto[ITERATOR] === it);
};


/***/ }),
/* 115 */
/***/ (function(module, exports, __webpack_require__) {

// 7.2.2 IsArray(argument)
var cof = __webpack_require__(16);
module.exports = Array.isArray || function isArray(arg) {
  return cof(arg) == 'Array';
};


/***/ }),
/* 116 */
/***/ (function(module, exports, __webpack_require__) {

// call something on iterator step with safe closing on error
var anObject = __webpack_require__(5);
module.exports = function (iterator, fn, value, entries) {
  try {
    return entries ? fn(anObject(value)[0], value[1]) : fn(value);
  // 7.4.6 IteratorClose(iterator, completion)
  } catch (e) {
    var ret = iterator['return'];
    if (ret !== undefined) anObject(ret.call(iterator));
    throw e;
  }
};


/***/ }),
/* 117 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

var create = __webpack_require__(41);
var descriptor = __webpack_require__(29);
var setToStringTag = __webpack_require__(30);
var IteratorPrototype = {};

// 25.1.2.1.1 %IteratorPrototype%[@@iterator]()
__webpack_require__(9)(IteratorPrototype, __webpack_require__(3)('iterator'), function () { return this; });

module.exports = function (Constructor, NAME, next) {
  Constructor.prototype = create(IteratorPrototype, { next: descriptor(1, next) });
  setToStringTag(Constructor, NAME + ' Iterator');
};


/***/ }),
/* 118 */
/***/ (function(module, exports, __webpack_require__) {

var ITERATOR = __webpack_require__(3)('iterator');
var SAFE_CLOSING = false;

try {
  var riter = [7][ITERATOR]();
  riter['return'] = function () { SAFE_CLOSING = true; };
  // eslint-disable-next-line no-throw-literal
  Array.from(riter, function () { throw 2; });
} catch (e) { /* empty */ }

module.exports = function (exec, skipClosing) {
  if (!skipClosing && !SAFE_CLOSING) return false;
  var safe = false;
  try {
    var arr = [7];
    var iter = arr[ITERATOR]();
    iter.next = function () { return { done: safe = true }; };
    arr[ITERATOR] = function () { return iter; };
    exec(arr);
  } catch (e) { /* empty */ }
  return safe;
};


/***/ }),
/* 119 */
/***/ (function(module, exports) {

module.exports = function (done, value) {
  return { value: value, done: !!done };
};


/***/ }),
/* 120 */
/***/ (function(module, exports, __webpack_require__) {

var META = __webpack_require__(31)('meta');
var isObject = __webpack_require__(10);
var has = __webpack_require__(8);
var setDesc = __webpack_require__(7).f;
var id = 0;
var isExtensible = Object.isExtensible || function () {
  return true;
};
var FREEZE = !__webpack_require__(12)(function () {
  return isExtensible(Object.preventExtensions({}));
});
var setMeta = function (it) {
  setDesc(it, META, { value: {
    i: 'O' + ++id, // object ID
    w: {}          // weak collections IDs
  } });
};
var fastKey = function (it, create) {
  // return primitive with prefix
  if (!isObject(it)) return typeof it == 'symbol' ? it : (typeof it == 'string' ? 'S' : 'P') + it;
  if (!has(it, META)) {
    // can't set metadata to uncaught frozen object
    if (!isExtensible(it)) return 'F';
    // not necessary to add metadata
    if (!create) return 'E';
    // add missing metadata
    setMeta(it);
  // return object ID
  } return it[META].i;
};
var getWeak = function (it, create) {
  if (!has(it, META)) {
    // can't set metadata to uncaught frozen object
    if (!isExtensible(it)) return true;
    // not necessary to add metadata
    if (!create) return false;
    // add missing metadata
    setMeta(it);
  // return hash weak collections IDs
  } return it[META].w;
};
// add metadata on freeze-family methods calling
var onFreeze = function (it) {
  if (FREEZE && meta.NEED && isExtensible(it) && !has(it, META)) setMeta(it);
  return it;
};
var meta = module.exports = {
  KEY: META,
  NEED: false,
  fastKey: fastKey,
  getWeak: getWeak,
  onFreeze: onFreeze
};


/***/ }),
/* 121 */
/***/ (function(module, exports, __webpack_require__) {

var global = __webpack_require__(2);
var macrotask = __webpack_require__(70).set;
var Observer = global.MutationObserver || global.WebKitMutationObserver;
var process = global.process;
var Promise = global.Promise;
var isNode = __webpack_require__(16)(process) == 'process';

module.exports = function () {
  var head, last, notify;

  var flush = function () {
    var parent, fn;
    if (isNode && (parent = process.domain)) parent.exit();
    while (head) {
      fn = head.fn;
      head = head.next;
      try {
        fn();
      } catch (e) {
        if (head) notify();
        else last = undefined;
        throw e;
      }
    } last = undefined;
    if (parent) parent.enter();
  };

  // Node.js
  if (isNode) {
    notify = function () {
      process.nextTick(flush);
    };
  // browsers with MutationObserver
  } else if (Observer) {
    var toggle = true;
    var node = document.createTextNode('');
    new Observer(flush).observe(node, { characterData: true }); // eslint-disable-line no-new
    notify = function () {
      node.data = toggle = !toggle;
    };
  // environments with maybe non-completely correct, but existent Promise
  } else if (Promise && Promise.resolve) {
    var promise = Promise.resolve();
    notify = function () {
      promise.then(flush);
    };
  // for other environments - macrotask based on:
  // - setImmediate
  // - MessageChannel
  // - window.postMessag
  // - onreadystatechange
  // - setTimeout
  } else {
    notify = function () {
      // strange IE + webpack dev server bug - use .call(global)
      macrotask.call(global, flush);
    };
  }

  return function (fn) {
    var task = { fn: fn, next: undefined };
    if (last) last.next = task;
    if (!head) {
      head = task;
      notify();
    } last = task;
  };
};


/***/ }),
/* 122 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

// 19.1.2.1 Object.assign(target, source, ...)
var getKeys = __webpack_require__(27);
var gOPS = __webpack_require__(42);
var pIE = __webpack_require__(28);
var toObject = __webpack_require__(46);
var IObject = __webpack_require__(60);
var $assign = Object.assign;

// should work with symbols and should have deterministic property order (V8 bug)
module.exports = !$assign || __webpack_require__(12)(function () {
  var A = {};
  var B = {};
  // eslint-disable-next-line no-undef
  var S = Symbol();
  var K = 'abcdefghijklmnopqrst';
  A[S] = 7;
  K.split('').forEach(function (k) { B[k] = k; });
  return $assign({}, A)[S] != 7 || Object.keys($assign({}, B)).join('') != K;
}) ? function assign(target, source) { // eslint-disable-line no-unused-vars
  var T = toObject(target);
  var aLen = arguments.length;
  var index = 1;
  var getSymbols = gOPS.f;
  var isEnum = pIE.f;
  while (aLen > index) {
    var S = IObject(arguments[index++]);
    var keys = getSymbols ? getKeys(S).concat(getSymbols(S)) : getKeys(S);
    var length = keys.length;
    var j = 0;
    var key;
    while (length > j) if (isEnum.call(S, key = keys[j++])) T[key] = S[key];
  } return T;
} : $assign;


/***/ }),
/* 123 */
/***/ (function(module, exports, __webpack_require__) {

var dP = __webpack_require__(7);
var anObject = __webpack_require__(5);
var getKeys = __webpack_require__(27);

module.exports = __webpack_require__(6) ? Object.defineProperties : function defineProperties(O, Properties) {
  anObject(O);
  var keys = getKeys(Properties);
  var length = keys.length;
  var i = 0;
  var P;
  while (length > i) dP.f(O, P = keys[i++], Properties[P]);
  return O;
};


/***/ }),
/* 124 */
/***/ (function(module, exports, __webpack_require__) {

// fallback for IE11 buggy Object.getOwnPropertyNames with iframe and window
var toIObject = __webpack_require__(13);
var gOPN = __webpack_require__(63).f;
var toString = {}.toString;

var windowNames = typeof window == 'object' && window && Object.getOwnPropertyNames
  ? Object.getOwnPropertyNames(window) : [];

var getWindowNames = function (it) {
  try {
    return gOPN(it);
  } catch (e) {
    return windowNames.slice();
  }
};

module.exports.f = function getOwnPropertyNames(it) {
  return windowNames && toString.call(it) == '[object Window]' ? getWindowNames(it) : gOPN(toIObject(it));
};


/***/ }),
/* 125 */
/***/ (function(module, exports, __webpack_require__) {

// most Object methods by ES6 should accept primitives
var $export = __webpack_require__(4);
var core = __webpack_require__(1);
var fails = __webpack_require__(12);
module.exports = function (KEY, exec) {
  var fn = (core.Object || {})[KEY] || Object[KEY];
  var exp = {};
  exp[KEY] = exec(fn);
  $export($export.S + $export.F * fails(function () { fn(1); }), 'Object', exp);
};


/***/ }),
/* 126 */
/***/ (function(module, exports, __webpack_require__) {

var hide = __webpack_require__(9);
module.exports = function (target, src, safe) {
  for (var key in src) {
    if (safe && target[key]) target[key] = src[key];
    else hide(target, key, src[key]);
  } return target;
};


/***/ }),
/* 127 */
/***/ (function(module, exports, __webpack_require__) {

// Works with __proto__ only. Old v8 can't work with null proto objects.
/* eslint-disable no-proto */
var isObject = __webpack_require__(10);
var anObject = __webpack_require__(5);
var check = function (O, proto) {
  anObject(O);
  if (!isObject(proto) && proto !== null) throw TypeError(proto + ": can't set as prototype!");
};
module.exports = {
  set: Object.setPrototypeOf || ('__proto__' in {} ? // eslint-disable-line
    function (test, buggy, set) {
      try {
        set = __webpack_require__(17)(Function.call, __webpack_require__(62).f(Object.prototype, '__proto__').set, 2);
        set(test, []);
        buggy = !(test instanceof Array);
      } catch (e) { buggy = true; }
      return function setPrototypeOf(O, proto) {
        check(O, proto);
        if (buggy) O.__proto__ = proto;
        else set(O, proto);
        return O;
      };
    }({}, false) : undefined),
  check: check
};


/***/ }),
/* 128 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

var global = __webpack_require__(2);
var core = __webpack_require__(1);
var dP = __webpack_require__(7);
var DESCRIPTORS = __webpack_require__(6);
var SPECIES = __webpack_require__(3)('species');

module.exports = function (KEY) {
  var C = typeof core[KEY] == 'function' ? core[KEY] : global[KEY];
  if (DESCRIPTORS && C && !C[SPECIES]) dP.f(C, SPECIES, {
    configurable: true,
    get: function () { return this; }
  });
};


/***/ }),
/* 129 */
/***/ (function(module, exports, __webpack_require__) {

var toInteger = __webpack_require__(45);
var defined = __webpack_require__(37);
// true  -> String#at
// false -> String#codePointAt
module.exports = function (TO_STRING) {
  return function (that, pos) {
    var s = String(defined(that));
    var i = toInteger(pos);
    var l = s.length;
    var a, b;
    if (i < 0 || i >= l) return TO_STRING ? '' : undefined;
    a = s.charCodeAt(i);
    return a < 0xd800 || a > 0xdbff || i + 1 === l || (b = s.charCodeAt(i + 1)) < 0xdc00 || b > 0xdfff
      ? TO_STRING ? s.charAt(i) : a
      : TO_STRING ? s.slice(i, i + 2) : (a - 0xd800 << 10) + (b - 0xdc00) + 0x10000;
  };
};


/***/ }),
/* 130 */
/***/ (function(module, exports, __webpack_require__) {

var toInteger = __webpack_require__(45);
var max = Math.max;
var min = Math.min;
module.exports = function (index, length) {
  index = toInteger(index);
  return index < 0 ? max(index + length, 0) : min(index, length);
};


/***/ }),
/* 131 */
/***/ (function(module, exports, __webpack_require__) {

var classof = __webpack_require__(57);
var ITERATOR = __webpack_require__(3)('iterator');
var Iterators = __webpack_require__(18);
module.exports = __webpack_require__(1).getIteratorMethod = function (it) {
  if (it != undefined) return it[ITERATOR]
    || it['@@iterator']
    || Iterators[classof(it)];
};


/***/ }),
/* 132 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

var addToUnscopables = __webpack_require__(108);
var step = __webpack_require__(119);
var Iterators = __webpack_require__(18);
var toIObject = __webpack_require__(13);

// 22.1.3.4 Array.prototype.entries()
// 22.1.3.13 Array.prototype.keys()
// 22.1.3.29 Array.prototype.values()
// 22.1.3.30 Array.prototype[@@iterator]()
module.exports = __webpack_require__(61)(Array, 'Array', function (iterated, kind) {
  this._t = toIObject(iterated); // target
  this._i = 0;                   // next index
  this._k = kind;                // kind
// 22.1.5.2.1 %ArrayIteratorPrototype%.next()
}, function () {
  var O = this._t;
  var kind = this._k;
  var index = this._i++;
  if (!O || index >= O.length) {
    this._t = undefined;
    return step(1);
  }
  if (kind == 'keys') return step(0, index);
  if (kind == 'values') return step(0, O[index]);
  return step(0, [index, O[index]]);
}, 'values');

// argumentsList[@@iterator] is %ArrayProto_values% (9.4.4.6, 9.4.4.7)
Iterators.Arguments = Iterators.Array;

addToUnscopables('keys');
addToUnscopables('values');
addToUnscopables('entries');


/***/ }),
/* 133 */
/***/ (function(module, exports, __webpack_require__) {

// 19.1.3.1 Object.assign(target, source)
var $export = __webpack_require__(4);

$export($export.S + $export.F, 'Object', { assign: __webpack_require__(122) });


/***/ }),
/* 134 */
/***/ (function(module, exports, __webpack_require__) {

var $export = __webpack_require__(4);
// 19.1.2.2 / 15.2.3.5 Object.create(O [, Properties])
$export($export.S, 'Object', { create: __webpack_require__(41) });


/***/ }),
/* 135 */
/***/ (function(module, exports, __webpack_require__) {

var $export = __webpack_require__(4);
// 19.1.2.4 / 15.2.3.6 Object.defineProperty(O, P, Attributes)
$export($export.S + $export.F * !__webpack_require__(6), 'Object', { defineProperty: __webpack_require__(7).f });


/***/ }),
/* 136 */
/***/ (function(module, exports, __webpack_require__) {

// 19.1.2.9 Object.getPrototypeOf(O)
var toObject = __webpack_require__(46);
var $getPrototypeOf = __webpack_require__(64);

__webpack_require__(125)('getPrototypeOf', function () {
  return function getPrototypeOf(it) {
    return $getPrototypeOf(toObject(it));
  };
});


/***/ }),
/* 137 */
/***/ (function(module, exports, __webpack_require__) {

// 19.1.3.19 Object.setPrototypeOf(O, proto)
var $export = __webpack_require__(4);
$export($export.S, 'Object', { setPrototypeOf: __webpack_require__(127).set });


/***/ }),
/* 138 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

var LIBRARY = __webpack_require__(26);
var global = __webpack_require__(2);
var ctx = __webpack_require__(17);
var classof = __webpack_require__(57);
var $export = __webpack_require__(4);
var isObject = __webpack_require__(10);
var aFunction = __webpack_require__(25);
var anInstance = __webpack_require__(109);
var forOf = __webpack_require__(112);
var speciesConstructor = __webpack_require__(69);
var task = __webpack_require__(70).set;
var microtask = __webpack_require__(121)();
var newPromiseCapabilityModule = __webpack_require__(40);
var perform = __webpack_require__(66);
var promiseResolve = __webpack_require__(67);
var PROMISE = 'Promise';
var TypeError = global.TypeError;
var process = global.process;
var $Promise = global[PROMISE];
var isNode = classof(process) == 'process';
var empty = function () { /* empty */ };
var Internal, newGenericPromiseCapability, OwnPromiseCapability, Wrapper;
var newPromiseCapability = newGenericPromiseCapability = newPromiseCapabilityModule.f;

var USE_NATIVE = !!function () {
  try {
    // correct subclassing with @@species support
    var promise = $Promise.resolve(1);
    var FakePromise = (promise.constructor = {})[__webpack_require__(3)('species')] = function (exec) {
      exec(empty, empty);
    };
    // unhandled rejections tracking support, NodeJS Promise without it fails @@species test
    return (isNode || typeof PromiseRejectionEvent == 'function') && promise.then(empty) instanceof FakePromise;
  } catch (e) { /* empty */ }
}();

// helpers
var isThenable = function (it) {
  var then;
  return isObject(it) && typeof (then = it.then) == 'function' ? then : false;
};
var notify = function (promise, isReject) {
  if (promise._n) return;
  promise._n = true;
  var chain = promise._c;
  microtask(function () {
    var value = promise._v;
    var ok = promise._s == 1;
    var i = 0;
    var run = function (reaction) {
      var handler = ok ? reaction.ok : reaction.fail;
      var resolve = reaction.resolve;
      var reject = reaction.reject;
      var domain = reaction.domain;
      var result, then;
      try {
        if (handler) {
          if (!ok) {
            if (promise._h == 2) onHandleUnhandled(promise);
            promise._h = 1;
          }
          if (handler === true) result = value;
          else {
            if (domain) domain.enter();
            result = handler(value);
            if (domain) domain.exit();
          }
          if (result === reaction.promise) {
            reject(TypeError('Promise-chain cycle'));
          } else if (then = isThenable(result)) {
            then.call(result, resolve, reject);
          } else resolve(result);
        } else reject(value);
      } catch (e) {
        reject(e);
      }
    };
    while (chain.length > i) run(chain[i++]); // variable length - can't use forEach
    promise._c = [];
    promise._n = false;
    if (isReject && !promise._h) onUnhandled(promise);
  });
};
var onUnhandled = function (promise) {
  task.call(global, function () {
    var value = promise._v;
    var unhandled = isUnhandled(promise);
    var result, handler, console;
    if (unhandled) {
      result = perform(function () {
        if (isNode) {
          process.emit('unhandledRejection', value, promise);
        } else if (handler = global.onunhandledrejection) {
          handler({ promise: promise, reason: value });
        } else if ((console = global.console) && console.error) {
          console.error('Unhandled promise rejection', value);
        }
      });
      // Browsers should not trigger `rejectionHandled` event if it was handled here, NodeJS - should
      promise._h = isNode || isUnhandled(promise) ? 2 : 1;
    } promise._a = undefined;
    if (unhandled && result.e) throw result.v;
  });
};
var isUnhandled = function (promise) {
  if (promise._h == 1) return false;
  var chain = promise._a || promise._c;
  var i = 0;
  var reaction;
  while (chain.length > i) {
    reaction = chain[i++];
    if (reaction.fail || !isUnhandled(reaction.promise)) return false;
  } return true;
};
var onHandleUnhandled = function (promise) {
  task.call(global, function () {
    var handler;
    if (isNode) {
      process.emit('rejectionHandled', promise);
    } else if (handler = global.onrejectionhandled) {
      handler({ promise: promise, reason: promise._v });
    }
  });
};
var $reject = function (value) {
  var promise = this;
  if (promise._d) return;
  promise._d = true;
  promise = promise._w || promise; // unwrap
  promise._v = value;
  promise._s = 2;
  if (!promise._a) promise._a = promise._c.slice();
  notify(promise, true);
};
var $resolve = function (value) {
  var promise = this;
  var then;
  if (promise._d) return;
  promise._d = true;
  promise = promise._w || promise; // unwrap
  try {
    if (promise === value) throw TypeError("Promise can't be resolved itself");
    if (then = isThenable(value)) {
      microtask(function () {
        var wrapper = { _w: promise, _d: false }; // wrap
        try {
          then.call(value, ctx($resolve, wrapper, 1), ctx($reject, wrapper, 1));
        } catch (e) {
          $reject.call(wrapper, e);
        }
      });
    } else {
      promise._v = value;
      promise._s = 1;
      notify(promise, false);
    }
  } catch (e) {
    $reject.call({ _w: promise, _d: false }, e); // wrap
  }
};

// constructor polyfill
if (!USE_NATIVE) {
  // 25.4.3.1 Promise(executor)
  $Promise = function Promise(executor) {
    anInstance(this, $Promise, PROMISE, '_h');
    aFunction(executor);
    Internal.call(this);
    try {
      executor(ctx($resolve, this, 1), ctx($reject, this, 1));
    } catch (err) {
      $reject.call(this, err);
    }
  };
  // eslint-disable-next-line no-unused-vars
  Internal = function Promise(executor) {
    this._c = [];             // <- awaiting reactions
    this._a = undefined;      // <- checked in isUnhandled reactions
    this._s = 0;              // <- state
    this._d = false;          // <- done
    this._v = undefined;      // <- value
    this._h = 0;              // <- rejection state, 0 - default, 1 - handled, 2 - unhandled
    this._n = false;          // <- notify
  };
  Internal.prototype = __webpack_require__(126)($Promise.prototype, {
    // 25.4.5.3 Promise.prototype.then(onFulfilled, onRejected)
    then: function then(onFulfilled, onRejected) {
      var reaction = newPromiseCapability(speciesConstructor(this, $Promise));
      reaction.ok = typeof onFulfilled == 'function' ? onFulfilled : true;
      reaction.fail = typeof onRejected == 'function' && onRejected;
      reaction.domain = isNode ? process.domain : undefined;
      this._c.push(reaction);
      if (this._a) this._a.push(reaction);
      if (this._s) notify(this, false);
      return reaction.promise;
    },
    // 25.4.5.1 Promise.prototype.catch(onRejected)
    'catch': function (onRejected) {
      return this.then(undefined, onRejected);
    }
  });
  OwnPromiseCapability = function () {
    var promise = new Internal();
    this.promise = promise;
    this.resolve = ctx($resolve, promise, 1);
    this.reject = ctx($reject, promise, 1);
  };
  newPromiseCapabilityModule.f = newPromiseCapability = function (C) {
    return C === $Promise || C === Wrapper
      ? new OwnPromiseCapability(C)
      : newGenericPromiseCapability(C);
  };
}

$export($export.G + $export.W + $export.F * !USE_NATIVE, { Promise: $Promise });
__webpack_require__(30)($Promise, PROMISE);
__webpack_require__(128)(PROMISE);
Wrapper = __webpack_require__(1)[PROMISE];

// statics
$export($export.S + $export.F * !USE_NATIVE, PROMISE, {
  // 25.4.4.5 Promise.reject(r)
  reject: function reject(r) {
    var capability = newPromiseCapability(this);
    var $$reject = capability.reject;
    $$reject(r);
    return capability.promise;
  }
});
$export($export.S + $export.F * (LIBRARY || !USE_NATIVE), PROMISE, {
  // 25.4.4.6 Promise.resolve(x)
  resolve: function resolve(x) {
    return promiseResolve(LIBRARY && this === Wrapper ? $Promise : this, x);
  }
});
$export($export.S + $export.F * !(USE_NATIVE && __webpack_require__(118)(function (iter) {
  $Promise.all(iter)['catch'](empty);
})), PROMISE, {
  // 25.4.4.1 Promise.all(iterable)
  all: function all(iterable) {
    var C = this;
    var capability = newPromiseCapability(C);
    var resolve = capability.resolve;
    var reject = capability.reject;
    var result = perform(function () {
      var values = [];
      var index = 0;
      var remaining = 1;
      forOf(iterable, false, function (promise) {
        var $index = index++;
        var alreadyCalled = false;
        values.push(undefined);
        remaining++;
        C.resolve(promise).then(function (value) {
          if (alreadyCalled) return;
          alreadyCalled = true;
          values[$index] = value;
          --remaining || resolve(values);
        }, reject);
      });
      --remaining || resolve(values);
    });
    if (result.e) reject(result.v);
    return capability.promise;
  },
  // 25.4.4.4 Promise.race(iterable)
  race: function race(iterable) {
    var C = this;
    var capability = newPromiseCapability(C);
    var reject = capability.reject;
    var result = perform(function () {
      forOf(iterable, false, function (promise) {
        C.resolve(promise).then(capability.resolve, reject);
      });
    });
    if (result.e) reject(result.v);
    return capability.promise;
  }
});


/***/ }),
/* 139 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

// ECMAScript 6 symbols shim
var global = __webpack_require__(2);
var has = __webpack_require__(8);
var DESCRIPTORS = __webpack_require__(6);
var $export = __webpack_require__(4);
var redefine = __webpack_require__(68);
var META = __webpack_require__(120).KEY;
var $fails = __webpack_require__(12);
var shared = __webpack_require__(44);
var setToStringTag = __webpack_require__(30);
var uid = __webpack_require__(31);
var wks = __webpack_require__(3);
var wksExt = __webpack_require__(49);
var wksDefine = __webpack_require__(48);
var enumKeys = __webpack_require__(111);
var isArray = __webpack_require__(115);
var anObject = __webpack_require__(5);
var toIObject = __webpack_require__(13);
var toPrimitive = __webpack_require__(47);
var createDesc = __webpack_require__(29);
var _create = __webpack_require__(41);
var gOPNExt = __webpack_require__(124);
var $GOPD = __webpack_require__(62);
var $DP = __webpack_require__(7);
var $keys = __webpack_require__(27);
var gOPD = $GOPD.f;
var dP = $DP.f;
var gOPN = gOPNExt.f;
var $Symbol = global.Symbol;
var $JSON = global.JSON;
var _stringify = $JSON && $JSON.stringify;
var PROTOTYPE = 'prototype';
var HIDDEN = wks('_hidden');
var TO_PRIMITIVE = wks('toPrimitive');
var isEnum = {}.propertyIsEnumerable;
var SymbolRegistry = shared('symbol-registry');
var AllSymbols = shared('symbols');
var OPSymbols = shared('op-symbols');
var ObjectProto = Object[PROTOTYPE];
var USE_NATIVE = typeof $Symbol == 'function';
var QObject = global.QObject;
// Don't use setters in Qt Script, https://github.com/zloirock/core-js/issues/173
var setter = !QObject || !QObject[PROTOTYPE] || !QObject[PROTOTYPE].findChild;

// fallback for old Android, https://code.google.com/p/v8/issues/detail?id=687
var setSymbolDesc = DESCRIPTORS && $fails(function () {
  return _create(dP({}, 'a', {
    get: function () { return dP(this, 'a', { value: 7 }).a; }
  })).a != 7;
}) ? function (it, key, D) {
  var protoDesc = gOPD(ObjectProto, key);
  if (protoDesc) delete ObjectProto[key];
  dP(it, key, D);
  if (protoDesc && it !== ObjectProto) dP(ObjectProto, key, protoDesc);
} : dP;

var wrap = function (tag) {
  var sym = AllSymbols[tag] = _create($Symbol[PROTOTYPE]);
  sym._k = tag;
  return sym;
};

var isSymbol = USE_NATIVE && typeof $Symbol.iterator == 'symbol' ? function (it) {
  return typeof it == 'symbol';
} : function (it) {
  return it instanceof $Symbol;
};

var $defineProperty = function defineProperty(it, key, D) {
  if (it === ObjectProto) $defineProperty(OPSymbols, key, D);
  anObject(it);
  key = toPrimitive(key, true);
  anObject(D);
  if (has(AllSymbols, key)) {
    if (!D.enumerable) {
      if (!has(it, HIDDEN)) dP(it, HIDDEN, createDesc(1, {}));
      it[HIDDEN][key] = true;
    } else {
      if (has(it, HIDDEN) && it[HIDDEN][key]) it[HIDDEN][key] = false;
      D = _create(D, { enumerable: createDesc(0, false) });
    } return setSymbolDesc(it, key, D);
  } return dP(it, key, D);
};
var $defineProperties = function defineProperties(it, P) {
  anObject(it);
  var keys = enumKeys(P = toIObject(P));
  var i = 0;
  var l = keys.length;
  var key;
  while (l > i) $defineProperty(it, key = keys[i++], P[key]);
  return it;
};
var $create = function create(it, P) {
  return P === undefined ? _create(it) : $defineProperties(_create(it), P);
};
var $propertyIsEnumerable = function propertyIsEnumerable(key) {
  var E = isEnum.call(this, key = toPrimitive(key, true));
  if (this === ObjectProto && has(AllSymbols, key) && !has(OPSymbols, key)) return false;
  return E || !has(this, key) || !has(AllSymbols, key) || has(this, HIDDEN) && this[HIDDEN][key] ? E : true;
};
var $getOwnPropertyDescriptor = function getOwnPropertyDescriptor(it, key) {
  it = toIObject(it);
  key = toPrimitive(key, true);
  if (it === ObjectProto && has(AllSymbols, key) && !has(OPSymbols, key)) return;
  var D = gOPD(it, key);
  if (D && has(AllSymbols, key) && !(has(it, HIDDEN) && it[HIDDEN][key])) D.enumerable = true;
  return D;
};
var $getOwnPropertyNames = function getOwnPropertyNames(it) {
  var names = gOPN(toIObject(it));
  var result = [];
  var i = 0;
  var key;
  while (names.length > i) {
    if (!has(AllSymbols, key = names[i++]) && key != HIDDEN && key != META) result.push(key);
  } return result;
};
var $getOwnPropertySymbols = function getOwnPropertySymbols(it) {
  var IS_OP = it === ObjectProto;
  var names = gOPN(IS_OP ? OPSymbols : toIObject(it));
  var result = [];
  var i = 0;
  var key;
  while (names.length > i) {
    if (has(AllSymbols, key = names[i++]) && (IS_OP ? has(ObjectProto, key) : true)) result.push(AllSymbols[key]);
  } return result;
};

// 19.4.1.1 Symbol([description])
if (!USE_NATIVE) {
  $Symbol = function Symbol() {
    if (this instanceof $Symbol) throw TypeError('Symbol is not a constructor!');
    var tag = uid(arguments.length > 0 ? arguments[0] : undefined);
    var $set = function (value) {
      if (this === ObjectProto) $set.call(OPSymbols, value);
      if (has(this, HIDDEN) && has(this[HIDDEN], tag)) this[HIDDEN][tag] = false;
      setSymbolDesc(this, tag, createDesc(1, value));
    };
    if (DESCRIPTORS && setter) setSymbolDesc(ObjectProto, tag, { configurable: true, set: $set });
    return wrap(tag);
  };
  redefine($Symbol[PROTOTYPE], 'toString', function toString() {
    return this._k;
  });

  $GOPD.f = $getOwnPropertyDescriptor;
  $DP.f = $defineProperty;
  __webpack_require__(63).f = gOPNExt.f = $getOwnPropertyNames;
  __webpack_require__(28).f = $propertyIsEnumerable;
  __webpack_require__(42).f = $getOwnPropertySymbols;

  if (DESCRIPTORS && !__webpack_require__(26)) {
    redefine(ObjectProto, 'propertyIsEnumerable', $propertyIsEnumerable, true);
  }

  wksExt.f = function (name) {
    return wrap(wks(name));
  };
}

$export($export.G + $export.W + $export.F * !USE_NATIVE, { Symbol: $Symbol });

for (var es6Symbols = (
  // 19.4.2.2, 19.4.2.3, 19.4.2.4, 19.4.2.6, 19.4.2.8, 19.4.2.9, 19.4.2.10, 19.4.2.11, 19.4.2.12, 19.4.2.13, 19.4.2.14
  'hasInstance,isConcatSpreadable,iterator,match,replace,search,species,split,toPrimitive,toStringTag,unscopables'
).split(','), j = 0; es6Symbols.length > j;)wks(es6Symbols[j++]);

for (var wellKnownSymbols = $keys(wks.store), k = 0; wellKnownSymbols.length > k;) wksDefine(wellKnownSymbols[k++]);

$export($export.S + $export.F * !USE_NATIVE, 'Symbol', {
  // 19.4.2.1 Symbol.for(key)
  'for': function (key) {
    return has(SymbolRegistry, key += '')
      ? SymbolRegistry[key]
      : SymbolRegistry[key] = $Symbol(key);
  },
  // 19.4.2.5 Symbol.keyFor(sym)
  keyFor: function keyFor(sym) {
    if (!isSymbol(sym)) throw TypeError(sym + ' is not a symbol!');
    for (var key in SymbolRegistry) if (SymbolRegistry[key] === sym) return key;
  },
  useSetter: function () { setter = true; },
  useSimple: function () { setter = false; }
});

$export($export.S + $export.F * !USE_NATIVE, 'Object', {
  // 19.1.2.2 Object.create(O [, Properties])
  create: $create,
  // 19.1.2.4 Object.defineProperty(O, P, Attributes)
  defineProperty: $defineProperty,
  // 19.1.2.3 Object.defineProperties(O, Properties)
  defineProperties: $defineProperties,
  // 19.1.2.6 Object.getOwnPropertyDescriptor(O, P)
  getOwnPropertyDescriptor: $getOwnPropertyDescriptor,
  // 19.1.2.7 Object.getOwnPropertyNames(O)
  getOwnPropertyNames: $getOwnPropertyNames,
  // 19.1.2.8 Object.getOwnPropertySymbols(O)
  getOwnPropertySymbols: $getOwnPropertySymbols
});

// 24.3.2 JSON.stringify(value [, replacer [, space]])
$JSON && $export($export.S + $export.F * (!USE_NATIVE || $fails(function () {
  var S = $Symbol();
  // MS Edge converts symbol values to JSON as {}
  // WebKit converts symbol values to JSON as null
  // V8 throws on boxed symbols
  return _stringify([S]) != '[null]' || _stringify({ a: S }) != '{}' || _stringify(Object(S)) != '{}';
})), 'JSON', {
  stringify: function stringify(it) {
    if (it === undefined || isSymbol(it)) return; // IE8 returns string on undefined
    var args = [it];
    var i = 1;
    var replacer, $replacer;
    while (arguments.length > i) args.push(arguments[i++]);
    replacer = args[1];
    if (typeof replacer == 'function') $replacer = replacer;
    if ($replacer || !isArray(replacer)) replacer = function (key, value) {
      if ($replacer) value = $replacer.call(this, key, value);
      if (!isSymbol(value)) return value;
    };
    args[1] = replacer;
    return _stringify.apply($JSON, args);
  }
});

// 19.4.3.4 Symbol.prototype[@@toPrimitive](hint)
$Symbol[PROTOTYPE][TO_PRIMITIVE] || __webpack_require__(9)($Symbol[PROTOTYPE], TO_PRIMITIVE, $Symbol[PROTOTYPE].valueOf);
// 19.4.3.5 Symbol.prototype[@@toStringTag]
setToStringTag($Symbol, 'Symbol');
// 20.2.1.9 Math[@@toStringTag]
setToStringTag(Math, 'Math', true);
// 24.3.3 JSON[@@toStringTag]
setToStringTag(global.JSON, 'JSON', true);


/***/ }),
/* 140 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";
// https://github.com/tc39/proposal-promise-finally

var $export = __webpack_require__(4);
var core = __webpack_require__(1);
var global = __webpack_require__(2);
var speciesConstructor = __webpack_require__(69);
var promiseResolve = __webpack_require__(67);

$export($export.P + $export.R, 'Promise', { 'finally': function (onFinally) {
  var C = speciesConstructor(this, core.Promise || global.Promise);
  var isFunction = typeof onFinally == 'function';
  return this.then(
    isFunction ? function (x) {
      return promiseResolve(C, onFinally()).then(function () { return x; });
    } : onFinally,
    isFunction ? function (e) {
      return promiseResolve(C, onFinally()).then(function () { throw e; });
    } : onFinally
  );
} });


/***/ }),
/* 141 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

// https://github.com/tc39/proposal-promise-try
var $export = __webpack_require__(4);
var newPromiseCapability = __webpack_require__(40);
var perform = __webpack_require__(66);

$export($export.S, 'Promise', { 'try': function (callbackfn) {
  var promiseCapability = newPromiseCapability.f(this);
  var result = perform(callbackfn);
  (result.e ? promiseCapability.reject : promiseCapability.resolve)(result.v);
  return promiseCapability.promise;
} });


/***/ }),
/* 142 */
/***/ (function(module, exports, __webpack_require__) {

__webpack_require__(48)('asyncIterator');


/***/ }),
/* 143 */
/***/ (function(module, exports, __webpack_require__) {

__webpack_require__(48)('observable');


/***/ }),
/* 144 */
/***/ (function(module, exports, __webpack_require__) {


/**
 * Expose `Emitter`.
 */

if (true) {
  module.exports = Emitter;
}

/**
 * Initialize a new `Emitter`.
 *
 * @api public
 */

function Emitter(obj) {
  if (obj) return mixin(obj);
};

/**
 * Mixin the emitter properties.
 *
 * @param {Object} obj
 * @return {Object}
 * @api private
 */

function mixin(obj) {
  for (var key in Emitter.prototype) {
    obj[key] = Emitter.prototype[key];
  }
  return obj;
}

/**
 * Listen on the given `event` with `fn`.
 *
 * @param {String} event
 * @param {Function} fn
 * @return {Emitter}
 * @api public
 */

Emitter.prototype.on =
Emitter.prototype.addEventListener = function(event, fn){
  this._callbacks = this._callbacks || {};
  (this._callbacks['$' + event] = this._callbacks['$' + event] || [])
    .push(fn);
  return this;
};

/**
 * Adds an `event` listener that will be invoked a single
 * time then automatically removed.
 *
 * @param {String} event
 * @param {Function} fn
 * @return {Emitter}
 * @api public
 */

Emitter.prototype.once = function(event, fn){
  function on() {
    this.off(event, on);
    fn.apply(this, arguments);
  }

  on.fn = fn;
  this.on(event, on);
  return this;
};

/**
 * Remove the given callback for `event` or all
 * registered callbacks.
 *
 * @param {String} event
 * @param {Function} fn
 * @return {Emitter}
 * @api public
 */

Emitter.prototype.off =
Emitter.prototype.removeListener =
Emitter.prototype.removeAllListeners =
Emitter.prototype.removeEventListener = function(event, fn){
  this._callbacks = this._callbacks || {};

  // all
  if (0 == arguments.length) {
    this._callbacks = {};
    return this;
  }

  // specific event
  var callbacks = this._callbacks['$' + event];
  if (!callbacks) return this;

  // remove all handlers
  if (1 == arguments.length) {
    delete this._callbacks['$' + event];
    return this;
  }

  // remove specific handler
  var cb;
  for (var i = 0; i < callbacks.length; i++) {
    cb = callbacks[i];
    if (cb === fn || cb.fn === fn) {
      callbacks.splice(i, 1);
      break;
    }
  }
  return this;
};

/**
 * Emit `event` with the given args.
 *
 * @param {String} event
 * @param {Mixed} ...
 * @return {Emitter}
 */

Emitter.prototype.emit = function(event){
  this._callbacks = this._callbacks || {};
  var args = [].slice.call(arguments, 1)
    , callbacks = this._callbacks['$' + event];

  if (callbacks) {
    callbacks = callbacks.slice(0);
    for (var i = 0, len = callbacks.length; i < len; ++i) {
      callbacks[i].apply(this, args);
    }
  }

  return this;
};

/**
 * Return array of callbacks for `event`.
 *
 * @param {String} event
 * @return {Array}
 * @api public
 */

Emitter.prototype.listeners = function(event){
  this._callbacks = this._callbacks || {};
  return this._callbacks['$' + event] || [];
};

/**
 * Check if this emitter has `event` handlers.
 *
 * @param {String} event
 * @return {Boolean}
 * @api public
 */

Emitter.prototype.hasListeners = function(event){
  return !! this.listeners(event).length;
};


/***/ }),
/* 145 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _key_mirror = __webpack_require__(0);

var _key_mirror2 = _interopRequireDefault(_key_mirror);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.default = (0, _key_mirror2.default)({
    GET_LOGS_REQUEST: null,
    GET_LOGS_SUCCESS: null,
    GET_LOGS_FAILURE: null,

    GET_AUDITS_REQUEST: null,
    GET_AUDITS_SUCCESS: null,
    GET_AUDITS_FAILURE: null,

    GET_CONFIG_REQUEST: null,
    GET_CONFIG_SUCCESS: null,
    GET_CONFIG_FAILURE: null,

    UPDATE_CONFIG_REQUEST: null,
    UPDATE_CONFIG_SUCCESS: null,
    UPDATE_CONFIG_FAILURE: null,

    RELOAD_CONFIG_REQUEST: null,
    RELOAD_CONFIG_SUCCESS: null,
    RELOAD_CONFIG_FAILURE: null,

    TEST_EMAIL_REQUEST: null,
    TEST_EMAIL_SUCCESS: null,
    TEST_EMAIL_FAILURE: null,

    INVALIDATE_CACHES_REQUEST: null,
    INVALIDATE_CACHES_SUCCESS: null,
    INVALIDATE_CACHES_FAILURE: null,

    RECYCLE_DATABASE_REQUEST: null,
    RECYCLE_DATABASE_SUCCESS: null,
    RECYCLE_DATABASE_FAILURE: null,

    CREATE_COMPLIANCE_REQUEST: null,
    CREATE_COMPLIANCE_SUCCESS: null,
    CREATE_COMPLIANCE_FAILURE: null,

    GET_COMPLIANCE_REQUEST: null,
    GET_COMPLIANCE_SUCCESS: null,
    GET_COMPLIANCE_FAILURE: null,

    UPLOAD_BRAND_IMAGE_REQUEST: null,
    UPLOAD_BRAND_IMAGE_SUCCESS: null,
    UPLOAD_BRAND_IMAGE_FAILURE: null,

    GET_CLUSTER_STATUS_REQUEST: null,
    GET_CLUSTER_STATUS_SUCCESS: null,
    GET_CLUSTER_STATUS_FAILURE: null,

    TEST_LDAP_REQUEST: null,
    TEST_LDAP_SUCCESS: null,
    TEST_LDAP_FAILURE: null,

    SYNC_LDAP_REQUEST: null,
    SYNC_LDAP_SUCCESS: null,
    SYNC_LDAP_FAILURE: null,

    SAML_CERT_STATUS_REQUEST: null,
    SAML_CERT_STATUS_SUCCESS: null,
    SAML_CERT_STATUS_FAILURE: null,

    UPLOAD_SAML_PUBLIC_REQUEST: null,
    UPLOAD_SAML_PUBLIC_SUCCESS: null,
    UPLOAD_SAML_PUBLIC_FAILURE: null,

    UPLOAD_SAML_PRIVATE_REQUEST: null,
    UPLOAD_SAML_PRIVATE_SUCCESS: null,
    UPLOAD_SAML_PRIVATE_FAILURE: null,

    UPLOAD_SAML_IDP_REQUEST: null,
    UPLOAD_SAML_IDP_SUCCESS: null,
    UPLOAD_SAML_IDP_FAILURE: null,

    DELETE_SAML_PUBLIC_REQUEST: null,
    DELETE_SAML_PUBLIC_SUCCESS: null,
    DELETE_SAML_PUBLIC_FAILURE: null,

    DELETE_SAML_PRIVATE_REQUEST: null,
    DELETE_SAML_PRIVATE_SUCCESS: null,
    DELETE_SAML_PRIVATE_FAILURE: null,

    DELETE_SAML_IDP_REQUEST: null,
    DELETE_SAML_IDP_SUCCESS: null,
    DELETE_SAML_IDP_FAILURE: null,

    UPLOAD_LICENSE_REQUEST: null,
    UPLOAD_LICENSE_SUCCESS: null,
    UPLOAD_LICENSE_FAILURE: null,

    REMOVE_LICENSE_REQUEST: null,
    REMOVE_LICENSE_SUCCESS: null,
    REMOVE_LICENSE_FAILURE: null,

    GET_ANALYTICS_REQUEST: null,
    GET_ANALYTICS_SUCCESS: null,
    GET_ANALYTICS_FAILURE: null,

    TEST_ELASTICSEARCH_REQUEST: null,
    TEST_ELASTICSEARCH_SUCCESS: null,
    TEST_ELASTICSEARCH_FAILURE: null,

    PURGE_ELASTICSEARCH_INDEXES_REQUEST: null,
    PURGE_ELASTICSEARCH_INDEXES_SUCCESS: null,
    PURGE_ELASTICSEARCH_INDEXES_FAILURE: null,

    UPLOAD_PLUGIN_REQUEST: null,
    UPLOAD_PLUGIN_SUCCESS: null,
    UPLOAD_PLUGIN_FAILURE: null,

    GET_PLUGIN_REQUEST: null,
    GET_PLUGIN_SUCCESS: null,
    GET_PLUGIN_FAILURE: null,

    REMOVE_PLUGIN_REQUEST: null,
    REMOVE_PLUGIN_SUCCESS: null,
    REMOVE_PLUGIN_FAILURE: null,

    ACTIVATE_PLUGIN_REQUEST: null,
    ACTIVATE_PLUGIN_SUCCESS: null,
    ACTIVATE_PLUGIN_FAILURE: null,

    DEACTIVATE_PLUGIN_REQUEST: null,
    DEACTIVATE_PLUGIN_SUCCESS: null,
    DEACTIVATE_PLUGIN_FAILURE: null,

    RECEIVED_LOGS: null,
    RECEIVED_AUDITS: null,
    RECEIVED_CONFIG: null,
    RECEIVED_COMPLIANCE_REPORT: null,
    RECEIVED_COMPLIANCE_REPORTS: null,
    RECEIVED_CLUSTER_STATUS: null,
    RECEIVED_SAML_CERT_STATUS: null,
    RECEIVED_SYSTEM_ANALYTICS: null,
    RECEIVED_TEAM_ANALYTICS: null,
    RECEIVED_USER_ACCESS_TOKEN: null,
    RECEIVED_USER_ACCESS_TOKENS: null,
    RECEIVED_PLUGIN: null,
    RECEIVED_PLUGINS: null,
    REMOVED_PLUGIN: null,
    ACTIVATED_PLUGIN: null,
    DEACTIVATED_PLUGIN: null
}); // Copyright (c) 2017-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

/***/ }),
/* 146 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _key_mirror = __webpack_require__(0);

var _key_mirror2 = _interopRequireDefault(_key_mirror);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.default = (0, _key_mirror2.default)({
    PUSH_ALERT: null,
    CLEAR_ALERT: null
}); // Copyright (c) 2017-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

/***/ }),
/* 147 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _key_mirror = __webpack_require__(0);

var _key_mirror2 = _interopRequireDefault(_key_mirror);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.default = (0, _key_mirror2.default)({
    CHANNEL_REQUEST: null,
    CHANNEL_SUCCESS: null,
    CHANNEL_FAILURE: null,

    CHANNELS_REQUEST: null,
    CHANNELS_SUCCESS: null,
    CHANNELS_FAILURE: null,

    CHANNEL_MEMBERS_REQUEST: null,
    CHANNEL_MEMBERS_SUCCESS: null,
    CHANNEL_MEMBERS_FAILURE: null,

    CHANNEL_MY_MEMBERS_REQUEST: null,
    CHANNEL_MY_MEMBERS_SUCCESS: null,
    CHANNEL_MY_MEMBERS_FAILURE: null,

    CREATE_CHANNEL_REQUEST: null,
    CREATE_CHANNEL_SUCCESS: null,
    CREATE_CHANNEL_FAILURE: null,

    UPDATE_CHANNEL_REQUEST: null,
    UPDATE_CHANNEL_SUCCESS: null,
    UPDATE_CHANNEL_FAILURE: null,

    NOTIFY_PROPS_REQUEST: null,
    NOTIFY_PROPS_SUCCESS: null,
    NOTIFY_PROPS_FAILURE: null,

    JOIN_CHANNEL_REQUEST: null,
    JOIN_CHANNEL_SUCCESS: null,
    JOIN_CHANNEL_FAILURE: null,

    DELETE_CHANNEL_REQUEST: null,
    DELETE_CHANNEL_SUCCESS: null,
    DELETE_CHANNEL_FAILURE: null,

    UPDATE_LAST_VIEWED_REQUEST: null,
    UPDATE_LAST_VIEWED_SUCCESS: null,
    UPDATE_LAST_VIEWED_FAILURE: null,

    GET_CHANNELS_REQUEST: null,
    GET_CHANNELS_SUCCESS: null,
    GET_CHANNELS_FAILURE: null,

    CHANNEL_STATS_REQUEST: null,
    CHANNEL_STATS_SUCCESS: null,
    CHANNEL_STATS_FAILURE: null,

    ADD_CHANNEL_MEMBER_REQUEST: null,
    ADD_CHANNEL_MEMBER_SUCCESS: null,
    ADD_CHANNEL_MEMBER_FAILURE: null,

    REMOVE_CHANNEL_MEMBER_REQUEST: null,
    REMOVE_CHANNEL_MEMBER_SUCCESS: null,
    REMOVE_CHANNEL_MEMBER_FAILURE: null,

    UPDATE_CHANNEL_MEMBER_REQUEST: null,
    UPDATE_CHANNEL_MEMBER_SUCCESS: null,
    UPDATE_CHANNEL_MEMBER_FAILURE: null,

    SELECT_CHANNEL: null,
    LEAVE_CHANNEL: null,
    RECEIVED_CHANNEL: null,
    RECEIVED_CHANNELS: null,
    RECEIVED_CHANNELS_LIST: null,
    RECEIVED_MY_CHANNEL_MEMBERS: null,
    RECEIVED_MY_CHANNEL_MEMBER: null,
    RECEIVED_CHANNEL_MEMBERS: null,
    RECEIVED_CHANNEL_MEMBER: null,
    RECEIVED_CHANNEL_STATS: null,
    RECEIVED_CHANNEL_PROPS: null,
    RECEIVED_CHANNEL_DELETED: null,
    RECEIVED_MSG_AND_MENTION_COUNT: null,
    UPDATE_CHANNEL_HEADER: null,
    UPDATE_CHANNEL_PURPOSE: null
}); // Copyright (c) 2016-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

/***/ }),
/* 148 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _key_mirror = __webpack_require__(0);

var _key_mirror2 = _interopRequireDefault(_key_mirror);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.default = (0, _key_mirror2.default)({
    GET_CUSTOM_EMOJIS_REQUEST: null,
    GET_CUSTOM_EMOJIS_SUCCESS: null,
    GET_CUSTOM_EMOJIS_FAILURE: null,

    GET_ALL_CUSTOM_EMOJIS_REQUEST: null,
    GET_ALL_CUSTOM_EMOJIS_SUCCESS: null,
    GET_ALL_CUSTOM_EMOJIS_FAILURE: null,

    CREATE_CUSTOM_EMOJI_REQUEST: null,
    CREATE_CUSTOM_EMOJI_SUCCESS: null,
    CREATE_CUSTOM_EMOJI_FAILURE: null,

    DELETE_CUSTOM_EMOJI_REQUEST: null,
    DELETE_CUSTOM_EMOJI_SUCCESS: null,
    DELETE_CUSTOM_EMOJI_FAILURE: null,

    CLEAR_CUSTOM_EMOJIS: null,
    RECEIVED_CUSTOM_EMOJI: null,
    RECEIVED_CUSTOM_EMOJIS: null,
    DELETED_CUSTOM_EMOJI: null
}); // Copyright (c) 2017-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

/***/ }),
/* 149 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _key_mirror = __webpack_require__(0);

var _key_mirror2 = _interopRequireDefault(_key_mirror);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.default = (0, _key_mirror2.default)({
    DISMISS_ERROR: null,
    LOG_ERROR: null,
    CLEAR_ERRORS: null,
    RESTORE_ERRORS: null
}); // Copyright (c) 2017-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

/***/ }),
/* 150 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _key_mirror = __webpack_require__(0);

var _key_mirror2 = _interopRequireDefault(_key_mirror);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.default = (0, _key_mirror2.default)({
    FETCH_FILES_FOR_POST_REQUEST: null,
    FETCH_FILES_FOR_POST_SUCCESS: null,
    FETCH_FILES_FOR_POST_FAILURE: null,

    UPLOAD_FILES_REQUEST: null,
    UPLOAD_FILES_SUCCESS: null,
    UPLOAD_FILES_FAILURE: null,
    UPLOAD_FILES_CANCEL: null,

    GET_FILE_PUBLIC_LINK_REQUEST: null,
    GET_FILE_PUBLIC_LINK_SUCCESS: null,
    GET_FILE_PUBLIC_LINK_FAILURE: null,

    RECEIVED_FILES_FOR_POST: null,
    RECEIVED_UPLOAD_FILES: null,
    RECEIVED_FILE_PUBLIC_LINK: null
}); // Copyright (c) 2017-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

/***/ }),
/* 151 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _key_mirror = __webpack_require__(0);

var _key_mirror2 = _interopRequireDefault(_key_mirror);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.default = (0, _key_mirror2.default)({
    RECEIVED_APP_STATE: null,
    RECEIVED_APP_CREDENTIALS: null,
    REMOVED_APP_CREDENTIALS: null,
    RECEIVED_APP_DEVICE_TOKEN: null,

    PING_REQUEST: null,
    PING_SUCCESS: null,
    PING_FAILURE: null,
    PING_RESET: null,

    RECEIVED_SERVER_VERSION: null,

    CLIENT_CONFIG_REQUEST: null,
    CLIENT_CONFIG_SUCCESS: null,
    CLIENT_CONFIG_FAILURE: null,
    CLIENT_CONFIG_RECEIVED: null,

    CLIENT_LICENSE_REQUEST: null,
    CLIENT_LICENSE_SUCCESS: null,
    CLIENT_LICENSE_FAILURE: null,
    CLIENT_LICENSE_RECEIVED: null,

    LOG_CLIENT_ERROR_REQUEST: null,
    LOG_CLIENT_ERROR_SUCCESS: null,
    LOG_CLIENT_ERROR_FAILURE: null,

    WEBSOCKET_REQUEST: null,
    WEBSOCKET_SUCCESS: null,
    WEBSOCKET_FAILURE: null,
    WEBSOCKET_CLOSED: null
}); // Copyright (c) 2016-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

/***/ }),
/* 152 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});
exports.SearchTypes = exports.JobTypes = exports.AlertTypes = exports.AdminTypes = exports.EmojiTypes = exports.IntegrationTypes = exports.PreferenceTypes = exports.FileTypes = exports.PostTypes = exports.ChannelTypes = exports.TeamTypes = exports.UserTypes = exports.GeneralTypes = exports.ErrorTypes = undefined;

var _channels = __webpack_require__(147);

var _channels2 = _interopRequireDefault(_channels);

var _errors = __webpack_require__(149);

var _errors2 = _interopRequireDefault(_errors);

var _general = __webpack_require__(151);

var _general2 = _interopRequireDefault(_general);

var _users = __webpack_require__(159);

var _users2 = _interopRequireDefault(_users);

var _teams = __webpack_require__(158);

var _teams2 = _interopRequireDefault(_teams);

var _posts = __webpack_require__(155);

var _posts2 = _interopRequireDefault(_posts);

var _files = __webpack_require__(150);

var _files2 = _interopRequireDefault(_files);

var _preferences = __webpack_require__(156);

var _preferences2 = _interopRequireDefault(_preferences);

var _integrations = __webpack_require__(153);

var _integrations2 = _interopRequireDefault(_integrations);

var _emojis = __webpack_require__(148);

var _emojis2 = _interopRequireDefault(_emojis);

var _admin = __webpack_require__(145);

var _admin2 = _interopRequireDefault(_admin);

var _alerts = __webpack_require__(146);

var _alerts2 = _interopRequireDefault(_alerts);

var _jobs = __webpack_require__(154);

var _jobs2 = _interopRequireDefault(_jobs);

var _search = __webpack_require__(157);

var _search2 = _interopRequireDefault(_search);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

// Copyright (c) 2017-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

exports.ErrorTypes = _errors2.default;
exports.GeneralTypes = _general2.default;
exports.UserTypes = _users2.default;
exports.TeamTypes = _teams2.default;
exports.ChannelTypes = _channels2.default;
exports.PostTypes = _posts2.default;
exports.FileTypes = _files2.default;
exports.PreferenceTypes = _preferences2.default;
exports.IntegrationTypes = _integrations2.default;
exports.EmojiTypes = _emojis2.default;
exports.AdminTypes = _admin2.default;
exports.AlertTypes = _alerts2.default;
exports.JobTypes = _jobs2.default;
exports.SearchTypes = _search2.default;

/***/ }),
/* 153 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _key_mirror = __webpack_require__(0);

var _key_mirror2 = _interopRequireDefault(_key_mirror);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.default = (0, _key_mirror2.default)({
    GET_INCOMING_HOOKS_REQUEST: null,
    GET_INCOMING_HOOKS_SUCCESS: null,
    GET_INCOMING_HOOKS_FAILURE: null,

    CREATE_INCOMING_HOOK_REQUEST: null,
    CREATE_INCOMING_HOOK_SUCCESS: null,
    CREATE_INCOMING_HOOK_FAILURE: null,

    DELETE_INCOMING_HOOK_REQUEST: null,
    DELETE_INCOMING_HOOK_SUCCESS: null,
    DELETE_INCOMING_HOOK_FAILURE: null,

    UPDATE_INCOMING_HOOK_REQUEST: null,
    UPDATE_INCOMING_HOOK_SUCCESS: null,
    UPDATE_INCOMING_HOOK_FAILURE: null,

    GET_OUTGOING_HOOKS_REQUEST: null,
    GET_OUTGOING_HOOKS_SUCCESS: null,
    GET_OUTGOING_HOOKS_FAILURE: null,

    CREATE_OUTGOING_HOOK_REQUEST: null,
    CREATE_OUTGOING_HOOK_SUCCESS: null,
    CREATE_OUTGOING_HOOK_FAILURE: null,

    DELETE_OUTGOING_HOOK_REQUEST: null,
    DELETE_OUTGOING_HOOK_SUCCESS: null,
    DELETE_OUTGOING_HOOK_FAILURE: null,

    UPDATE_OUTGOING_HOOK_REQUEST: null,
    UPDATE_OUTGOING_HOOK_SUCCESS: null,
    UPDATE_OUTGOING_HOOK_FAILURE: null,

    GET_CUSTOM_TEAM_COMMANDS_REQUEST: null,
    GET_CUSTOM_TEAM_COMMANDS_SUCCESS: null,
    GET_CUSTOM_TEAM_COMMANDS_FAILURE: null,

    ADD_COMMAND_REQUEST: null,
    ADD_COMMAND_SUCCESS: null,
    ADD_COMMAND_FAILURE: null,

    EDIT_COMMAND_REQUEST: null,
    EDIT_COMMAND_SUCCESS: null,
    EDIT_COMMAND_FAILURE: null,

    DELETE_COMMAND_REQUEST: null,
    DELETE_COMMAND_SUCCESS: null,
    DELETE_COMMAND_FAILURE: null,

    REGEN_COMMAND_TOKEN_REQUEST: null,
    REGEN_COMMAND_TOKEN_SUCCESS: null,
    REGEN_COMMAND_TOKEN_FAILURE: null,

    ADD_OAUTH_APP_REQUEST: null,
    ADD_OAUTH_APP_SUCCESS: null,
    ADD_OAUTH_APP_FAILURE: null,

    GET_OAUTH_APPS_REQUEST: null,
    GET_OAUTH_APPS_SUCCESS: null,
    GET_OAUTH_APPS_FAILURE: null,

    GET_OAUTH_APP_REQUEST: null,
    GET_OAUTH_APP_SUCCESS: null,
    GET_OAUTH_APP_FAILURE: null,

    DELETE_OAUTH_APP_REQUEST: null,
    DELETE_OAUTH_APP_SUCCESS: null,
    DELETE_OAUTH_APP_FAILURE: null,

    UPDATE_OAUTH_APP_REQUEST: null,
    UPDATE_OAUTH_APP_SUCCESS: null,
    UPDATE_OAUTH_APP_FAILURE: null,

    RECEIVED_INCOMING_HOOK: null,
    RECEIVED_INCOMING_HOOKS: null,
    DELETED_INCOMING_HOOK: null,
    RECEIVED_OUTGOING_HOOK: null,
    RECEIVED_OUTGOING_HOOKS: null,
    DELETED_OUTGOING_HOOK: null,
    RECEIVED_CUSTOM_TEAM_COMMANDS: null,
    RECEIVED_COMMAND: null,
    RECEIVED_COMMAND_TOKEN: null,
    DELETED_COMMAND: null,
    RECEIVED_OAUTH_APP: null,
    RECEIVED_OAUTH_APPS: null,
    DELETED_OAUTH_APP: null
}); // Copyright (c) 2017-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

/***/ }),
/* 154 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _key_mirror = __webpack_require__(0);

var _key_mirror2 = _interopRequireDefault(_key_mirror);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.default = (0, _key_mirror2.default)({
    CREATE_JOB_REQUEST: null,
    CREATE_JOB_SUCCESS: null,
    CREATE_JOB_FAILURE: null,

    CANCEL_JOB_REQUEST: null,
    CANCEL_JOB_SUCCESS: null,
    CANCEL_JOB_FAILURE: null,

    GET_JOB_REQUEST: null,
    GET_JOB_SUCCESS: null,
    GET_JOB_FAILURE: null,

    GET_JOBS_REQUEST: null,
    GET_JOBS_SUCCESS: null,
    GET_JOBS_FAILURE: null,

    RECEIVED_JOB: null,
    RECEIVED_JOBS: null,
    RECEIVED_JOBS_BY_TYPE: null
}); // Copyright (c) 2017-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

/***/ }),
/* 155 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _key_mirror = __webpack_require__(0);

var _key_mirror2 = _interopRequireDefault(_key_mirror);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.default = (0, _key_mirror2.default)({
    CREATE_POST_REQUEST: null,
    CREATE_POST_SUCCESS: null,
    CREATE_POST_FAILURE: null,

    EDIT_POST_REQUEST: null,
    EDIT_POST_SUCCESS: null,
    EDIT_POST_FAILURE: null,

    DELETE_POST_REQUEST: null,
    DELETE_POST_SUCCESS: null,
    DELETE_POST_FAILURE: null,

    GET_POST_THREAD_REQUEST: null,
    GET_POST_THREAD_SUCCESS: null,
    GET_POST_THREAD_FAILURE: null,

    GET_POSTS_REQUEST: null,
    GET_POSTS_SUCCESS: null,
    GET_POSTS_FAILURE: null,

    GET_POSTS_SINCE_REQUEST: null,
    GET_POSTS_SINCE_SUCCESS: null,
    GET_POSTS_SINCE_FAILURE: null,

    GET_POSTS_BEFORE_REQUEST: null,
    GET_POSTS_BEFORE_SUCCESS: null,
    GET_POSTS_BEFORE_FAILURE: null,

    GET_POSTS_AFTER_REQUEST: null,
    GET_POSTS_AFTER_SUCCESS: null,
    GET_POSTS_AFTER_FAILURE: null,

    REACTION_REQUEST: null,
    REACTION_SUCCESS: null,
    REACTION_FAILURE: null,

    OPEN_GRAPH_REQUEST: null,
    OPEN_GRAPH_SUCCESS: null,
    OPEN_GRAPH_FAILURE: null,

    DO_POST_ACTION_REQUEST: null,
    DO_POST_ACTION_SUCCESS: null,
    DO_POST_ACTION_FAILURE: null,

    GET_POST_THREAD_WITH_RETRY_ATTEMPT: null,
    GET_POSTS_WITH_RETRY_ATTEMPT: null,
    GET_POSTS_SINCE_WITH_RETRY_ATTEMPT: null,
    GET_POSTS_BEFORE_WITH_RETRY_ATTEMPT: null,
    GET_POSTS_AFTER_WITH_RETRY_ATTEMPT: null,

    RECEIVED_POST: null,
    RECEIVED_NEW_POST: null,
    RECEIVED_POSTS: null,
    RECEIVED_FOCUSED_POST: null,
    RECEIVED_POST_SELECTED: null,
    RECEIVED_EDIT_POST: null,
    POST_DELETED: null,
    REMOVE_POST: null,
    RECEIVED_REACTION: null,
    RECEIVED_REACTIONS: null,
    REACTION_DELETED: null,
    RECEIVED_OPEN_GRAPH_METADATA: null,

    ADD_MESSAGE_INTO_HISTORY: null,
    RESET_HISTORY_INDEX: null,
    MOVE_HISTORY_INDEX_BACK: null,
    MOVE_HISTORY_INDEX_FORWARD: null
}); // Copyright (c) 2016-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

/***/ }),
/* 156 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _key_mirror = __webpack_require__(0);

var _key_mirror2 = _interopRequireDefault(_key_mirror);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.default = (0, _key_mirror2.default)({
    MY_PREFERENCES_REQUEST: null,
    MY_PREFERENCES_SUCCESS: null,
    MY_PREFERENCES_FAILURE: null,

    SAVE_PREFERENCES_REQUEST: null,
    SAVE_PREFERENCES_SUCCESS: null,
    SAVE_PREFERENCES_FAILURE: null,

    DELETE_PREFERENCES_REQUEST: null,
    DELETE_PREFERENCES_SUCCESS: null,
    DELETE_PREFERENCES_FAILURE: null,

    RECEIVED_PREFERENCES: null,
    RECEIVED_ALL_PREFERENCES: null,
    DELETED_PREFERENCES: null
}); // Copyright (c) 2016-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

/***/ }),
/* 157 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _key_mirror = __webpack_require__(0);

var _key_mirror2 = _interopRequireDefault(_key_mirror);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.default = (0, _key_mirror2.default)({
    SEARCH_POSTS_REQUEST: null,
    SEARCH_POSTS_SUCCESS: null,
    SEARCH_POSTS_FAILURE: null,

    RECEIVED_SEARCH_POSTS: null,
    RECEIVED_SEARCH_TERM: null,
    REMOVE_SEARCH_POSTS: null,
    REMOVE_SEARCH_TERM: null
}); // Copyright (c) 2017-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

/***/ }),
/* 158 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _key_mirror = __webpack_require__(0);

var _key_mirror2 = _interopRequireDefault(_key_mirror);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.default = (0, _key_mirror2.default)({
    GET_TEAMS_REQUEST: null,
    GET_TEAMS_SUCCESS: null,
    GET_TEAMS_FAILURE: null,

    GET_TEAM_REQUEST: null,
    GET_TEAM_SUCCESS: null,
    GET_TEAM_FAILURE: null,

    MY_TEAMS_REQUEST: null,
    MY_TEAMS_SUCCESS: null,
    MY_TEAMS_FAILURE: null,

    CREATE_TEAM_REQUEST: null,
    CREATE_TEAM_SUCCESS: null,
    CREATE_TEAM_FAILURE: null,

    UPDATE_TEAM_REQUEST: null,
    UPDATE_TEAM_SUCCESS: null,
    UPDATE_TEAM_FAILURE: null,

    MY_TEAM_MEMBERS_REQUEST: null,
    MY_TEAM_MEMBERS_SUCCESS: null,
    MY_TEAM_MEMBERS_FAILURE: null,

    GET_TEAM_MEMBERS_REQUEST: null,
    GET_TEAM_MEMBERS_SUCCESS: null,
    GET_TEAM_MEMBERS_FAILURE: null,

    MY_TEAM_UNREADS_REQUEST: null,
    MY_TEAM_UNREADS_SUCCESS: null,
    MY_TEAM_UNREADS_FAILURE: null,

    TEAM_MEMBERS_REQUEST: null,
    TEAM_MEMBERS_SUCCESS: null,
    TEAM_MEMBERS_FAILURE: null,

    TEAM_STATS_REQUEST: null,
    TEAM_STATS_SUCCESS: null,
    TEAM_STATS_FAILURE: null,

    ADD_TEAM_MEMBER_REQUEST: null,
    ADD_TEAM_MEMBER_SUCCESS: null,
    ADD_TEAM_MEMBER_FAILURE: null,

    REMOVE_TEAM_MEMBER_REQUEST: null,
    REMOVE_TEAM_MEMBER_SUCCESS: null,
    REMOVE_TEAM_MEMBER_FAILURE: null,

    UPDATE_TEAM_MEMBER_REQUEST: null,
    UPDATE_TEAM_MEMBER_SUCCESS: null,
    UPDATE_TEAM_MEMBER_FAILURE: null,

    TEAM_EMAIL_INVITE_REQUEST: null,
    TEAM_EMAIL_INVITE_SUCCESS: null,
    TEAM_EMAIL_INVITE_FAILURE: null,

    JOIN_TEAM_REQUEST: null,
    JOIN_TEAM_SUCCESS: null,
    JOIN_TEAM_FAILURE: null,

    CREATED_TEAM: null,
    SELECT_TEAM: null,
    UPDATED_TEAM: null,
    RECEIVED_TEAM: null,
    RECEIVED_TEAMS: null,
    RECEIVED_TEAMS_LIST: null,
    RECEIVED_MY_TEAM_MEMBERS: null,
    RECEIVED_MY_TEAM_MEMBER: null,
    RECEIVED_TEAM_MEMBERS: null,
    RECEIVED_MEMBERS_IN_TEAM: null,
    RECEIVED_MEMBER_IN_TEAM: null,
    REMOVE_MEMBER_FROM_TEAM: null,
    RECEIVED_TEAM_STATS: null,
    RECEIVED_MY_TEAM_UNREADS: null,
    LEAVE_TEAM: null
}); // Copyright (c) 2016-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

/***/ }),
/* 159 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _key_mirror = __webpack_require__(0);

var _key_mirror2 = _interopRequireDefault(_key_mirror);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.default = (0, _key_mirror2.default)({
    CREATE_USER_REQUEST: null,
    CREATE_USER_SUCCESS: null,
    CREATE_USER_FAILURE: null,

    LOGIN_REQUEST: null,
    LOGIN_SUCCESS: null,
    LOGIN_FAILURE: null,

    LOGOUT_REQUEST: null,
    LOGOUT_SUCCESS: null,
    LOGOUT_FAILURE: null,

    PROFILES_REQUEST: null,
    PROFILES_SUCCESS: null,
    PROFILES_FAILURE: null,

    PROFILES_IN_TEAM_REQUEST: null,
    PROFILES_IN_TEAM_SUCCESS: null,
    PROFILES_IN_TEAM_FAILURE: null,

    PROFILES_NOT_IN_TEAM_REQUEST: null,
    PROFILES_NOT_IN_TEAM_SUCCESS: null,
    PROFILES_NOT_IN_TEAM_FAILURE: null,

    PROFILES_WITHOUT_TEAM_REQUEST: null,
    PROFILES_WITHOUT_TEAM_SUCCESS: null,
    PROFILES_WITHOUT_TEAM_FAILURE: null,

    PROFILES_IN_CHANNEL_REQUEST: null,
    PROFILES_IN_CHANNEL_SUCCESS: null,
    PROFILES_IN_CHANNEL_FAILURE: null,

    PROFILES_NOT_IN_CHANNEL_REQUEST: null,
    PROFILES_NOT_IN_CHANNEL_SUCCESS: null,
    PROFILES_NOT_IN_CHANNEL_FAILURE: null,

    USER_REQUEST: null,
    USER_SUCCESS: null,
    USER_FAILURE: null,

    USER_BY_USERNAME_REQUEST: null,
    USER_BY_USERNAME_SUCCESS: null,
    USER_BY_USERNAME_FAILURE: null,

    PROFILES_STATUSES_REQUEST: null,
    PROFILES_STATUSES_SUCCESS: null,
    PROFILES_STATUSES_FAILURE: null,

    PROFILE_STATUS_REQUEST: null,
    PROFILE_STATUS_SUCCESS: null,
    PROFILE_STATUS_FAILURE: null,

    SET_STATUS_REQUEST: null,
    SET_STATUS_SUCCESS: null,
    SET_STATUS_FAILURE: null,

    SESSIONS_REQUEST: null,
    SESSIONS_SUCCESS: null,
    SESSIONS_FAILURE: null,

    REVOKE_SESSION_REQUEST: null,
    REVOKE_SESSION_SUCCESS: null,
    REVOKE_SESSION_FAILURE: null,

    REVOKE_ALL_USER_SESSIONS_REQUEST: null,
    REVOKE_ALL_USER_SESSIONS_SUCCESS: null,
    REVOKE_ALL_USER_SESSIONS_FAILURE: null,

    AUDITS_REQUEST: null,
    AUDITS_SUCCESS: null,
    AUDITS_FAILURE: null,

    CHECK_MFA_REQUEST: null,
    CHECK_MFA_SUCCESS: null,
    CHECK_MFA_FAILURE: null,

    AUTOCOMPLETE_USERS_REQUEST: null,
    AUTOCOMPLETE_USERS_SUCCESS: null,
    AUTOCOMPLETE_USERS_FAILURE: null,

    SEARCH_PROFILES_REQUEST: null,
    SEARCH_PROFILES_SUCCESS: null,
    SEARCH_PROFILES_FAILURE: null,

    UPDATE_ME_REQUEST: null,
    UPDATE_ME_SUCCESS: null,
    UPDATE_ME_FAILURE: null,

    UPDATE_USER_REQUEST: null,
    UPDATE_USER_SUCCESS: null,
    UPDATE_USER_FAILURE: null,

    MFA_SECRET_REQUEST: null,
    MFA_SECRET_SUCCESS: null,
    MFA_SECRET_FAILURE: null,

    VERIFY_EMAIL_REQUEST: null,
    VERIFY_EMAIL_SUCCESS: null,
    VERIFY_EMAIL_FAILURE: null,

    PASSWORD_RESET_REQUEST: null,
    PASSWORD_RESET_SUCCESS: null,
    PASSWORD_RESET_FAILURE: null,

    SWITCH_LOGIN_REQUEST: null,
    SWITCH_LOGIN_SUCCESS: null,
    SWITCH_LOGIN_FAILURE: null,

    CREATE_USER_ACCESS_TOKEN_REQUEST: null,
    CREATE_USER_ACCESS_TOKEN_SUCCESS: null,
    CREATE_USER_ACCESS_TOKEN_FAILURE: null,

    GET_USER_ACCESS_TOKEN_REQUEST: null,
    GET_USER_ACCESS_TOKEN_SUCCESS: null,
    GET_USER_ACCESS_TOKEN_FAILURE: null,

    REVOKE_USER_ACCESS_TOKEN_REQUEST: null,
    REVOKE_USER_ACCESS_TOKEN_SUCCESS: null,
    REVOKE_USER_ACCESS_TOKEN_FAILURE: null,

    DISABLE_USER_ACCESS_TOKEN_REQUEST: null,
    DISABLE_USER_ACCESS_TOKEN_SUCCESS: null,
    DISABLE_USER_ACCESS_TOKEN_FAILURE: null,

    ENABLE_USER_ACCESS_TOKEN_REQUEST: null,
    ENABLE_USER_ACCESS_TOKEN_SUCCESS: null,
    ENABLE_USER_ACCESS_TOKEN_FAILURE: null,

    RECEIVED_ME: null,
    RECEIVED_PROFILE: null,
    RECEIVED_PROFILES: null,
    RECEIVED_PROFILES_LIST: null,
    RECEIVED_PROFILES_IN_TEAM: null,
    RECEIVED_PROFILE_IN_TEAM: null,
    RECEIVED_PROFILES_LIST_IN_TEAM: null,
    RECEIVED_PROFILE_NOT_IN_TEAM: null,
    RECEIVED_PROFILES_LIST_NOT_IN_TEAM: null,
    RECEIVED_PROFILE_WITHOUT_TEAM: null,
    RECEIVED_PROFILES_LIST_WITHOUT_TEAM: null,
    RECEIVED_PROFILES_IN_CHANNEL: null,
    RECEIVED_PROFILES_LIST_IN_CHANNEL: null,
    RECEIVED_PROFILE_IN_CHANNEL: null,
    RECEIVED_PROFILES_NOT_IN_CHANNEL: null,
    RECEIVED_PROFILES_LIST_NOT_IN_CHANNEL: null,
    RECEIVED_PROFILE_NOT_IN_CHANNEL: null,
    RECEIVED_SESSIONS: null,
    RECEIVED_REVOKED_SESSION: null,
    RECEIVED_AUDITS: null,
    RECEIVED_STATUS: null,
    RECEIVED_STATUSES: null,
    RECEIVED_AUTOCOMPLETE_IN_CHANNEL: null,
    RESET_LOGOUT_STATE: null,
    RECEIVED_MY_USER_ACCESS_TOKEN: null,
    RECEIVED_MY_USER_ACCESS_TOKENS: null,
    CLEAR_MY_USER_ACCESS_TOKENS: null,
    REVOKED_USER_ACCESS_TOKEN: null,
    DISABLED_USER_ACCESS_TOKEN: null,
    ENABLED_USER_ACCESS_TOKEN: null
}); // Copyright (c) 2016-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

/***/ }),
/* 160 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});
// Copyright (c) 2017-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

exports.default = {
    ALERT_NOTIFICATION: 'notification',
    ALERT_DEVELOPER: 'developer',
    ALERT_ERROR: 'error'
};

/***/ }),
/* 161 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});
// Copyright (c) 2017-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

exports.default = {
    AUDIO_TYPES: ['mp3', 'wav', 'wma', 'm4a', 'flac', 'aac', 'ogg'],
    CODE_TYPES: ['as', 'applescript', 'osascript', 'scpt', 'bash', 'sh', 'zsh', 'clj', 'boot', 'cl2', 'cljc', 'cljs', 'cljs.hl', 'cljscm', 'cljx', 'hic', 'coffee', '_coffee', 'cake', 'cjsx', 'cson', 'iced', 'cpp', 'c', 'cc', 'h', 'c++', 'h++', 'hpp', 'cs', 'csharp', 'css', 'd', 'di', 'dart', 'delphi', 'dpr', 'dfm', 'pas', 'pascal', 'freepascal', 'lazarus', 'lpr', 'lfm', 'diff', 'django', 'jinja', 'dockerfile', 'docker', 'erl', 'f90', 'f95', 'fsharp', 'fs', 'gcode', 'nc', 'go', 'groovy', 'handlebars', 'hbs', 'html.hbs', 'html.handlebars', 'hs', 'hx', 'java', 'jsp', 'js', 'jsx', 'json', 'jl', 'kt', 'ktm', 'kts', 'less', 'lisp', 'lua', 'mk', 'mak', 'md', 'mkdown', 'mkd', 'matlab', 'm', 'mm', 'objc', 'obj-c', 'ml', 'perl', 'pl', 'php', 'php3', 'php4', 'php5', 'php6', 'ps', 'ps1', 'pp', 'py', 'gyp', 'r', 'ruby', 'rb', 'gemspec', 'podspec', 'thor', 'irb', 'rs', 'scala', 'scm', 'sld', 'scss', 'st', 'sql', 'swift', 'tex', 'txt', 'vbnet', 'vb', 'bas', 'vbs', 'v', 'veo', 'xml', 'html', 'xhtml', 'rss', 'atom', 'xsl', 'plist', 'yaml'],
    IMAGE_TYPES: ['jpg', 'gif', 'bmp', 'png', 'jpeg'],
    PATCH_TYPES: ['patch'],
    PDF_TYPES: ['pdf'],
    PRESENTATION_TYPES: ['ppt', 'pptx'],
    SPREADSHEET_TYPES: ['xlsx', 'csv'],
    VIDEO_TYPES: ['mp4', 'avi', 'webm', 'mkv', 'wmv', 'mpg', 'mov', 'flv'],
    WORD_TYPES: ['doc', 'docx']
};

/***/ }),
/* 162 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});
// Copyright (c) 2017-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

exports.default = {
    CONFIG_CHANGED: 'config_changed',

    PAGE_SIZE_DEFAULT: 60,
    PAGE_SIZE_MAXIMUM: 200,
    AUDITS_CHUNK_SIZE: 100,
    PROFILE_CHUNK_SIZE: 100,
    CHANNELS_CHUNK_SIZE: 50,
    TEAMS_CHUNK_SIZE: 50,
    JOBS_CHUNK_SIZE: 50,
    SEARCH_TIMEOUT_MILLISECONDS: 100,
    STATUS_INTERVAL: 60000,

    MENTION: 'mention',

    OFFLINE: 'offline',
    AWAY: 'away',
    ONLINE: 'online',

    PERMISSIONS_ALL: 'all',
    PERMISSIONS_CHANNEL_ADMIN: 'channel_admin',
    PERMISSIONS_TEAM_ADMIN: 'team_admin',
    PERMISSIONS_SYSTEM_ADMIN: 'system_admin',

    TEAM_USER_ROLE: 'team_user',
    TEAM_ADMIN_ROLE: 'team_admin',

    CHANNEL_USER_ROLE: 'channel_user',
    CHANNEL_ADMIN_ROLE: 'channel_admin',

    SYSTEM_USER_ROLE: 'system_user',
    SYSTEM_ADMIN_ROLE: 'system_admin',
    SYSTEM_USER_ACCESS_TOKEN_ROLE: 'system_user_access_token',
    SYSTEM_POST_ALL_ROLE: 'system_post_all',
    SYSTEM_POST_ALL_PUBLIC_ROLE: 'system_post_all_public',

    ALLOW_EDIT_POST_ALWAYS: 'always',
    ALLOW_EDIT_POST_NEVER: 'never',
    ALLOW_EDIT_POST_TIME_LIMIT: 'time_limit',
    DEFAULT_POST_EDIT_TIME_LIMIT: 300,

    RESTRICT_DIRECT_MESSAGE_ANY: 'any',
    RESTRICT_DIRECT_MESSAGE_TEAM: 'team',

    DEFAULT_CHANNEL: 'town-square',
    DM_CHANNEL: 'D',
    OPEN_CHANNEL: 'O',
    PRIVATE_CHANNEL: 'P',
    GM_CHANNEL: 'G',

    PUSH_NOTIFY_APPLE_REACT_NATIVE: 'apple_rn',
    PUSH_NOTIFY_ANDROID_REACT_NATIVE: 'android_rn',

    STORE_REHYDRATION_COMPLETE: 'store_hydation_complete',
    OFFLINE_STORE_RESET: 'offline_store_reset',
    OFFLINE_STORE_PURGE: 'offline_store_purge',

    TEAMMATE_NAME_DISPLAY: {
        SHOW_USERNAME: 'username',
        SHOW_NICKNAME_FULLNAME: 'nickname_full_name',
        SHOW_FULLNAME: 'full_name'
    },

    SPECIAL_MENTIONS: ['all', 'channel', 'here'],

    MAX_USERS_IN_GM: 8,
    MIN_USERS_IN_GM: 3
};

/***/ }),
/* 163 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});
// Copyright (c) 2017-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

var PostTypes = {
    ADD_REMOVE: 'system_add_remove',
    ADD_TO_CHANNEL: 'system_add_to_channel',
    CHANNEL_DELETED: 'system_channel_deleted',
    DISPLAYNAME_CHANGE: 'system_displayname_change',
    EPHEMERAL: 'system_ephemeral',
    HEADER_CHANGE: 'system_header_change',
    JOIN_CHANNEL: 'system_join_channel',
    JOIN_LEAVE: 'system_join_leave',
    LEAVE_CHANNEL: 'system_leave_channel',
    PURPOSE_CHANGE: 'system_purpose_change',
    REMOVE_FROM_CHANNEL: 'system_remove_from_channel'
};

exports.default = {
    POST_CHUNK_SIZE: 60,
    POST_DELETED: 'DELETED',
    SYSTEM_MESSAGE_PREFIX: 'system_',
    POST_TYPES: PostTypes,
    MESSAGE_TYPES: {
        POST: 'post',
        COMMENT: 'comment'
    },
    MAX_PREV_MSGS: 100,
    POST_COLLAPSE_TIMEOUT: 1000 * 60 * 5, // five minutes
    IGNORE_POST_TYPES: [PostTypes.ADD_REMOVE, PostTypes.ADD_TO_CHANNEL, PostTypes.CHANNEL_DELETED, PostTypes.JOIN_LEAVE, PostTypes.JOIN_CHANNEL, PostTypes.LEAVE_CHANNEL, PostTypes.REMOVE_FROM_CHANNEL]
};

/***/ }),
/* 164 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});
// Copyright (c) 2017-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

exports.default = {
    CATEGORY_CHANNEL_OPEN_TIME: 'channel_open_time',
    CATEGORY_DIRECT_CHANNEL_SHOW: 'direct_channel_show',
    CATEGORY_GROUP_CHANNEL_SHOW: 'group_channel_show',
    CATEGORY_FLAGGED_POST: 'flagged_post',
    CATEGORY_FAVORITE_CHANNEL: 'favorite_channel',
    CATEGORY_AUTO_RESET_MANUAL_STATUS: 'auto_reset_manual_status',

    CATEGORY_NOTIFICATIONS: 'notifications',
    EMAIL_INTERVAL: 'email_interval',
    INTERVAL_FIFTEEN_MINUTES: 15 * 60,
    INTERVAL_HOUR: 60 * 60,
    INTERVAL_IMMEDIATE: 30, // "immediate" is a 30 second interval

    CATEGORY_DISPLAY_SETTINGS: 'display_settings',
    NAME_NAME_FORMAT: 'name_format',
    DISPLAY_PREFER_NICKNAME: 'nickname_full_name',
    DISPLAY_PREFER_FULL_NAME: 'full_name',

    CATEGORY_SIDEBAR_SETTINGS: 'sidebar_settings',

    CATEGORY_ADVANCED_SETTINGS: 'advanced_settings',
    ADVANCED_FILTER_JOIN_LEAVE: 'join_leave',

    CATEGORY_THEME: 'theme',
    THEMES: {
        default: {
            type: 'Mattermost',
            sidebarBg: '#145dbf',
            sidebarText: '#ffffff',
            sidebarUnreadText: '#ffffff',
            sidebarTextHoverBg: '#4578bf',
            sidebarTextActiveBorder: '#579eff',
            sidebarTextActiveColor: '#ffffff',
            sidebarHeaderBg: '#1153ab',
            sidebarHeaderTextColor: '#ffffff',
            onlineIndicator: '#06d6a0',
            awayIndicator: '#ffbc42',
            mentionBj: '#ffffff',
            mentionColor: '#145dbf',
            centerChannelBg: '#ffffff',
            centerChannelColor: '#3d3c40',
            newMessageSeparator: '#ff8800',
            linkColor: '#2389d7',
            buttonBg: '#166de0',
            buttonColor: '#ffffff',
            errorTextColor: '#fd5960',
            mentionHighlightBg: '#ffe577',
            mentionHighlightLink: '#166de0',
            codeTheme: 'github'
        }
    }
};

/***/ }),
/* 165 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});
// Copyright (c) 2016-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

exports.default = {
    NOT_STARTED: 'not_started',
    STARTED: 'started',
    SUCCESS: 'success',
    FAILURE: 'failure',
    CANCELLED: 'cancelled'
};

/***/ }),
/* 166 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _key_mirror = __webpack_require__(0);

var _key_mirror2 = _interopRequireDefault(_key_mirror);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

exports.default = (0, _key_mirror2.default)({
    TOTAL_USERS: null,
    TOTAL_PUBLIC_CHANNELS: null,
    TOTAL_PRIVATE_GROUPS: null,
    TOTAL_POSTS: null,
    TOTAL_TEAMS: null,
    TOTAL_FILE_POSTS: null,
    TOTAL_HASHTAG_POSTS: null,
    TOTAL_IHOOKS: null,
    TOTAL_OHOOKS: null,
    TOTAL_COMMANDS: null,
    TOTAL_SESSIONS: null,
    POST_PER_DAY: null,
    USERS_WITH_POSTS_PER_DAY: null,
    RECENTLY_ACTIVE_USERS: null,
    NEWLY_CREATED_USERS: null,
    TOTAL_WEBSOCKET_CONNECTIONS: null,
    TOTAL_MASTER_DB_CONNECTIONS: null,
    TOTAL_READ_DB_CONNECTIONS: null,
    DAILY_ACTIVE_USERS: null,
    MONTHLY_ACTIVE_USERS: null
}); // Copyright (c) 2017-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

/***/ }),
/* 167 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});
// Copyright (c) 2017-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

exports.default = {
    TEAM_TYPE_OPEN: 'O',
    TEAM_TYPE_INVITE: 'I'
};

/***/ }),
/* 168 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});
// Copyright (c) 2016-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

var WebsocketEvents = {
    POSTED: 'posted',
    POST_EDITED: 'post_edited',
    POST_DELETED: 'post_deleted',
    CHANNEL_CREATED: 'channel_created',
    CHANNEL_DELETED: 'channel_deleted',
    CHANNEL_UPDATED: 'channel_updated',
    DIRECT_ADDED: 'direct_added',
    ADDED_TO_TEAM: 'added_to_team',
    LEAVE_TEAM: 'leave_team',
    UPDATE_TEAM: 'update_team',
    USER_ADDED: 'user_added',
    USER_REMOVED: 'user_removed',
    USER_UPDATED: 'user_updated',
    TYPING: 'typing',
    STOP_TYPING: 'stop_typing',
    PREFERENCE_CHANGED: 'preference_changed',
    PREFERENCES_CHANGED: 'preferences_changed',
    PREFERENCES_DELETED: 'preferences_deleted',
    EPHEMERAL_MESSAGE: 'ephemeral_message',
    STATUS_CHANGED: 'status_change',
    HELLO: 'hello',
    WEBRTC: 'webrtc',
    REACTION_ADDED: 'reaction_added',
    REACTION_REMOVED: 'reaction_removed',
    EMOJI_ADDED: 'emoji_added'
};

exports.default = WebsocketEvents;

/***/ }),
/* 169 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});
exports.getTheme = exports.getTeammateNameDisplaySetting = exports.getVisibleGroupIds = exports.getVisibleTeammate = undefined;
exports.getMyPreferences = getMyPreferences;
exports.get = get;
exports.getBool = getBool;
exports.makeGetCategory = makeGetCategory;
exports.getDirectShowPreferences = getDirectShowPreferences;
exports.getGroupShowPreferences = getGroupShowPreferences;
exports.getFavoritesPreferences = getFavoritesPreferences;
exports.makeGetStyleFromTheme = makeGetStyleFromTheme;

var _reselect = __webpack_require__(34);

var _constants = __webpack_require__(76);

var _general = __webpack_require__(77);

var _teams = __webpack_require__(170);

var _helpers = __webpack_require__(78);

var _preference_utils = __webpack_require__(171);

// Copyright (c) 2016-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

function getMyPreferences(state) {
    return state.entities.preferences.myPreferences;
}

function get(state, category, name) {
    var defaultValue = arguments.length > 3 && arguments[3] !== undefined ? arguments[3] : '';

    var key = (0, _preference_utils.getPreferenceKey)(category, name);
    var prefs = getMyPreferences(state);

    if (!(key in prefs)) {
        return defaultValue;
    }

    return prefs[key].value;
}

function getBool(state, category, name) {
    var defaultValue = arguments.length > 3 && arguments[3] !== undefined ? arguments[3] : false;

    var value = get(state, category, name, String(defaultValue));

    return value !== 'false';
}

function makeGetCategory() {
    return (0, _reselect.createSelector)(getMyPreferences, function (state, category) {
        return category;
    }, function (preferences, category) {
        var prefix = category + '--';
        var prefsInCategory = [];

        for (var key in preferences) {
            if (key.startsWith(prefix)) {
                prefsInCategory.push(preferences[key]);
            }
        }

        return prefsInCategory;
    });
}

var getDirectShowCategory = makeGetCategory();

function getDirectShowPreferences(state) {
    return getDirectShowCategory(state, _constants.Preferences.CATEGORY_DIRECT_CHANNEL_SHOW);
}

var getGroupShowCategory = makeGetCategory();

function getGroupShowPreferences(state) {
    return getGroupShowCategory(state, _constants.Preferences.CATEGORY_GROUP_CHANNEL_SHOW);
}

var getFavoritesCategory = makeGetCategory();

function getFavoritesPreferences(state) {
    var favorites = getFavoritesCategory(state, _constants.Preferences.CATEGORY_FAVORITE_CHANNEL);
    return favorites.filter(function (f) {
        return f.value === 'true';
    }).map(function (f) {
        return f.name;
    });
}

var getVisibleTeammate = exports.getVisibleTeammate = (0, _reselect.createSelector)(getDirectShowPreferences, function (direct) {
    return direct.filter(function (dm) {
        return dm.value === 'true' && dm.name;
    }).map(function (dm) {
        return dm.name;
    });
});

var getVisibleGroupIds = exports.getVisibleGroupIds = (0, _reselect.createSelector)(getGroupShowPreferences, function (groups) {
    return groups.filter(function (dm) {
        return dm.value === 'true' && dm.name;
    }).map(function (dm) {
        return dm.name;
    });
});

var getTeammateNameDisplaySetting = exports.getTeammateNameDisplaySetting = (0, _reselect.createSelector)(_general.getConfig, getMyPreferences, function (config, preferences) {
    if (config.TeammateNameDisplay) {
        return config.TeammateNameDisplay;
    }

    var key = (0, _preference_utils.getPreferenceKey)(_constants.Preferences.CATEGORY_DISPLAY_SETTINGS, _constants.Preferences.NAME_NAME_FORMAT);
    if (preferences[key]) {
        return preferences[key].value;
    }

    return _constants.General.TEAMMATE_NAME_DISPLAY.SHOW_USERNAME;
});

var getThemePreference = (0, _reselect.createSelector)(getMyPreferences, _teams.getCurrentTeamId, function (myPreferences, currentTeamId) {
    // Prefer the user's current team-specific theme over the user's current global theme
    var themePreference = void 0;

    if (currentTeamId) {
        themePreference = myPreferences[(0, _preference_utils.getPreferenceKey)(_constants.Preferences.CATEGORY_THEME, currentTeamId)];
    }

    if (!themePreference) {
        themePreference = myPreferences[(0, _preference_utils.getPreferenceKey)(_constants.Preferences.CATEGORY_THEME, '')];
    }

    return themePreference;
});

var getTheme = exports.getTheme = (0, _helpers.createShallowSelector)(getThemePreference, function (themePreference) {
    var theme = void 0;
    if (themePreference) {
        theme = themePreference.value;
    } else {
        theme = _constants.Preferences.THEMES.default;
    }

    if (typeof theme === 'string') {
        // A custom theme will be a JSON-serialized object stored in a preference
        theme = JSON.parse(theme);
    }

    // At this point, the theme should be a plain object

    // Fix a case where upper case theme colours are rendered as black
    var _iteratorNormalCompletion = true;
    var _didIteratorError = false;
    var _iteratorError = undefined;

    try {
        for (var _iterator = Object.keys(theme)[Symbol.iterator](), _step; !(_iteratorNormalCompletion = (_step = _iterator.next()).done); _iteratorNormalCompletion = true) {
            var key = _step.value;

            theme[key] = theme[key].toLowerCase();
        }
    } catch (err) {
        _didIteratorError = true;
        _iteratorError = err;
    } finally {
        try {
            if (!_iteratorNormalCompletion && _iterator.return) {
                _iterator.return();
            }
        } finally {
            if (_didIteratorError) {
                throw _iteratorError;
            }
        }
    }

    return theme;
});

function makeGetStyleFromTheme() {
    return (0, _reselect.createSelector)(getTheme, function (state, getStyleFromTheme) {
        return getStyleFromTheme;
    }, function (theme, getStyleFromTheme) {
        return getStyleFromTheme(theme);
    });
}

/***/ }),
/* 170 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});
exports.getChannelDrawerBadgeCount = exports.getMyTeamsCount = exports.getMySortedTeamIds = exports.getJoinableTeamIds = exports.getJoinableTeams = exports.getMembersInCurrentTeam = exports.getMyTeamMember = exports.getMyTeams = exports.getCurrentTeamStats = exports.getCurrentTeamUrl = exports.isCurrentUserCurrentTeamAdmin = exports.getCurrentTeamMembership = exports.getCurrentTeam = exports.getTeamsList = undefined;
exports.getCurrentTeamId = getCurrentTeamId;
exports.getTeams = getTeams;
exports.getTeamStats = getTeamStats;
exports.getTeamMemberships = getTeamMemberships;
exports.getMembersInTeams = getMembersInTeams;
exports.getTeam = getTeam;
exports.getTeamMember = getTeamMember;
exports.makeGetBadgeCountForTeamId = makeGetBadgeCountForTeamId;

var _reselect = __webpack_require__(34);

var _general = __webpack_require__(77);

var _helpers = __webpack_require__(78);

var _user_utils = __webpack_require__(79);

// Copyright (c) 2016-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

function getCurrentTeamId(state) {
    return state.entities.teams.currentTeamId;
}

function getTeams(state) {
    return state.entities.teams.teams;
}

function getTeamStats(state) {
    return state.entities.teams.stats;
}

function getTeamMemberships(state) {
    return state.entities.teams.myMembers;
}

function getMembersInTeams(state) {
    return state.entities.teams.membersInTeam;
}

var getTeamsList = exports.getTeamsList = (0, _reselect.createSelector)(getTeams, function (teams) {
    return Object.values(teams);
});

var getCurrentTeam = exports.getCurrentTeam = (0, _reselect.createSelector)(getTeams, getCurrentTeamId, function (teams, currentTeamId) {
    return teams[currentTeamId];
});

function getTeam(state, id) {
    var teams = getTeams(state);
    return teams[id];
}

var getCurrentTeamMembership = exports.getCurrentTeamMembership = (0, _reselect.createSelector)(getCurrentTeamId, getTeamMemberships, function (currentTeamId, teamMemberships) {
    return teamMemberships[currentTeamId];
});

var isCurrentUserCurrentTeamAdmin = exports.isCurrentUserCurrentTeamAdmin = (0, _reselect.createSelector)(getCurrentTeamMembership, function (member) {
    if (member) {
        var roles = member.roles || '';
        return (0, _user_utils.isTeamAdmin)(roles);
    }
    return false;
});

var getCurrentTeamUrl = exports.getCurrentTeamUrl = (0, _reselect.createSelector)(_general.getCurrentUrl, getCurrentTeam, function (currentUrl, currentTeam) {
    return currentUrl + '/' + currentTeam.name;
});

var getCurrentTeamStats = exports.getCurrentTeamStats = (0, _reselect.createSelector)(getCurrentTeamId, getTeamStats, function (currentTeamId, teamStats) {
    return teamStats[currentTeamId];
});

var getMyTeams = exports.getMyTeams = (0, _reselect.createSelector)(getTeams, getTeamMemberships, function (teams, members) {
    return Object.values(teams).filter(function (t) {
        return members[t.id];
    });
});

var getMyTeamMember = exports.getMyTeamMember = (0, _reselect.createSelector)(getTeamMemberships, function (state, teamId) {
    return teamId;
}, function (teamMemberships, teamId) {
    return teamMemberships[teamId] || {};
});

var getMembersInCurrentTeam = exports.getMembersInCurrentTeam = (0, _reselect.createSelector)(getCurrentTeamId, getMembersInTeams, function (currentTeamId, teamMembers) {
    return teamMembers[currentTeamId];
});

function getTeamMember(state, teamId, userId) {
    var members = getMembersInTeams(state)[teamId];
    if (members) {
        return members[userId];
    }

    return null;
}

var getJoinableTeams = exports.getJoinableTeams = (0, _reselect.createSelector)(getTeams, getTeamMemberships, function (teams, myMembers) {
    var openTeams = {};
    Object.values(teams).forEach(function (t) {
        if (t.allow_open_invite && !myMembers[t.id]) {
            openTeams[t.id] = t;
        }
    });

    return openTeams;
});

var getJoinableTeamIds = exports.getJoinableTeamIds = (0, _helpers.createIdsSelector)(getTeams, getTeamMemberships, function (teams, myMembers) {
    return Object.keys(teams).filter(function (id) {
        var team = teams[id];
        var member = myMembers[id];
        return team.allow_open_invite && !member;
    });
});

var getMySortedTeamIds = exports.getMySortedTeamIds = (0, _helpers.createIdsSelector)(getTeams, getTeamMemberships, function (state, locale) {
    return locale;
}, function (teams, myMembers, locale) {
    return Object.values(teams).filter(function (t) {
        return myMembers[t.id];
    }).sort(function (a, b) {
        if (a.display_name !== b.display_name) {
            return a.display_name.toLowerCase().localeCompare(b.display_name.toLowerCase(), locale, { numeric: true });
        }

        return a.name.toLowerCase().localeCompare(b.name.toLowerCase(), locale, { numeric: true });
    }).map(function (t) {
        return t.id;
    });
});

var getMyTeamsCount = exports.getMyTeamsCount = (0, _reselect.createSelector)(getTeamMemberships, function (teams) {
    return Object.keys(teams).length;
});

// returns the badge number to show (excluding the current team)
// > 0 means is returning the mention count
// 0 means that there are no unread messages
// -1 means that there are unread messages but no mentions
var getChannelDrawerBadgeCount = exports.getChannelDrawerBadgeCount = (0, _reselect.createSelector)(getCurrentTeamId, getTeamMemberships, function (currentTeamId, teamMembers) {
    var mentionCount = 0;
    var messageCount = 0;
    Object.values(teamMembers).forEach(function (m) {
        if (m.team_id !== currentTeamId) {
            mentionCount = mentionCount + (m.mention_count || 0);
            messageCount = messageCount + (m.msg_count || 0);
        }
    });

    var badgeCount = 0;
    if (mentionCount) {
        badgeCount = mentionCount;
    } else if (messageCount) {
        badgeCount = -1;
    }

    return badgeCount;
});

// returns the badge for a team
// > 0 means is returning the mention count
// 0 means that there are no unread messages
// -1 means that there are unread messages but no mentions
function makeGetBadgeCountForTeamId() {
    return (0, _reselect.createSelector)(getTeamMemberships, function (state, id) {
        return id;
    }, function (members, teamId) {
        var member = members[teamId];
        var badgeCount = 0;

        if (member) {
            if (member.mention_count) {
                badgeCount = member.mention_count;
            } else if (member.msg_count) {
                badgeCount = -1;
            }
        }

        return badgeCount;
    });
}

/***/ }),
/* 171 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});
exports.getPreferenceKey = getPreferenceKey;
exports.getPreferencesByCategory = getPreferencesByCategory;
// Copyright (c) 2016-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.

function getPreferenceKey(category, name) {
    return category + "--" + name;
}

function getPreferencesByCategory(myPreferences, category) {
    var prefix = category + "--";
    var preferences = new Map();
    Object.keys(myPreferences).forEach(function (key) {
        if (key.startsWith(prefix)) {
            preferences.set(key.substring(prefix.length), myPreferences[key]);
        }
    });

    return preferences;
}

/***/ }),
/* 172 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";
/* WEBPACK VAR INJECTION */(function(process) {/**
 * Copyright 2013-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */



if (process.env.NODE_ENV !== 'production') {
  var invariant = __webpack_require__(51);
  var warning = __webpack_require__(75);
  var ReactPropTypesSecret = __webpack_require__(52);
  var loggedTypeFailures = {};
}

/**
 * Assert that the values match with the type specs.
 * Error messages are memorized and will only be shown once.
 *
 * @param {object} typeSpecs Map of name to a ReactPropType
 * @param {object} values Runtime values that need to be type-checked
 * @param {string} location e.g. "prop", "context", "child context"
 * @param {string} componentName Name of the component for error messages.
 * @param {?Function} getStack Returns the component stack.
 * @private
 */
function checkPropTypes(typeSpecs, values, location, componentName, getStack) {
  if (process.env.NODE_ENV !== 'production') {
    for (var typeSpecName in typeSpecs) {
      if (typeSpecs.hasOwnProperty(typeSpecName)) {
        var error;
        // Prop type validation may throw. In case they do, we don't want to
        // fail the render phase where it didn't fail before. So we log it.
        // After these have been cleaned up, we'll let them throw.
        try {
          // This is intentionally an invariant that gets caught. It's the same
          // behavior as without this statement except with a better message.
          invariant(typeof typeSpecs[typeSpecName] === 'function', '%s: %s type `%s` is invalid; it must be a function, usually from ' + 'React.PropTypes.', componentName || 'React class', location, typeSpecName);
          error = typeSpecs[typeSpecName](values, typeSpecName, componentName, location, null, ReactPropTypesSecret);
        } catch (ex) {
          error = ex;
        }
        warning(!error || error instanceof Error, '%s: type specification of %s `%s` is invalid; the type checker ' + 'function must return `null` or an `Error` but returned a %s. ' + 'You may have forgotten to pass an argument to the type checker ' + 'creator (arrayOf, instanceOf, objectOf, oneOf, oneOfType, and ' + 'shape all require an argument).', componentName || 'React class', location, typeSpecName, typeof error);
        if (error instanceof Error && !(error.message in loggedTypeFailures)) {
          // Only monitor this failure once because there tends to be a lot of the
          // same error.
          loggedTypeFailures[error.message] = true;

          var stack = getStack ? getStack() : '';

          warning(false, 'Failed %s type: %s%s', location, error.message, stack != null ? stack : '');
        }
      }
    }
  }
}

module.exports = checkPropTypes;

/* WEBPACK VAR INJECTION */}.call(exports, __webpack_require__(20)))

/***/ }),
/* 173 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";
/**
 * Copyright 2013-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */



var emptyFunction = __webpack_require__(50);
var invariant = __webpack_require__(51);
var ReactPropTypesSecret = __webpack_require__(52);

module.exports = function() {
  function shim(props, propName, componentName, location, propFullName, secret) {
    if (secret === ReactPropTypesSecret) {
      // It is still safe when called from React.
      return;
    }
    invariant(
      false,
      'Calling PropTypes validators directly is not supported by the `prop-types` package. ' +
      'Use PropTypes.checkPropTypes() to call them. ' +
      'Read more at http://fb.me/use-check-prop-types'
    );
  };
  shim.isRequired = shim;
  function getShim() {
    return shim;
  };
  // Important!
  // Keep this list in sync with production version in `./factoryWithTypeCheckers.js`.
  var ReactPropTypes = {
    array: shim,
    bool: shim,
    func: shim,
    number: shim,
    object: shim,
    string: shim,
    symbol: shim,

    any: shim,
    arrayOf: getShim,
    element: shim,
    instanceOf: getShim,
    node: shim,
    objectOf: getShim,
    oneOf: getShim,
    oneOfType: getShim,
    shape: getShim
  };

  ReactPropTypes.checkPropTypes = emptyFunction;
  ReactPropTypes.PropTypes = ReactPropTypes;

  return ReactPropTypes;
};


/***/ }),
/* 174 */
/***/ (function(module, exports, __webpack_require__) {

"use strict";
/* WEBPACK VAR INJECTION */(function(process) {/**
 * Copyright 2013-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * LICENSE file in the root directory of this source tree. An additional grant
 * of patent rights can be found in the PATENTS file in the same directory.
 */



var emptyFunction = __webpack_require__(50);
var invariant = __webpack_require__(51);
var warning = __webpack_require__(75);

var ReactPropTypesSecret = __webpack_require__(52);
var checkPropTypes = __webpack_require__(172);

module.exports = function(isValidElement, throwOnDirectAccess) {
  /* global Symbol */
  var ITERATOR_SYMBOL = typeof Symbol === 'function' && Symbol.iterator;
  var FAUX_ITERATOR_SYMBOL = '@@iterator'; // Before Symbol spec.

  /**
   * Returns the iterator method function contained on the iterable object.
   *
   * Be sure to invoke the function with the iterable as context:
   *
   *     var iteratorFn = getIteratorFn(myIterable);
   *     if (iteratorFn) {
   *       var iterator = iteratorFn.call(myIterable);
   *       ...
   *     }
   *
   * @param {?object} maybeIterable
   * @return {?function}
   */
  function getIteratorFn(maybeIterable) {
    var iteratorFn = maybeIterable && (ITERATOR_SYMBOL && maybeIterable[ITERATOR_SYMBOL] || maybeIterable[FAUX_ITERATOR_SYMBOL]);
    if (typeof iteratorFn === 'function') {
      return iteratorFn;
    }
  }

  /**
   * Collection of methods that allow declaration and validation of props that are
   * supplied to React components. Example usage:
   *
   *   var Props = require('ReactPropTypes');
   *   var MyArticle = React.createClass({
   *     propTypes: {
   *       // An optional string prop named "description".
   *       description: Props.string,
   *
   *       // A required enum prop named "category".
   *       category: Props.oneOf(['News','Photos']).isRequired,
   *
   *       // A prop named "dialog" that requires an instance of Dialog.
   *       dialog: Props.instanceOf(Dialog).isRequired
   *     },
   *     render: function() { ... }
   *   });
   *
   * A more formal specification of how these methods are used:
   *
   *   type := array|bool|func|object|number|string|oneOf([...])|instanceOf(...)
   *   decl := ReactPropTypes.{type}(.isRequired)?
   *
   * Each and every declaration produces a function with the same signature. This
   * allows the creation of custom validation functions. For example:
   *
   *  var MyLink = React.createClass({
   *    propTypes: {
   *      // An optional string or URI prop named "href".
   *      href: function(props, propName, componentName) {
   *        var propValue = props[propName];
   *        if (propValue != null && typeof propValue !== 'string' &&
   *            !(propValue instanceof URI)) {
   *          return new Error(
   *            'Expected a string or an URI for ' + propName + ' in ' +
   *            componentName
   *          );
   *        }
   *      }
   *    },
   *    render: function() {...}
   *  });
   *
   * @internal
   */

  var ANONYMOUS = '<<anonymous>>';

  // Important!
  // Keep this list in sync with production version in `./factoryWithThrowingShims.js`.
  var ReactPropTypes = {
    array: createPrimitiveTypeChecker('array'),
    bool: createPrimitiveTypeChecker('boolean'),
    func: createPrimitiveTypeChecker('function'),
    number: createPrimitiveTypeChecker('number'),
    object: createPrimitiveTypeChecker('object'),
    string: createPrimitiveTypeChecker('string'),
    symbol: createPrimitiveTypeChecker('symbol'),

    any: createAnyTypeChecker(),
    arrayOf: createArrayOfTypeChecker,
    element: createElementTypeChecker(),
    instanceOf: createInstanceTypeChecker,
    node: createNodeChecker(),
    objectOf: createObjectOfTypeChecker,
    oneOf: createEnumTypeChecker,
    oneOfType: createUnionTypeChecker,
    shape: createShapeTypeChecker
  };

  /**
   * inlined Object.is polyfill to avoid requiring consumers ship their own
   * https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/is
   */
  /*eslint-disable no-self-compare*/
  function is(x, y) {
    // SameValue algorithm
    if (x === y) {
      // Steps 1-5, 7-10
      // Steps 6.b-6.e: +0 != -0
      return x !== 0 || 1 / x === 1 / y;
    } else {
      // Step 6.a: NaN == NaN
      return x !== x && y !== y;
    }
  }
  /*eslint-enable no-self-compare*/

  /**
   * We use an Error-like object for backward compatibility as people may call
   * PropTypes directly and inspect their output. However, we don't use real
   * Errors anymore. We don't inspect their stack anyway, and creating them
   * is prohibitively expensive if they are created too often, such as what
   * happens in oneOfType() for any type before the one that matched.
   */
  function PropTypeError(message) {
    this.message = message;
    this.stack = '';
  }
  // Make `instanceof Error` still work for returned errors.
  PropTypeError.prototype = Error.prototype;

  function createChainableTypeChecker(validate) {
    if (process.env.NODE_ENV !== 'production') {
      var manualPropTypeCallCache = {};
      var manualPropTypeWarningCount = 0;
    }
    function checkType(isRequired, props, propName, componentName, location, propFullName, secret) {
      componentName = componentName || ANONYMOUS;
      propFullName = propFullName || propName;

      if (secret !== ReactPropTypesSecret) {
        if (throwOnDirectAccess) {
          // New behavior only for users of `prop-types` package
          invariant(
            false,
            'Calling PropTypes validators directly is not supported by the `prop-types` package. ' +
            'Use `PropTypes.checkPropTypes()` to call them. ' +
            'Read more at http://fb.me/use-check-prop-types'
          );
        } else if (process.env.NODE_ENV !== 'production' && typeof console !== 'undefined') {
          // Old behavior for people using React.PropTypes
          var cacheKey = componentName + ':' + propName;
          if (
            !manualPropTypeCallCache[cacheKey] &&
            // Avoid spamming the console because they are often not actionable except for lib authors
            manualPropTypeWarningCount < 3
          ) {
            warning(
              false,
              'You are manually calling a React.PropTypes validation ' +
              'function for the `%s` prop on `%s`. This is deprecated ' +
              'and will throw in the standalone `prop-types` package. ' +
              'You may be seeing this warning due to a third-party PropTypes ' +
              'library. See https://fb.me/react-warning-dont-call-proptypes ' + 'for details.',
              propFullName,
              componentName
            );
            manualPropTypeCallCache[cacheKey] = true;
            manualPropTypeWarningCount++;
          }
        }
      }
      if (props[propName] == null) {
        if (isRequired) {
          if (props[propName] === null) {
            return new PropTypeError('The ' + location + ' `' + propFullName + '` is marked as required ' + ('in `' + componentName + '`, but its value is `null`.'));
          }
          return new PropTypeError('The ' + location + ' `' + propFullName + '` is marked as required in ' + ('`' + componentName + '`, but its value is `undefined`.'));
        }
        return null;
      } else {
        return validate(props, propName, componentName, location, propFullName);
      }
    }

    var chainedCheckType = checkType.bind(null, false);
    chainedCheckType.isRequired = checkType.bind(null, true);

    return chainedCheckType;
  }

  function createPrimitiveTypeChecker(expectedType) {
    function validate(props, propName, componentName, location, propFullName, secret) {
      var propValue = props[propName];
      var propType = getPropType(propValue);
      if (propType !== expectedType) {
        // `propValue` being instance of, say, date/regexp, pass the 'object'
        // check, but we can offer a more precise error message here rather than
        // 'of type `object`'.
        var preciseType = getPreciseType(propValue);

        return new PropTypeError('Invalid ' + location + ' `' + propFullName + '` of type ' + ('`' + preciseType + '` supplied to `' + componentName + '`, expected ') + ('`' + expectedType + '`.'));
      }
      return null;
    }
    return createChainableTypeChecker(validate);
  }

  function createAnyTypeChecker() {
    return createChainableTypeChecker(emptyFunction.thatReturnsNull);
  }

  function createArrayOfTypeChecker(typeChecker) {
    function validate(props, propName, componentName, location, propFullName) {
      if (typeof typeChecker !== 'function') {
        return new PropTypeError('Property `' + propFullName + '` of component `' + componentName + '` has invalid PropType notation inside arrayOf.');
      }
      var propValue = props[propName];
      if (!Array.isArray(propValue)) {
        var propType = getPropType(propValue);
        return new PropTypeError('Invalid ' + location + ' `' + propFullName + '` of type ' + ('`' + propType + '` supplied to `' + componentName + '`, expected an array.'));
      }
      for (var i = 0; i < propValue.length; i++) {
        var error = typeChecker(propValue, i, componentName, location, propFullName + '[' + i + ']', ReactPropTypesSecret);
        if (error instanceof Error) {
          return error;
        }
      }
      return null;
    }
    return createChainableTypeChecker(validate);
  }

  function createElementTypeChecker() {
    function validate(props, propName, componentName, location, propFullName) {
      var propValue = props[propName];
      if (!isValidElement(propValue)) {
        var propType = getPropType(propValue);
        return new PropTypeError('Invalid ' + location + ' `' + propFullName + '` of type ' + ('`' + propType + '` supplied to `' + componentName + '`, expected a single ReactElement.'));
      }
      return null;
    }
    return createChainableTypeChecker(validate);
  }

  function createInstanceTypeChecker(expectedClass) {
    function validate(props, propName, componentName, location, propFullName) {
      if (!(props[propName] instanceof expectedClass)) {
        var expectedClassName = expectedClass.name || ANONYMOUS;
        var actualClassName = getClassName(props[propName]);
        return new PropTypeError('Invalid ' + location + ' `' + propFullName + '` of type ' + ('`' + actualClassName + '` supplied to `' + componentName + '`, expected ') + ('instance of `' + expectedClassName + '`.'));
      }
      return null;
    }
    return createChainableTypeChecker(validate);
  }

  function createEnumTypeChecker(expectedValues) {
    if (!Array.isArray(expectedValues)) {
      process.env.NODE_ENV !== 'production' ? warning(false, 'Invalid argument supplied to oneOf, expected an instance of array.') : void 0;
      return emptyFunction.thatReturnsNull;
    }

    function validate(props, propName, componentName, location, propFullName) {
      var propValue = props[propName];
      for (var i = 0; i < expectedValues.length; i++) {
        if (is(propValue, expectedValues[i])) {
          return null;
        }
      }

      var valuesString = JSON.stringify(expectedValues);
      return new PropTypeError('Invalid ' + location + ' `' + propFullName + '` of value `' + propValue + '` ' + ('supplied to `' + componentName + '`, expected one of ' + valuesString + '.'));
    }
    return createChainableTypeChecker(validate);
  }

  function createObjectOfTypeChecker(typeChecker) {
    function validate(props, propName, componentName, location, propFullName) {
      if (typeof typeChecker !== 'function') {
        return new PropTypeError('Property `' + propFullName + '` of component `' + componentName + '` has invalid PropType notation inside objectOf.');
      }
      var propValue = props[propName];
      var propType = getPropType(propValue);
      if (propType !== 'object') {
        return new PropTypeError('Invalid ' + location + ' `' + propFullName + '` of type ' + ('`' + propType + '` supplied to `' + componentName + '`, expected an object.'));
      }
      for (var key in propValue) {
        if (propValue.hasOwnProperty(key)) {
          var error = typeChecker(propValue, key, componentName, location, propFullName + '.' + key, ReactPropTypesSecret);
          if (error instanceof Error) {
            return error;
          }
        }
      }
      return null;
    }
    return createChainableTypeChecker(validate);
  }

  function createUnionTypeChecker(arrayOfTypeCheckers) {
    if (!Array.isArray(arrayOfTypeCheckers)) {
      process.env.NODE_ENV !== 'production' ? warning(false, 'Invalid argument supplied to oneOfType, expected an instance of array.') : void 0;
      return emptyFunction.thatReturnsNull;
    }

    for (var i = 0; i < arrayOfTypeCheckers.length; i++) {
      var checker = arrayOfTypeCheckers[i];
      if (typeof checker !== 'function') {
        warning(
          false,
          'Invalid argument supplid to oneOfType. Expected an array of check functions, but ' +
          'received %s at index %s.',
          getPostfixForTypeWarning(checker),
          i
        );
        return emptyFunction.thatReturnsNull;
      }
    }

    function validate(props, propName, componentName, location, propFullName) {
      for (var i = 0; i < arrayOfTypeCheckers.length; i++) {
        var checker = arrayOfTypeCheckers[i];
        if (checker(props, propName, componentName, location, propFullName, ReactPropTypesSecret) == null) {
          return null;
        }
      }

      return new PropTypeError('Invalid ' + location + ' `' + propFullName + '` supplied to ' + ('`' + componentName + '`.'));
    }
    return createChainableTypeChecker(validate);
  }

  function createNodeChecker() {
    function validate(props, propName, componentName, location, propFullName) {
      if (!isNode(props[propName])) {
        return new PropTypeError('Invalid ' + location + ' `' + propFullName + '` supplied to ' + ('`' + componentName + '`, expected a ReactNode.'));
      }
      return null;
    }
    return createChainableTypeChecker(validate);
  }

  function createShapeTypeChecker(shapeTypes) {
    function validate(props, propName, componentName, location, propFullName) {
      var propValue = props[propName];
      var propType = getPropType(propValue);
      if (propType !== 'object') {
        return new PropTypeError('Invalid ' + location + ' `' + propFullName + '` of type `' + propType + '` ' + ('supplied to `' + componentName + '`, expected `object`.'));
      }
      for (var key in shapeTypes) {
        var checker = shapeTypes[key];
        if (!checker) {
          continue;
        }
        var error = checker(propValue, key, componentName, location, propFullName + '.' + key, ReactPropTypesSecret);
        if (error) {
          return error;
        }
      }
      return null;
    }
    return createChainableTypeChecker(validate);
  }

  function isNode(propValue) {
    switch (typeof propValue) {
      case 'number':
      case 'string':
      case 'undefined':
        return true;
      case 'boolean':
        return !propValue;
      case 'object':
        if (Array.isArray(propValue)) {
          return propValue.every(isNode);
        }
        if (propValue === null || isValidElement(propValue)) {
          return true;
        }

        var iteratorFn = getIteratorFn(propValue);
        if (iteratorFn) {
          var iterator = iteratorFn.call(propValue);
          var step;
          if (iteratorFn !== propValue.entries) {
            while (!(step = iterator.next()).done) {
              if (!isNode(step.value)) {
                return false;
              }
            }
          } else {
            // Iterator will provide entry [k,v] tuples rather than values.
            while (!(step = iterator.next()).done) {
              var entry = step.value;
              if (entry) {
                if (!isNode(entry[1])) {
                  return false;
                }
              }
            }
          }
        } else {
          return false;
        }

        return true;
      default:
        return false;
    }
  }

  function isSymbol(propType, propValue) {
    // Native Symbol.
    if (propType === 'symbol') {
      return true;
    }

    // 19.4.3.5 Symbol.prototype[@@toStringTag] === 'Symbol'
    if (propValue['@@toStringTag'] === 'Symbol') {
      return true;
    }

    // Fallback for non-spec compliant Symbols which are polyfilled.
    if (typeof Symbol === 'function' && propValue instanceof Symbol) {
      return true;
    }

    return false;
  }

  // Equivalent of `typeof` but with special handling for array and regexp.
  function getPropType(propValue) {
    var propType = typeof propValue;
    if (Array.isArray(propValue)) {
      return 'array';
    }
    if (propValue instanceof RegExp) {
      // Old webkits (at least until Android 4.0) return 'function' rather than
      // 'object' for typeof a RegExp. We'll normalize this here so that /bla/
      // passes PropTypes.object.
      return 'object';
    }
    if (isSymbol(propType, propValue)) {
      return 'symbol';
    }
    return propType;
  }

  // This handles more types than `getPropType`. Only used for error messages.
  // See `createPrimitiveTypeChecker`.
  function getPreciseType(propValue) {
    if (typeof propValue === 'undefined' || propValue === null) {
      return '' + propValue;
    }
    var propType = getPropType(propValue);
    if (propType === 'object') {
      if (propValue instanceof Date) {
        return 'date';
      } else if (propValue instanceof RegExp) {
        return 'regexp';
      }
    }
    return propType;
  }

  // Returns a string that is postfixed to a warning about an invalid type.
  // For example, "undefined" or "of type array"
  function getPostfixForTypeWarning(value) {
    var type = getPreciseType(value);
    switch (type) {
      case 'array':
      case 'object':
        return 'an ' + type;
      case 'boolean':
      case 'date':
      case 'regexp':
        return 'a ' + type;
      default:
        return type;
    }
  }

  // Returns class name of the object, if any.
  function getClassName(propValue) {
    if (!propValue.constructor || !propValue.constructor.name) {
      return ANONYMOUS;
    }
    return propValue.constructor.name;
  }

  ReactPropTypes.checkPropTypes = checkPropTypes;
  ReactPropTypes.PropTypes = ReactPropTypes;

  return ReactPropTypes;
};

/* WEBPACK VAR INJECTION */}.call(exports, __webpack_require__(20)))

/***/ }),
/* 175 */
/***/ (function(module, exports, __webpack_require__) {

// This method of obtaining a reference to the global object needs to be
// kept identical to the way it is obtained in runtime.js
var g = (function() { return this })() || Function("return this")();

// Use `getOwnPropertyNames` because not all browsers support calling
// `hasOwnProperty` on the global `self` object in a worker. See #183.
var hadRuntime = g.regeneratorRuntime &&
  Object.getOwnPropertyNames(g).indexOf("regeneratorRuntime") >= 0;

// Save the old regeneratorRuntime in case it needs to be restored later.
var oldRuntime = hadRuntime && g.regeneratorRuntime;

// Force reevalutation of runtime.js.
g.regeneratorRuntime = undefined;

module.exports = __webpack_require__(176);

if (hadRuntime) {
  // Restore the original runtime.
  g.regeneratorRuntime = oldRuntime;
} else {
  // Remove the global property added by runtime.js.
  try {
    delete g.regeneratorRuntime;
  } catch(e) {
    g.regeneratorRuntime = undefined;
  }
}


/***/ }),
/* 176 */
/***/ (function(module, exports) {

/**
 * Copyright (c) 2014, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the BSD-style license found in the
 * https://raw.github.com/facebook/regenerator/master/LICENSE file. An
 * additional grant of patent rights can be found in the PATENTS file in
 * the same directory.
 */

!(function(global) {
  "use strict";

  var Op = Object.prototype;
  var hasOwn = Op.hasOwnProperty;
  var undefined; // More compressible than void 0.
  var $Symbol = typeof Symbol === "function" ? Symbol : {};
  var iteratorSymbol = $Symbol.iterator || "@@iterator";
  var asyncIteratorSymbol = $Symbol.asyncIterator || "@@asyncIterator";
  var toStringTagSymbol = $Symbol.toStringTag || "@@toStringTag";

  var inModule = typeof module === "object";
  var runtime = global.regeneratorRuntime;
  if (runtime) {
    if (inModule) {
      // If regeneratorRuntime is defined globally and we're in a module,
      // make the exports object identical to regeneratorRuntime.
      module.exports = runtime;
    }
    // Don't bother evaluating the rest of this file if the runtime was
    // already defined globally.
    return;
  }

  // Define the runtime globally (as expected by generated code) as either
  // module.exports (if we're in a module) or a new, empty object.
  runtime = global.regeneratorRuntime = inModule ? module.exports : {};

  function wrap(innerFn, outerFn, self, tryLocsList) {
    // If outerFn provided and outerFn.prototype is a Generator, then outerFn.prototype instanceof Generator.
    var protoGenerator = outerFn && outerFn.prototype instanceof Generator ? outerFn : Generator;
    var generator = Object.create(protoGenerator.prototype);
    var context = new Context(tryLocsList || []);

    // The ._invoke method unifies the implementations of the .next,
    // .throw, and .return methods.
    generator._invoke = makeInvokeMethod(innerFn, self, context);

    return generator;
  }
  runtime.wrap = wrap;

  // Try/catch helper to minimize deoptimizations. Returns a completion
  // record like context.tryEntries[i].completion. This interface could
  // have been (and was previously) designed to take a closure to be
  // invoked without arguments, but in all the cases we care about we
  // already have an existing method we want to call, so there's no need
  // to create a new function object. We can even get away with assuming
  // the method takes exactly one argument, since that happens to be true
  // in every case, so we don't have to touch the arguments object. The
  // only additional allocation required is the completion record, which
  // has a stable shape and so hopefully should be cheap to allocate.
  function tryCatch(fn, obj, arg) {
    try {
      return { type: "normal", arg: fn.call(obj, arg) };
    } catch (err) {
      return { type: "throw", arg: err };
    }
  }

  var GenStateSuspendedStart = "suspendedStart";
  var GenStateSuspendedYield = "suspendedYield";
  var GenStateExecuting = "executing";
  var GenStateCompleted = "completed";

  // Returning this object from the innerFn has the same effect as
  // breaking out of the dispatch switch statement.
  var ContinueSentinel = {};

  // Dummy constructor functions that we use as the .constructor and
  // .constructor.prototype properties for functions that return Generator
  // objects. For full spec compliance, you may wish to configure your
  // minifier not to mangle the names of these two functions.
  function Generator() {}
  function GeneratorFunction() {}
  function GeneratorFunctionPrototype() {}

  // This is a polyfill for %IteratorPrototype% for environments that
  // don't natively support it.
  var IteratorPrototype = {};
  IteratorPrototype[iteratorSymbol] = function () {
    return this;
  };

  var getProto = Object.getPrototypeOf;
  var NativeIteratorPrototype = getProto && getProto(getProto(values([])));
  if (NativeIteratorPrototype &&
      NativeIteratorPrototype !== Op &&
      hasOwn.call(NativeIteratorPrototype, iteratorSymbol)) {
    // This environment has a native %IteratorPrototype%; use it instead
    // of the polyfill.
    IteratorPrototype = NativeIteratorPrototype;
  }

  var Gp = GeneratorFunctionPrototype.prototype =
    Generator.prototype = Object.create(IteratorPrototype);
  GeneratorFunction.prototype = Gp.constructor = GeneratorFunctionPrototype;
  GeneratorFunctionPrototype.constructor = GeneratorFunction;
  GeneratorFunctionPrototype[toStringTagSymbol] =
    GeneratorFunction.displayName = "GeneratorFunction";

  // Helper for defining the .next, .throw, and .return methods of the
  // Iterator interface in terms of a single ._invoke method.
  function defineIteratorMethods(prototype) {
    ["next", "throw", "return"].forEach(function(method) {
      prototype[method] = function(arg) {
        return this._invoke(method, arg);
      };
    });
  }

  runtime.isGeneratorFunction = function(genFun) {
    var ctor = typeof genFun === "function" && genFun.constructor;
    return ctor
      ? ctor === GeneratorFunction ||
        // For the native GeneratorFunction constructor, the best we can
        // do is to check its .name property.
        (ctor.displayName || ctor.name) === "GeneratorFunction"
      : false;
  };

  runtime.mark = function(genFun) {
    if (Object.setPrototypeOf) {
      Object.setPrototypeOf(genFun, GeneratorFunctionPrototype);
    } else {
      genFun.__proto__ = GeneratorFunctionPrototype;
      if (!(toStringTagSymbol in genFun)) {
        genFun[toStringTagSymbol] = "GeneratorFunction";
      }
    }
    genFun.prototype = Object.create(Gp);
    return genFun;
  };

  // Within the body of any async function, `await x` is transformed to
  // `yield regeneratorRuntime.awrap(x)`, so that the runtime can test
  // `hasOwn.call(value, "__await")` to determine if the yielded value is
  // meant to be awaited.
  runtime.awrap = function(arg) {
    return { __await: arg };
  };

  function AsyncIterator(generator) {
    function invoke(method, arg, resolve, reject) {
      var record = tryCatch(generator[method], generator, arg);
      if (record.type === "throw") {
        reject(record.arg);
      } else {
        var result = record.arg;
        var value = result.value;
        if (value &&
            typeof value === "object" &&
            hasOwn.call(value, "__await")) {
          return Promise.resolve(value.__await).then(function(value) {
            invoke("next", value, resolve, reject);
          }, function(err) {
            invoke("throw", err, resolve, reject);
          });
        }

        return Promise.resolve(value).then(function(unwrapped) {
          // When a yielded Promise is resolved, its final value becomes
          // the .value of the Promise<{value,done}> result for the
          // current iteration. If the Promise is rejected, however, the
          // result for this iteration will be rejected with the same
          // reason. Note that rejections of yielded Promises are not
          // thrown back into the generator function, as is the case
          // when an awaited Promise is rejected. This difference in
          // behavior between yield and await is important, because it
          // allows the consumer to decide what to do with the yielded
          // rejection (swallow it and continue, manually .throw it back
          // into the generator, abandon iteration, whatever). With
          // await, by contrast, there is no opportunity to examine the
          // rejection reason outside the generator function, so the
          // only option is to throw it from the await expression, and
          // let the generator function handle the exception.
          result.value = unwrapped;
          resolve(result);
        }, reject);
      }
    }

    var previousPromise;

    function enqueue(method, arg) {
      function callInvokeWithMethodAndArg() {
        return new Promise(function(resolve, reject) {
          invoke(method, arg, resolve, reject);
        });
      }

      return previousPromise =
        // If enqueue has been called before, then we want to wait until
        // all previous Promises have been resolved before calling invoke,
        // so that results are always delivered in the correct order. If
        // enqueue has not been called before, then it is important to
        // call invoke immediately, without waiting on a callback to fire,
        // so that the async generator function has the opportunity to do
        // any necessary setup in a predictable way. This predictability
        // is why the Promise constructor synchronously invokes its
        // executor callback, and why async functions synchronously
        // execute code before the first await. Since we implement simple
        // async functions in terms of async generators, it is especially
        // important to get this right, even though it requires care.
        previousPromise ? previousPromise.then(
          callInvokeWithMethodAndArg,
          // Avoid propagating failures to Promises returned by later
          // invocations of the iterator.
          callInvokeWithMethodAndArg
        ) : callInvokeWithMethodAndArg();
    }

    // Define the unified helper method that is used to implement .next,
    // .throw, and .return (see defineIteratorMethods).
    this._invoke = enqueue;
  }

  defineIteratorMethods(AsyncIterator.prototype);
  AsyncIterator.prototype[asyncIteratorSymbol] = function () {
    return this;
  };
  runtime.AsyncIterator = AsyncIterator;

  // Note that simple async functions are implemented on top of
  // AsyncIterator objects; they just return a Promise for the value of
  // the final result produced by the iterator.
  runtime.async = function(innerFn, outerFn, self, tryLocsList) {
    var iter = new AsyncIterator(
      wrap(innerFn, outerFn, self, tryLocsList)
    );

    return runtime.isGeneratorFunction(outerFn)
      ? iter // If outerFn is a generator, return the full iterator.
      : iter.next().then(function(result) {
          return result.done ? result.value : iter.next();
        });
  };

  function makeInvokeMethod(innerFn, self, context) {
    var state = GenStateSuspendedStart;

    return function invoke(method, arg) {
      if (state === GenStateExecuting) {
        throw new Error("Generator is already running");
      }

      if (state === GenStateCompleted) {
        if (method === "throw") {
          throw arg;
        }

        // Be forgiving, per 25.3.3.3.3 of the spec:
        // https://people.mozilla.org/~jorendorff/es6-draft.html#sec-generatorresume
        return doneResult();
      }

      context.method = method;
      context.arg = arg;

      while (true) {
        var delegate = context.delegate;
        if (delegate) {
          var delegateResult = maybeInvokeDelegate(delegate, context);
          if (delegateResult) {
            if (delegateResult === ContinueSentinel) continue;
            return delegateResult;
          }
        }

        if (context.method === "next") {
          // Setting context._sent for legacy support of Babel's
          // function.sent implementation.
          context.sent = context._sent = context.arg;

        } else if (context.method === "throw") {
          if (state === GenStateSuspendedStart) {
            state = GenStateCompleted;
            throw context.arg;
          }

          context.dispatchException(context.arg);

        } else if (context.method === "return") {
          context.abrupt("return", context.arg);
        }

        state = GenStateExecuting;

        var record = tryCatch(innerFn, self, context);
        if (record.type === "normal") {
          // If an exception is thrown from innerFn, we leave state ===
          // GenStateExecuting and loop back for another invocation.
          state = context.done
            ? GenStateCompleted
            : GenStateSuspendedYield;

          if (record.arg === ContinueSentinel) {
            continue;
          }

          return {
            value: record.arg,
            done: context.done
          };

        } else if (record.type === "throw") {
          state = GenStateCompleted;
          // Dispatch the exception by looping back around to the
          // context.dispatchException(context.arg) call above.
          context.method = "throw";
          context.arg = record.arg;
        }
      }
    };
  }

  // Call delegate.iterator[context.method](context.arg) and handle the
  // result, either by returning a { value, done } result from the
  // delegate iterator, or by modifying context.method and context.arg,
  // setting context.delegate to null, and returning the ContinueSentinel.
  function maybeInvokeDelegate(delegate, context) {
    var method = delegate.iterator[context.method];
    if (method === undefined) {
      // A .throw or .return when the delegate iterator has no .throw
      // method always terminates the yield* loop.
      context.delegate = null;

      if (context.method === "throw") {
        if (delegate.iterator.return) {
          // If the delegate iterator has a return method, give it a
          // chance to clean up.
          context.method = "return";
          context.arg = undefined;
          maybeInvokeDelegate(delegate, context);

          if (context.method === "throw") {
            // If maybeInvokeDelegate(context) changed context.method from
            // "return" to "throw", let that override the TypeError below.
            return ContinueSentinel;
          }
        }

        context.method = "throw";
        context.arg = new TypeError(
          "The iterator does not provide a 'throw' method");
      }

      return ContinueSentinel;
    }

    var record = tryCatch(method, delegate.iterator, context.arg);

    if (record.type === "throw") {
      context.method = "throw";
      context.arg = record.arg;
      context.delegate = null;
      return ContinueSentinel;
    }

    var info = record.arg;

    if (! info) {
      context.method = "throw";
      context.arg = new TypeError("iterator result is not an object");
      context.delegate = null;
      return ContinueSentinel;
    }

    if (info.done) {
      // Assign the result of the finished delegate to the temporary
      // variable specified by delegate.resultName (see delegateYield).
      context[delegate.resultName] = info.value;

      // Resume execution at the desired location (see delegateYield).
      context.next = delegate.nextLoc;

      // If context.method was "throw" but the delegate handled the
      // exception, let the outer generator proceed normally. If
      // context.method was "next", forget context.arg since it has been
      // "consumed" by the delegate iterator. If context.method was
      // "return", allow the original .return call to continue in the
      // outer generator.
      if (context.method !== "return") {
        context.method = "next";
        context.arg = undefined;
      }

    } else {
      // Re-yield the result returned by the delegate method.
      return info;
    }

    // The delegate iterator is finished, so forget it and continue with
    // the outer generator.
    context.delegate = null;
    return ContinueSentinel;
  }

  // Define Generator.prototype.{next,throw,return} in terms of the
  // unified ._invoke helper method.
  defineIteratorMethods(Gp);

  Gp[toStringTagSymbol] = "Generator";

  // A Generator should always return itself as the iterator object when the
  // @@iterator function is called on it. Some browsers' implementations of the
  // iterator prototype chain incorrectly implement this, causing the Generator
  // object to not be returned from this call. This ensures that doesn't happen.
  // See https://github.com/facebook/regenerator/issues/274 for more details.
  Gp[iteratorSymbol] = function() {
    return this;
  };

  Gp.toString = function() {
    return "[object Generator]";
  };

  function pushTryEntry(locs) {
    var entry = { tryLoc: locs[0] };

    if (1 in locs) {
      entry.catchLoc = locs[1];
    }

    if (2 in locs) {
      entry.finallyLoc = locs[2];
      entry.afterLoc = locs[3];
    }

    this.tryEntries.push(entry);
  }

  function resetTryEntry(entry) {
    var record = entry.completion || {};
    record.type = "normal";
    delete record.arg;
    entry.completion = record;
  }

  function Context(tryLocsList) {
    // The root entry object (effectively a try statement without a catch
    // or a finally block) gives us a place to store values thrown from
    // locations where there is no enclosing try statement.
    this.tryEntries = [{ tryLoc: "root" }];
    tryLocsList.forEach(pushTryEntry, this);
    this.reset(true);
  }

  runtime.keys = function(object) {
    var keys = [];
    for (var key in object) {
      keys.push(key);
    }
    keys.reverse();

    // Rather than returning an object with a next method, we keep
    // things simple and return the next function itself.
    return function next() {
      while (keys.length) {
        var key = keys.pop();
        if (key in object) {
          next.value = key;
          next.done = false;
          return next;
        }
      }

      // To avoid creating an additional object, we just hang the .value
      // and .done properties off the next function object itself. This
      // also ensures that the minifier will not anonymize the function.
      next.done = true;
      return next;
    };
  };

  function values(iterable) {
    if (iterable) {
      var iteratorMethod = iterable[iteratorSymbol];
      if (iteratorMethod) {
        return iteratorMethod.call(iterable);
      }

      if (typeof iterable.next === "function") {
        return iterable;
      }

      if (!isNaN(iterable.length)) {
        var i = -1, next = function next() {
          while (++i < iterable.length) {
            if (hasOwn.call(iterable, i)) {
              next.value = iterable[i];
              next.done = false;
              return next;
            }
          }

          next.value = undefined;
          next.done = true;

          return next;
        };

        return next.next = next;
      }
    }

    // Return an iterator with no values.
    return { next: doneResult };
  }
  runtime.values = values;

  function doneResult() {
    return { value: undefined, done: true };
  }

  Context.prototype = {
    constructor: Context,

    reset: function(skipTempReset) {
      this.prev = 0;
      this.next = 0;
      // Resetting context._sent for legacy support of Babel's
      // function.sent implementation.
      this.sent = this._sent = undefined;
      this.done = false;
      this.delegate = null;

      this.method = "next";
      this.arg = undefined;

      this.tryEntries.forEach(resetTryEntry);

      if (!skipTempReset) {
        for (var name in this) {
          // Not sure about the optimal order of these conditions:
          if (name.charAt(0) === "t" &&
              hasOwn.call(this, name) &&
              !isNaN(+name.slice(1))) {
            this[name] = undefined;
          }
        }
      }
    },

    stop: function() {
      this.done = true;

      var rootEntry = this.tryEntries[0];
      var rootRecord = rootEntry.completion;
      if (rootRecord.type === "throw") {
        throw rootRecord.arg;
      }

      return this.rval;
    },

    dispatchException: function(exception) {
      if (this.done) {
        throw exception;
      }

      var context = this;
      function handle(loc, caught) {
        record.type = "throw";
        record.arg = exception;
        context.next = loc;

        if (caught) {
          // If the dispatched exception was caught by a catch block,
          // then let that catch block handle the exception normally.
          context.method = "next";
          context.arg = undefined;
        }

        return !! caught;
      }

      for (var i = this.tryEntries.length - 1; i >= 0; --i) {
        var entry = this.tryEntries[i];
        var record = entry.completion;

        if (entry.tryLoc === "root") {
          // Exception thrown outside of any try block that could handle
          // it, so set the completion value of the entire function to
          // throw the exception.
          return handle("end");
        }

        if (entry.tryLoc <= this.prev) {
          var hasCatch = hasOwn.call(entry, "catchLoc");
          var hasFinally = hasOwn.call(entry, "finallyLoc");

          if (hasCatch && hasFinally) {
            if (this.prev < entry.catchLoc) {
              return handle(entry.catchLoc, true);
            } else if (this.prev < entry.finallyLoc) {
              return handle(entry.finallyLoc);
            }

          } else if (hasCatch) {
            if (this.prev < entry.catchLoc) {
              return handle(entry.catchLoc, true);
            }

          } else if (hasFinally) {
            if (this.prev < entry.finallyLoc) {
              return handle(entry.finallyLoc);
            }

          } else {
            throw new Error("try statement without catch or finally");
          }
        }
      }
    },

    abrupt: function(type, arg) {
      for (var i = this.tryEntries.length - 1; i >= 0; --i) {
        var entry = this.tryEntries[i];
        if (entry.tryLoc <= this.prev &&
            hasOwn.call(entry, "finallyLoc") &&
            this.prev < entry.finallyLoc) {
          var finallyEntry = entry;
          break;
        }
      }

      if (finallyEntry &&
          (type === "break" ||
           type === "continue") &&
          finallyEntry.tryLoc <= arg &&
          arg <= finallyEntry.finallyLoc) {
        // Ignore the finally entry if control is not jumping to a
        // location outside the try/catch block.
        finallyEntry = null;
      }

      var record = finallyEntry ? finallyEntry.completion : {};
      record.type = type;
      record.arg = arg;

      if (finallyEntry) {
        this.method = "next";
        this.next = finallyEntry.finallyLoc;
        return ContinueSentinel;
      }

      return this.complete(record);
    },

    complete: function(record, afterLoc) {
      if (record.type === "throw") {
        throw record.arg;
      }

      if (record.type === "break" ||
          record.type === "continue") {
        this.next = record.arg;
      } else if (record.type === "return") {
        this.rval = this.arg = record.arg;
        this.method = "return";
        this.next = "end";
      } else if (record.type === "normal" && afterLoc) {
        this.next = afterLoc;
      }

      return ContinueSentinel;
    },

    finish: function(finallyLoc) {
      for (var i = this.tryEntries.length - 1; i >= 0; --i) {
        var entry = this.tryEntries[i];
        if (entry.finallyLoc === finallyLoc) {
          this.complete(entry.completion, entry.afterLoc);
          resetTryEntry(entry);
          return ContinueSentinel;
        }
      }
    },

    "catch": function(tryLoc) {
      for (var i = this.tryEntries.length - 1; i >= 0; --i) {
        var entry = this.tryEntries[i];
        if (entry.tryLoc === tryLoc) {
          var record = entry.completion;
          if (record.type === "throw") {
            var thrown = record.arg;
            resetTryEntry(entry);
          }
          return thrown;
        }
      }

      // The context.catch method must only be called with a location
      // argument that corresponds to a known catch block.
      throw new Error("illegal catch attempt");
    },

    delegateYield: function(iterable, resultName, nextLoc) {
      this.delegate = {
        iterator: values(iterable),
        resultName: resultName,
        nextLoc: nextLoc
      };

      if (this.method === "next") {
        // Deliberately forget the last sent value so that we don't
        // accidentally pass it on to the delegate.
        this.arg = undefined;
      }

      return ContinueSentinel;
    }
  };
})(
  // In sloppy mode, unbound `this` refers to the global object, fallback to
  // Function constructor if we're in global strict mode. That is sadly a form
  // of indirect eval which violates Content Security Policy.
  (function() { return this })() || Function("return this")()
);


/***/ }),
/* 177 */
/***/ (function(module, exports) {

module.exports = shallow

function shallow(a, b, compare) {
  var aIsNull = a === null
  var bIsNull = b === null

  if (aIsNull !== bIsNull) return false

  var aIsArray = Array.isArray(a)
  var bIsArray = Array.isArray(b)

  if (aIsArray !== bIsArray) return false

  var aTypeof = typeof a
  var bTypeof = typeof b

  if (aTypeof !== bTypeof) return false
  if (flat(aTypeof)) return compare
    ? compare(a, b)
    : a === b

  return aIsArray
    ? shallowArray(a, b, compare)
    : shallowObject(a, b, compare)
}

function shallowArray(a, b, compare) {
  var l = a.length
  if (l !== b.length) return false

  if (compare) {
    for (var i = 0; i < l; i++)
      if (!compare(a[i], b[i])) return false
  } else {
    for (var i = 0; i < l; i++) {
      if (a[i] !== b[i]) return false
    }
  }

  return true
}

function shallowObject(a, b, compare) {
  var ka = 0
  var kb = 0

  if (compare) {
    for (var key in a) {
      if (
        a.hasOwnProperty(key) &&
        !compare(a[key], b[key])
      ) return false

      ka++
    }
  } else {
    for (var key in a) {
      if (
        a.hasOwnProperty(key) &&
        a[key] !== b[key]
      ) return false

      ka++
    }
  }

  for (var key in b) {
    if (b.hasOwnProperty(key)) kb++
  }

  return ka === kb
}

function flat(type) {
  return (
    type !== 'function' &&
    type !== 'object'
  )
}


/***/ }),
/* 178 */
/***/ (function(module, exports, __webpack_require__) {

/**
 * Root reference for iframes.
 */

var root;
if (typeof window !== 'undefined') { // Browser window
  root = window;
} else if (typeof self !== 'undefined') { // Web Worker
  root = self;
} else { // Other environments
  console.warn("Using browser-only version of superagent in non-browser environment");
  root = this;
}

var Emitter = __webpack_require__(144);
var RequestBase = __webpack_require__(180);
var isObject = __webpack_require__(53);
var isFunction = __webpack_require__(179);
var ResponseBase = __webpack_require__(181);
var shouldRetry = __webpack_require__(182);

/**
 * Noop.
 */

function noop(){};

/**
 * Expose `request`.
 */

var request = exports = module.exports = function(method, url) {
  // callback
  if ('function' == typeof url) {
    return new exports.Request('GET', method).end(url);
  }

  // url first
  if (1 == arguments.length) {
    return new exports.Request('GET', method);
  }

  return new exports.Request(method, url);
}

exports.Request = Request;

/**
 * Determine XHR.
 */

request.getXHR = function () {
  if (root.XMLHttpRequest
      && (!root.location || 'file:' != root.location.protocol
          || !root.ActiveXObject)) {
    return new XMLHttpRequest;
  } else {
    try { return new ActiveXObject('Microsoft.XMLHTTP'); } catch(e) {}
    try { return new ActiveXObject('Msxml2.XMLHTTP.6.0'); } catch(e) {}
    try { return new ActiveXObject('Msxml2.XMLHTTP.3.0'); } catch(e) {}
    try { return new ActiveXObject('Msxml2.XMLHTTP'); } catch(e) {}
  }
  throw Error("Browser-only verison of superagent could not find XHR");
};

/**
 * Removes leading and trailing whitespace, added to support IE.
 *
 * @param {String} s
 * @return {String}
 * @api private
 */

var trim = ''.trim
  ? function(s) { return s.trim(); }
  : function(s) { return s.replace(/(^\s*|\s*$)/g, ''); };

/**
 * Serialize the given `obj`.
 *
 * @param {Object} obj
 * @return {String}
 * @api private
 */

function serialize(obj) {
  if (!isObject(obj)) return obj;
  var pairs = [];
  for (var key in obj) {
    pushEncodedKeyValuePair(pairs, key, obj[key]);
  }
  return pairs.join('&');
}

/**
 * Helps 'serialize' with serializing arrays.
 * Mutates the pairs array.
 *
 * @param {Array} pairs
 * @param {String} key
 * @param {Mixed} val
 */

function pushEncodedKeyValuePair(pairs, key, val) {
  if (val != null) {
    if (Array.isArray(val)) {
      val.forEach(function(v) {
        pushEncodedKeyValuePair(pairs, key, v);
      });
    } else if (isObject(val)) {
      for(var subkey in val) {
        pushEncodedKeyValuePair(pairs, key + '[' + subkey + ']', val[subkey]);
      }
    } else {
      pairs.push(encodeURIComponent(key)
        + '=' + encodeURIComponent(val));
    }
  } else if (val === null) {
    pairs.push(encodeURIComponent(key));
  }
}

/**
 * Expose serialization method.
 */

 request.serializeObject = serialize;

 /**
  * Parse the given x-www-form-urlencoded `str`.
  *
  * @param {String} str
  * @return {Object}
  * @api private
  */

function parseString(str) {
  var obj = {};
  var pairs = str.split('&');
  var pair;
  var pos;

  for (var i = 0, len = pairs.length; i < len; ++i) {
    pair = pairs[i];
    pos = pair.indexOf('=');
    if (pos == -1) {
      obj[decodeURIComponent(pair)] = '';
    } else {
      obj[decodeURIComponent(pair.slice(0, pos))] =
        decodeURIComponent(pair.slice(pos + 1));
    }
  }

  return obj;
}

/**
 * Expose parser.
 */

request.parseString = parseString;

/**
 * Default MIME type map.
 *
 *     superagent.types.xml = 'application/xml';
 *
 */

request.types = {
  html: 'text/html',
  json: 'application/json',
  xml: 'application/xml',
  urlencoded: 'application/x-www-form-urlencoded',
  'form': 'application/x-www-form-urlencoded',
  'form-data': 'application/x-www-form-urlencoded'
};

/**
 * Default serialization map.
 *
 *     superagent.serialize['application/xml'] = function(obj){
 *       return 'generated xml here';
 *     };
 *
 */

 request.serialize = {
   'application/x-www-form-urlencoded': serialize,
   'application/json': JSON.stringify
 };

 /**
  * Default parsers.
  *
  *     superagent.parse['application/xml'] = function(str){
  *       return { object parsed from str };
  *     };
  *
  */

request.parse = {
  'application/x-www-form-urlencoded': parseString,
  'application/json': JSON.parse
};

/**
 * Parse the given header `str` into
 * an object containing the mapped fields.
 *
 * @param {String} str
 * @return {Object}
 * @api private
 */

function parseHeader(str) {
  var lines = str.split(/\r?\n/);
  var fields = {};
  var index;
  var line;
  var field;
  var val;

  lines.pop(); // trailing CRLF

  for (var i = 0, len = lines.length; i < len; ++i) {
    line = lines[i];
    index = line.indexOf(':');
    field = line.slice(0, index).toLowerCase();
    val = trim(line.slice(index + 1));
    fields[field] = val;
  }

  return fields;
}

/**
 * Check if `mime` is json or has +json structured syntax suffix.
 *
 * @param {String} mime
 * @return {Boolean}
 * @api private
 */

function isJSON(mime) {
  return /[\/+]json\b/.test(mime);
}

/**
 * Initialize a new `Response` with the given `xhr`.
 *
 *  - set flags (.ok, .error, etc)
 *  - parse header
 *
 * Examples:
 *
 *  Aliasing `superagent` as `request` is nice:
 *
 *      request = superagent;
 *
 *  We can use the promise-like API, or pass callbacks:
 *
 *      request.get('/').end(function(res){});
 *      request.get('/', function(res){});
 *
 *  Sending data can be chained:
 *
 *      request
 *        .post('/user')
 *        .send({ name: 'tj' })
 *        .end(function(res){});
 *
 *  Or passed to `.send()`:
 *
 *      request
 *        .post('/user')
 *        .send({ name: 'tj' }, function(res){});
 *
 *  Or passed to `.post()`:
 *
 *      request
 *        .post('/user', { name: 'tj' })
 *        .end(function(res){});
 *
 * Or further reduced to a single call for simple cases:
 *
 *      request
 *        .post('/user', { name: 'tj' }, function(res){});
 *
 * @param {XMLHTTPRequest} xhr
 * @param {Object} options
 * @api private
 */

function Response(req) {
  this.req = req;
  this.xhr = this.req.xhr;
  // responseText is accessible only if responseType is '' or 'text' and on older browsers
  this.text = ((this.req.method !='HEAD' && (this.xhr.responseType === '' || this.xhr.responseType === 'text')) || typeof this.xhr.responseType === 'undefined')
     ? this.xhr.responseText
     : null;
  this.statusText = this.req.xhr.statusText;
  var status = this.xhr.status;
  // handle IE9 bug: http://stackoverflow.com/questions/10046972/msie-returns-status-code-of-1223-for-ajax-request
  if (status === 1223) {
      status = 204;
  }
  this._setStatusProperties(status);
  this.header = this.headers = parseHeader(this.xhr.getAllResponseHeaders());
  // getAllResponseHeaders sometimes falsely returns "" for CORS requests, but
  // getResponseHeader still works. so we get content-type even if getting
  // other headers fails.
  this.header['content-type'] = this.xhr.getResponseHeader('content-type');
  this._setHeaderProperties(this.header);

  if (null === this.text && req._responseType) {
    this.body = this.xhr.response;
  } else {
    this.body = this.req.method != 'HEAD'
      ? this._parseBody(this.text ? this.text : this.xhr.response)
      : null;
  }
}

ResponseBase(Response.prototype);

/**
 * Parse the given body `str`.
 *
 * Used for auto-parsing of bodies. Parsers
 * are defined on the `superagent.parse` object.
 *
 * @param {String} str
 * @return {Mixed}
 * @api private
 */

Response.prototype._parseBody = function(str){
  var parse = request.parse[this.type];
  if(this.req._parser) {
    return this.req._parser(this, str);
  }
  if (!parse && isJSON(this.type)) {
    parse = request.parse['application/json'];
  }
  return parse && str && (str.length || str instanceof Object)
    ? parse(str)
    : null;
};

/**
 * Return an `Error` representative of this response.
 *
 * @return {Error}
 * @api public
 */

Response.prototype.toError = function(){
  var req = this.req;
  var method = req.method;
  var url = req.url;

  var msg = 'cannot ' + method + ' ' + url + ' (' + this.status + ')';
  var err = new Error(msg);
  err.status = this.status;
  err.method = method;
  err.url = url;

  return err;
};

/**
 * Expose `Response`.
 */

request.Response = Response;

/**
 * Initialize a new `Request` with the given `method` and `url`.
 *
 * @param {String} method
 * @param {String} url
 * @api public
 */

function Request(method, url) {
  var self = this;
  this._query = this._query || [];
  this.method = method;
  this.url = url;
  this.header = {}; // preserves header name case
  this._header = {}; // coerces header names to lowercase
  this.on('end', function(){
    var err = null;
    var res = null;

    try {
      res = new Response(self);
    } catch(e) {
      err = new Error('Parser is unable to parse the response');
      err.parse = true;
      err.original = e;
      // issue #675: return the raw response if the response parsing fails
      if (self.xhr) {
        // ie9 doesn't have 'response' property
        err.rawResponse = typeof self.xhr.responseType == 'undefined' ? self.xhr.responseText : self.xhr.response;
        // issue #876: return the http status code if the response parsing fails
        err.status = self.xhr.status ? self.xhr.status : null;
        err.statusCode = err.status; // backwards-compat only
      } else {
        err.rawResponse = null;
        err.status = null;
      }

      return self.callback(err);
    }

    self.emit('response', res);

    var new_err;
    try {
      if (!self._isResponseOK(res)) {
        new_err = new Error(res.statusText || 'Unsuccessful HTTP response');
        new_err.original = err;
        new_err.response = res;
        new_err.status = res.status;
      }
    } catch(e) {
      new_err = e; // #985 touching res may cause INVALID_STATE_ERR on old Android
    }

    // #1000 don't catch errors from the callback to avoid double calling it
    if (new_err) {
      self.callback(new_err, res);
    } else {
      self.callback(null, res);
    }
  });
}

/**
 * Mixin `Emitter` and `RequestBase`.
 */

Emitter(Request.prototype);
RequestBase(Request.prototype);

/**
 * Set Content-Type to `type`, mapping values from `request.types`.
 *
 * Examples:
 *
 *      superagent.types.xml = 'application/xml';
 *
 *      request.post('/')
 *        .type('xml')
 *        .send(xmlstring)
 *        .end(callback);
 *
 *      request.post('/')
 *        .type('application/xml')
 *        .send(xmlstring)
 *        .end(callback);
 *
 * @param {String} type
 * @return {Request} for chaining
 * @api public
 */

Request.prototype.type = function(type){
  this.set('Content-Type', request.types[type] || type);
  return this;
};

/**
 * Set Accept to `type`, mapping values from `request.types`.
 *
 * Examples:
 *
 *      superagent.types.json = 'application/json';
 *
 *      request.get('/agent')
 *        .accept('json')
 *        .end(callback);
 *
 *      request.get('/agent')
 *        .accept('application/json')
 *        .end(callback);
 *
 * @param {String} accept
 * @return {Request} for chaining
 * @api public
 */

Request.prototype.accept = function(type){
  this.set('Accept', request.types[type] || type);
  return this;
};

/**
 * Set Authorization field value with `user` and `pass`.
 *
 * @param {String} user
 * @param {String} [pass] optional in case of using 'bearer' as type
 * @param {Object} options with 'type' property 'auto', 'basic' or 'bearer' (default 'basic')
 * @return {Request} for chaining
 * @api public
 */

Request.prototype.auth = function(user, pass, options){
  if (typeof pass === 'object' && pass !== null) { // pass is optional and can substitute for options
    options = pass;
  }
  if (!options) {
    options = {
      type: 'function' === typeof btoa ? 'basic' : 'auto',
    }
  }

  switch (options.type) {
    case 'basic':
      this.set('Authorization', 'Basic ' + btoa(user + ':' + pass));
    break;

    case 'auto':
      this.username = user;
      this.password = pass;
    break;
      
    case 'bearer': // usage would be .auth(accessToken, { type: 'bearer' })
      this.set('Authorization', 'Bearer ' + user);
    break;  
  }
  return this;
};

/**
 * Add query-string `val`.
 *
 * Examples:
 *
 *   request.get('/shoes')
 *     .query('size=10')
 *     .query({ color: 'blue' })
 *
 * @param {Object|String} val
 * @return {Request} for chaining
 * @api public
 */

Request.prototype.query = function(val){
  if ('string' != typeof val) val = serialize(val);
  if (val) this._query.push(val);
  return this;
};

/**
 * Queue the given `file` as an attachment to the specified `field`,
 * with optional `options` (or filename).
 *
 * ``` js
 * request.post('/upload')
 *   .attach('content', new Blob(['<a id="a"><b id="b">hey!</b></a>'], { type: "text/html"}))
 *   .end(callback);
 * ```
 *
 * @param {String} field
 * @param {Blob|File} file
 * @param {String|Object} options
 * @return {Request} for chaining
 * @api public
 */

Request.prototype.attach = function(field, file, options){
  if (file) {
    if (this._data) {
      throw Error("superagent can't mix .send() and .attach()");
    }

    this._getFormData().append(field, file, options || file.name);
  }
  return this;
};

Request.prototype._getFormData = function(){
  if (!this._formData) {
    this._formData = new root.FormData();
  }
  return this._formData;
};

/**
 * Invoke the callback with `err` and `res`
 * and handle arity check.
 *
 * @param {Error} err
 * @param {Response} res
 * @api private
 */

Request.prototype.callback = function(err, res){
  // console.log(this._retries, this._maxRetries)
  if (this._maxRetries && this._retries++ < this._maxRetries && shouldRetry(err, res)) {
    return this._retry();
  }

  var fn = this._callback;
  this.clearTimeout();

  if (err) {
    if (this._maxRetries) err.retries = this._retries - 1;
    this.emit('error', err);
  }

  fn(err, res);
};

/**
 * Invoke callback with x-domain error.
 *
 * @api private
 */

Request.prototype.crossDomainError = function(){
  var err = new Error('Request has been terminated\nPossible causes: the network is offline, Origin is not allowed by Access-Control-Allow-Origin, the page is being unloaded, etc.');
  err.crossDomain = true;

  err.status = this.status;
  err.method = this.method;
  err.url = this.url;

  this.callback(err);
};

// This only warns, because the request is still likely to work
Request.prototype.buffer = Request.prototype.ca = Request.prototype.agent = function(){
  console.warn("This is not supported in browser version of superagent");
  return this;
};

// This throws, because it can't send/receive data as expected
Request.prototype.pipe = Request.prototype.write = function(){
  throw Error("Streaming is not supported in browser version of superagent");
};

/**
 * Compose querystring to append to req.url
 *
 * @api private
 */

Request.prototype._appendQueryString = function(){
  var query = this._query.join('&');
  if (query) {
    this.url += (this.url.indexOf('?') >= 0 ? '&' : '?') + query;
  }

  if (this._sort) {
    var index = this.url.indexOf('?');
    if (index >= 0) {
      var queryArr = this.url.substring(index + 1).split('&');
      if (isFunction(this._sort)) {
        queryArr.sort(this._sort);
      } else {
        queryArr.sort();
      }
      this.url = this.url.substring(0, index) + '?' + queryArr.join('&');
    }
  }
};

/**
 * Check if `obj` is a host object,
 * we don't want to serialize these :)
 *
 * @param {Object} obj
 * @return {Boolean}
 * @api private
 */
Request.prototype._isHost = function _isHost(obj) {
  // Native objects stringify to [object File], [object Blob], [object FormData], etc.
  return obj && 'object' === typeof obj && !Array.isArray(obj) && Object.prototype.toString.call(obj) !== '[object Object]';
}

/**
 * Initiate request, invoking callback `fn(res)`
 * with an instanceof `Response`.
 *
 * @param {Function} fn
 * @return {Request} for chaining
 * @api public
 */

Request.prototype.end = function(fn){
  if (this._endCalled) {
    console.warn("Warning: .end() was called twice. This is not supported in superagent");
  }
  this._endCalled = true;

  // store callback
  this._callback = fn || noop;

  // querystring
  this._appendQueryString();

  return this._end();
};

Request.prototype._end = function() {
  var self = this;
  var xhr = this.xhr = request.getXHR();
  var data = this._formData || this._data;

  this._setTimeouts();

  // state change
  xhr.onreadystatechange = function(){
    var readyState = xhr.readyState;
    if (readyState >= 2 && self._responseTimeoutTimer) {
      clearTimeout(self._responseTimeoutTimer);
    }
    if (4 != readyState) {
      return;
    }

    // In IE9, reads to any property (e.g. status) off of an aborted XHR will
    // result in the error "Could not complete the operation due to error c00c023f"
    var status;
    try { status = xhr.status } catch(e) { status = 0; }

    if (!status) {
      if (self.timedout || self._aborted) return;
      return self.crossDomainError();
    }
    self.emit('end');
  };

  // progress
  var handleProgress = function(direction, e) {
    if (e.total > 0) {
      e.percent = e.loaded / e.total * 100;
    }
    e.direction = direction;
    self.emit('progress', e);
  }
  if (this.hasListeners('progress')) {
    try {
      xhr.onprogress = handleProgress.bind(null, 'download');
      if (xhr.upload) {
        xhr.upload.onprogress = handleProgress.bind(null, 'upload');
      }
    } catch(e) {
      // Accessing xhr.upload fails in IE from a web worker, so just pretend it doesn't exist.
      // Reported here:
      // https://connect.microsoft.com/IE/feedback/details/837245/xmlhttprequest-upload-throws-invalid-argument-when-used-from-web-worker-context
    }
  }

  // initiate request
  try {
    if (this.username && this.password) {
      xhr.open(this.method, this.url, true, this.username, this.password);
    } else {
      xhr.open(this.method, this.url, true);
    }
  } catch (err) {
    // see #1149
    return this.callback(err);
  }

  // CORS
  if (this._withCredentials) xhr.withCredentials = true;

  // body
  if (!this._formData && 'GET' != this.method && 'HEAD' != this.method && 'string' != typeof data && !this._isHost(data)) {
    // serialize stuff
    var contentType = this._header['content-type'];
    var serialize = this._serializer || request.serialize[contentType ? contentType.split(';')[0] : ''];
    if (!serialize && isJSON(contentType)) {
      serialize = request.serialize['application/json'];
    }
    if (serialize) data = serialize(data);
  }

  // set header fields
  for (var field in this.header) {
    if (null == this.header[field]) continue;

    if (this.header.hasOwnProperty(field))
      xhr.setRequestHeader(field, this.header[field]);
  }

  if (this._responseType) {
    xhr.responseType = this._responseType;
  }

  // send stuff
  this.emit('request', this);

  // IE11 xhr.send(undefined) sends 'undefined' string as POST payload (instead of nothing)
  // We need null here if data is undefined
  xhr.send(typeof data !== 'undefined' ? data : null);
  return this;
};

/**
 * GET `url` with optional callback `fn(res)`.
 *
 * @param {String} url
 * @param {Mixed|Function} [data] or fn
 * @param {Function} [fn]
 * @return {Request}
 * @api public
 */

request.get = function(url, data, fn){
  var req = request('GET', url);
  if ('function' == typeof data) fn = data, data = null;
  if (data) req.query(data);
  if (fn) req.end(fn);
  return req;
};

/**
 * HEAD `url` with optional callback `fn(res)`.
 *
 * @param {String} url
 * @param {Mixed|Function} [data] or fn
 * @param {Function} [fn]
 * @return {Request}
 * @api public
 */

request.head = function(url, data, fn){
  var req = request('HEAD', url);
  if ('function' == typeof data) fn = data, data = null;
  if (data) req.send(data);
  if (fn) req.end(fn);
  return req;
};

/**
 * OPTIONS query to `url` with optional callback `fn(res)`.
 *
 * @param {String} url
 * @param {Mixed|Function} [data] or fn
 * @param {Function} [fn]
 * @return {Request}
 * @api public
 */

request.options = function(url, data, fn){
  var req = request('OPTIONS', url);
  if ('function' == typeof data) fn = data, data = null;
  if (data) req.send(data);
  if (fn) req.end(fn);
  return req;
};

/**
 * DELETE `url` with optional `data` and callback `fn(res)`.
 *
 * @param {String} url
 * @param {Mixed} [data]
 * @param {Function} [fn]
 * @return {Request}
 * @api public
 */

function del(url, data, fn){
  var req = request('DELETE', url);
  if ('function' == typeof data) fn = data, data = null;
  if (data) req.send(data);
  if (fn) req.end(fn);
  return req;
};

request['del'] = del;
request['delete'] = del;

/**
 * PATCH `url` with optional `data` and callback `fn(res)`.
 *
 * @param {String} url
 * @param {Mixed} [data]
 * @param {Function} [fn]
 * @return {Request}
 * @api public
 */

request.patch = function(url, data, fn){
  var req = request('PATCH', url);
  if ('function' == typeof data) fn = data, data = null;
  if (data) req.send(data);
  if (fn) req.end(fn);
  return req;
};

/**
 * POST `url` with optional `data` and callback `fn(res)`.
 *
 * @param {String} url
 * @param {Mixed} [data]
 * @param {Function} [fn]
 * @return {Request}
 * @api public
 */

request.post = function(url, data, fn){
  var req = request('POST', url);
  if ('function' == typeof data) fn = data, data = null;
  if (data) req.send(data);
  if (fn) req.end(fn);
  return req;
};

/**
 * PUT `url` with optional `data` and callback `fn(res)`.
 *
 * @param {String} url
 * @param {Mixed|Function} [data] or fn
 * @param {Function} [fn]
 * @return {Request}
 * @api public
 */

request.put = function(url, data, fn){
  var req = request('PUT', url);
  if ('function' == typeof data) fn = data, data = null;
  if (data) req.send(data);
  if (fn) req.end(fn);
  return req;
};


/***/ }),
/* 179 */
/***/ (function(module, exports, __webpack_require__) {

/**
 * Check if `fn` is a function.
 *
 * @param {Function} fn
 * @return {Boolean}
 * @api private
 */
var isObject = __webpack_require__(53);

function isFunction(fn) {
  var tag = isObject(fn) ? Object.prototype.toString.call(fn) : '';
  return tag === '[object Function]';
}

module.exports = isFunction;


/***/ }),
/* 180 */
/***/ (function(module, exports, __webpack_require__) {

/**
 * Module of mixed-in functions shared between node and client code
 */
var isObject = __webpack_require__(53);

/**
 * Expose `RequestBase`.
 */

module.exports = RequestBase;

/**
 * Initialize a new `RequestBase`.
 *
 * @api public
 */

function RequestBase(obj) {
  if (obj) return mixin(obj);
}

/**
 * Mixin the prototype properties.
 *
 * @param {Object} obj
 * @return {Object}
 * @api private
 */

function mixin(obj) {
  for (var key in RequestBase.prototype) {
    obj[key] = RequestBase.prototype[key];
  }
  return obj;
}

/**
 * Clear previous timeout.
 *
 * @return {Request} for chaining
 * @api public
 */

RequestBase.prototype.clearTimeout = function _clearTimeout(){
  clearTimeout(this._timer);
  clearTimeout(this._responseTimeoutTimer);
  delete this._timer;
  delete this._responseTimeoutTimer;
  return this;
};

/**
 * Override default response body parser
 *
 * This function will be called to convert incoming data into request.body
 *
 * @param {Function}
 * @api public
 */

RequestBase.prototype.parse = function parse(fn){
  this._parser = fn;
  return this;
};

/**
 * Set format of binary response body.
 * In browser valid formats are 'blob' and 'arraybuffer',
 * which return Blob and ArrayBuffer, respectively.
 *
 * In Node all values result in Buffer.
 *
 * Examples:
 *
 *      req.get('/')
 *        .responseType('blob')
 *        .end(callback);
 *
 * @param {String} val
 * @return {Request} for chaining
 * @api public
 */

RequestBase.prototype.responseType = function(val){
  this._responseType = val;
  return this;
};

/**
 * Override default request body serializer
 *
 * This function will be called to convert data set via .send or .attach into payload to send
 *
 * @param {Function}
 * @api public
 */

RequestBase.prototype.serialize = function serialize(fn){
  this._serializer = fn;
  return this;
};

/**
 * Set timeouts.
 *
 * - response timeout is time between sending request and receiving the first byte of the response. Includes DNS and connection time.
 * - deadline is the time from start of the request to receiving response body in full. If the deadline is too short large files may not load at all on slow connections.
 *
 * Value of 0 or false means no timeout.
 *
 * @param {Number|Object} ms or {response, read, deadline}
 * @return {Request} for chaining
 * @api public
 */

RequestBase.prototype.timeout = function timeout(options){
  if (!options || 'object' !== typeof options) {
    this._timeout = options;
    this._responseTimeout = 0;
    return this;
  }

  for(var option in options) {
    switch(option) {
      case 'deadline':
        this._timeout = options.deadline;
        break;
      case 'response':
        this._responseTimeout = options.response;
        break;
      default:
        console.warn("Unknown timeout option", option);
    }
  }
  return this;
};

/**
 * Set number of retry attempts on error.
 *
 * Failed requests will be retried 'count' times if timeout or err.code >= 500.
 *
 * @param {Number} count
 * @return {Request} for chaining
 * @api public
 */

RequestBase.prototype.retry = function retry(count){
  // Default to 1 if no count passed or true
  if (arguments.length === 0 || count === true) count = 1;
  if (count <= 0) count = 0;
  this._maxRetries = count;
  this._retries = 0;
  return this;
};

/**
 * Retry request
 *
 * @return {Request} for chaining
 * @api private
 */

RequestBase.prototype._retry = function() {
  this.clearTimeout();

  // node
  if (this.req) {
    this.req = null;
    this.req = this.request();
  }

  this._aborted = false;
  this.timedout = false;

  return this._end();
};

/**
 * Promise support
 *
 * @param {Function} resolve
 * @param {Function} [reject]
 * @return {Request}
 */

RequestBase.prototype.then = function then(resolve, reject) {
  if (!this._fullfilledPromise) {
    var self = this;
    if (this._endCalled) {
      console.warn("Warning: superagent request was sent twice, because both .end() and .then() were called. Never call .end() if you use promises");
    }
    this._fullfilledPromise = new Promise(function(innerResolve, innerReject){
      self.end(function(err, res){
        if (err) innerReject(err); else innerResolve(res);
      });
    });
  }
  return this._fullfilledPromise.then(resolve, reject);
}

RequestBase.prototype.catch = function(cb) {
  return this.then(undefined, cb);
};

/**
 * Allow for extension
 */

RequestBase.prototype.use = function use(fn) {
  fn(this);
  return this;
}

RequestBase.prototype.ok = function(cb) {
  if ('function' !== typeof cb) throw Error("Callback required");
  this._okCallback = cb;
  return this;
};

RequestBase.prototype._isResponseOK = function(res) {
  if (!res) {
    return false;
  }

  if (this._okCallback) {
    return this._okCallback(res);
  }

  return res.status >= 200 && res.status < 300;
};


/**
 * Get request header `field`.
 * Case-insensitive.
 *
 * @param {String} field
 * @return {String}
 * @api public
 */

RequestBase.prototype.get = function(field){
  return this._header[field.toLowerCase()];
};

/**
 * Get case-insensitive header `field` value.
 * This is a deprecated internal API. Use `.get(field)` instead.
 *
 * (getHeader is no longer used internally by the superagent code base)
 *
 * @param {String} field
 * @return {String}
 * @api private
 * @deprecated
 */

RequestBase.prototype.getHeader = RequestBase.prototype.get;

/**
 * Set header `field` to `val`, or multiple fields with one object.
 * Case-insensitive.
 *
 * Examples:
 *
 *      req.get('/')
 *        .set('Accept', 'application/json')
 *        .set('X-API-Key', 'foobar')
 *        .end(callback);
 *
 *      req.get('/')
 *        .set({ Accept: 'application/json', 'X-API-Key': 'foobar' })
 *        .end(callback);
 *
 * @param {String|Object} field
 * @param {String} val
 * @return {Request} for chaining
 * @api public
 */

RequestBase.prototype.set = function(field, val){
  if (isObject(field)) {
    for (var key in field) {
      this.set(key, field[key]);
    }
    return this;
  }
  this._header[field.toLowerCase()] = val;
  this.header[field] = val;
  return this;
};

/**
 * Remove header `field`.
 * Case-insensitive.
 *
 * Example:
 *
 *      req.get('/')
 *        .unset('User-Agent')
 *        .end(callback);
 *
 * @param {String} field
 */
RequestBase.prototype.unset = function(field){
  delete this._header[field.toLowerCase()];
  delete this.header[field];
  return this;
};

/**
 * Write the field `name` and `val`, or multiple fields with one object
 * for "multipart/form-data" request bodies.
 *
 * ``` js
 * request.post('/upload')
 *   .field('foo', 'bar')
 *   .end(callback);
 *
 * request.post('/upload')
 *   .field({ foo: 'bar', baz: 'qux' })
 *   .end(callback);
 * ```
 *
 * @param {String|Object} name
 * @param {String|Blob|File|Buffer|fs.ReadStream} val
 * @return {Request} for chaining
 * @api public
 */
RequestBase.prototype.field = function(name, val) {

  // name should be either a string or an object.
  if (null === name ||  undefined === name) {
    throw new Error('.field(name, val) name can not be empty');
  }

  if (this._data) {
    console.error(".field() can't be used if .send() is used. Please use only .send() or only .field() & .attach()");
  }

  if (isObject(name)) {
    for (var key in name) {
      this.field(key, name[key]);
    }
    return this;
  }

  if (Array.isArray(val)) {
    for (var i in val) {
      this.field(name, val[i]);
    }
    return this;
  }

  // val should be defined now
  if (null === val || undefined === val) {
    throw new Error('.field(name, val) val can not be empty');
  }
  if ('boolean' === typeof val) {
    val = '' + val;
  }
  this._getFormData().append(name, val);
  return this;
};

/**
 * Abort the request, and clear potential timeout.
 *
 * @return {Request}
 * @api public
 */
RequestBase.prototype.abort = function(){
  if (this._aborted) {
    return this;
  }
  this._aborted = true;
  this.xhr && this.xhr.abort(); // browser
  this.req && this.req.abort(); // node
  this.clearTimeout();
  this.emit('abort');
  return this;
};

/**
 * Enable transmission of cookies with x-domain requests.
 *
 * Note that for this to work the origin must not be
 * using "Access-Control-Allow-Origin" with a wildcard,
 * and also must set "Access-Control-Allow-Credentials"
 * to "true".
 *
 * @api public
 */

RequestBase.prototype.withCredentials = function(on){
  // This is browser-only functionality. Node side is no-op.
  if(on==undefined) on = true;
  this._withCredentials = on;
  return this;
};

/**
 * Set the max redirects to `n`. Does noting in browser XHR implementation.
 *
 * @param {Number} n
 * @return {Request} for chaining
 * @api public
 */

RequestBase.prototype.redirects = function(n){
  this._maxRedirects = n;
  return this;
};

/**
 * Convert to a plain javascript object (not JSON string) of scalar properties.
 * Note as this method is designed to return a useful non-this value,
 * it cannot be chained.
 *
 * @return {Object} describing method, url, and data of this request
 * @api public
 */

RequestBase.prototype.toJSON = function(){
  return {
    method: this.method,
    url: this.url,
    data: this._data,
    headers: this._header
  };
};


/**
 * Send `data` as the request body, defaulting the `.type()` to "json" when
 * an object is given.
 *
 * Examples:
 *
 *       // manual json
 *       request.post('/user')
 *         .type('json')
 *         .send('{"name":"tj"}')
 *         .end(callback)
 *
 *       // auto json
 *       request.post('/user')
 *         .send({ name: 'tj' })
 *         .end(callback)
 *
 *       // manual x-www-form-urlencoded
 *       request.post('/user')
 *         .type('form')
 *         .send('name=tj')
 *         .end(callback)
 *
 *       // auto x-www-form-urlencoded
 *       request.post('/user')
 *         .type('form')
 *         .send({ name: 'tj' })
 *         .end(callback)
 *
 *       // defaults to x-www-form-urlencoded
 *      request.post('/user')
 *        .send('name=tobi')
 *        .send('species=ferret')
 *        .end(callback)
 *
 * @param {String|Object} data
 * @return {Request} for chaining
 * @api public
 */

RequestBase.prototype.send = function(data){
  var isObj = isObject(data);
  var type = this._header['content-type'];

  if (this._formData) {
    console.error(".send() can't be used if .attach() or .field() is used. Please use only .send() or only .field() & .attach()");
  }

  if (isObj && !this._data) {
    if (Array.isArray(data)) {
      this._data = [];
    } else if (!this._isHost(data)) {
      this._data = {};
    }
  } else if (data && this._data && this._isHost(this._data)) {
    throw Error("Can't merge these send calls");
  }

  // merge
  if (isObj && isObject(this._data)) {
    for (var key in data) {
      this._data[key] = data[key];
    }
  } else if ('string' == typeof data) {
    // default to x-www-form-urlencoded
    if (!type) this.type('form');
    type = this._header['content-type'];
    if ('application/x-www-form-urlencoded' == type) {
      this._data = this._data
        ? this._data + '&' + data
        : data;
    } else {
      this._data = (this._data || '') + data;
    }
  } else {
    this._data = data;
  }

  if (!isObj || this._isHost(data)) {
    return this;
  }

  // default to json
  if (!type) this.type('json');
  return this;
};


/**
 * Sort `querystring` by the sort function
 *
 *
 * Examples:
 *
 *       // default order
 *       request.get('/user')
 *         .query('name=Nick')
 *         .query('search=Manny')
 *         .sortQuery()
 *         .end(callback)
 *
 *       // customized sort function
 *       request.get('/user')
 *         .query('name=Nick')
 *         .query('search=Manny')
 *         .sortQuery(function(a, b){
 *           return a.length - b.length;
 *         })
 *         .end(callback)
 *
 *
 * @param {Function} sort
 * @return {Request} for chaining
 * @api public
 */

RequestBase.prototype.sortQuery = function(sort) {
  // _sort default to true but otherwise can be a function or boolean
  this._sort = typeof sort === 'undefined' ? true : sort;
  return this;
};

/**
 * Invoke callback with timeout error.
 *
 * @api private
 */

RequestBase.prototype._timeoutError = function(reason, timeout, errno){
  if (this._aborted) {
    return;
  }
  var err = new Error(reason + timeout + 'ms exceeded');
  err.timeout = timeout;
  err.code = 'ECONNABORTED';
  err.errno = errno;
  this.timedout = true;
  this.abort();
  this.callback(err);
};

RequestBase.prototype._setTimeouts = function() {
  var self = this;

  // deadline
  if (this._timeout && !this._timer) {
    this._timer = setTimeout(function(){
      self._timeoutError('Timeout of ', self._timeout, 'ETIME');
    }, this._timeout);
  }
  // response timeout
  if (this._responseTimeout && !this._responseTimeoutTimer) {
    this._responseTimeoutTimer = setTimeout(function(){
      self._timeoutError('Response timeout of ', self._responseTimeout, 'ETIMEDOUT');
    }, this._responseTimeout);
  }
}


/***/ }),
/* 181 */
/***/ (function(module, exports, __webpack_require__) {


/**
 * Module dependencies.
 */

var utils = __webpack_require__(183);

/**
 * Expose `ResponseBase`.
 */

module.exports = ResponseBase;

/**
 * Initialize a new `ResponseBase`.
 *
 * @api public
 */

function ResponseBase(obj) {
  if (obj) return mixin(obj);
}

/**
 * Mixin the prototype properties.
 *
 * @param {Object} obj
 * @return {Object}
 * @api private
 */

function mixin(obj) {
  for (var key in ResponseBase.prototype) {
    obj[key] = ResponseBase.prototype[key];
  }
  return obj;
}

/**
 * Get case-insensitive `field` value.
 *
 * @param {String} field
 * @return {String}
 * @api public
 */

ResponseBase.prototype.get = function(field){
    return this.header[field.toLowerCase()];
};

/**
 * Set header related properties:
 *
 *   - `.type` the content type without params
 *
 * A response of "Content-Type: text/plain; charset=utf-8"
 * will provide you with a `.type` of "text/plain".
 *
 * @param {Object} header
 * @api private
 */

ResponseBase.prototype._setHeaderProperties = function(header){
    // TODO: moar!
    // TODO: make this a util

    // content-type
    var ct = header['content-type'] || '';
    this.type = utils.type(ct);

    // params
    var params = utils.params(ct);
    for (var key in params) this[key] = params[key];

    this.links = {};

    // links
    try {
        if (header.link) {
            this.links = utils.parseLinks(header.link);
        }
    } catch (err) {
        // ignore
    }
};

/**
 * Set flags such as `.ok` based on `status`.
 *
 * For example a 2xx response will give you a `.ok` of __true__
 * whereas 5xx will be __false__ and `.error` will be __true__. The
 * `.clientError` and `.serverError` are also available to be more
 * specific, and `.statusType` is the class of error ranging from 1..5
 * sometimes useful for mapping respond colors etc.
 *
 * "sugar" properties are also defined for common cases. Currently providing:
 *
 *   - .noContent
 *   - .badRequest
 *   - .unauthorized
 *   - .notAcceptable
 *   - .notFound
 *
 * @param {Number} status
 * @api private
 */

ResponseBase.prototype._setStatusProperties = function(status){
    var type = status / 100 | 0;

    // status / class
    this.status = this.statusCode = status;
    this.statusType = type;

    // basics
    this.info = 1 == type;
    this.ok = 2 == type;
    this.redirect = 3 == type;
    this.clientError = 4 == type;
    this.serverError = 5 == type;
    this.error = (4 == type || 5 == type)
        ? this.toError()
        : false;

    // sugar
    this.accepted = 202 == status;
    this.noContent = 204 == status;
    this.badRequest = 400 == status;
    this.unauthorized = 401 == status;
    this.notAcceptable = 406 == status;
    this.forbidden = 403 == status;
    this.notFound = 404 == status;
};


/***/ }),
/* 182 */
/***/ (function(module, exports) {

var ERROR_CODES = [
  'ECONNRESET',
  'ETIMEDOUT',
  'EADDRINFO',
  'ESOCKETTIMEDOUT'
];

/**
 * Determine if a request should be retried.
 * (Borrowed from segmentio/superagent-retry)
 *
 * @param {Error} err
 * @param {Response} [res]
 * @returns {Boolean}
 */
module.exports = function shouldRetry(err, res) {
  if (err && err.code && ~ERROR_CODES.indexOf(err.code)) return true;
  if (res && res.status && res.status >= 500) return true;
  // Superagent timeout
  if (err && 'timeout' in err && err.code == 'ECONNABORTED') return true;
  if (err && 'crossDomain' in err) return true;
  return false;
};


/***/ }),
/* 183 */
/***/ (function(module, exports) {


/**
 * Return the mime type for the given `str`.
 *
 * @param {String} str
 * @return {String}
 * @api private
 */

exports.type = function(str){
  return str.split(/ *; */).shift();
};

/**
 * Return header field parameters.
 *
 * @param {String} str
 * @return {Object}
 * @api private
 */

exports.params = function(str){
  return str.split(/ *; */).reduce(function(obj, str){
    var parts = str.split(/ *= */);
    var key = parts.shift();
    var val = parts.shift();

    if (key && val) obj[key] = val;
    return obj;
  }, {});
};

/**
 * Parse Link header fields.
 *
 * @param {String} str
 * @return {Object}
 * @api private
 */

exports.parseLinks = function(str){
  return str.split(/ *, */).reduce(function(obj, str){
    var parts = str.split(/ *; */);
    var url = parts[0].slice(1, -1);
    var rel = parts[1].split(/ *= */)[1].slice(1, -1);
    obj[rel] = url;
    return obj;
  }, {});
};

/**
 * Strip content related fields from `header`.
 *
 * @param {Object} header
 * @return {Object} header
 * @api private
 */

exports.cleanHeader = function(header, shouldStripCookie){
  delete header['content-type'];
  delete header['content-length'];
  delete header['transfer-encoding'];
  delete header['host'];
  if (shouldStripCookie) {
    delete header['cookie'];
  }
  return header;
};

/***/ }),
/* 184 */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
/* WEBPACK VAR INJECTION */(function(global) {Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_classCallCheck__ = __webpack_require__(11);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_classCallCheck___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_classCallCheck__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_createClass__ = __webpack_require__(14);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_createClass___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_createClass__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__components_channel_header_button__ = __webpack_require__(80);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__components_mobile_channel_header_button__ = __webpack_require__(81);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__components_post_type_zoom__ = __webpack_require__(82);


// Copyright (c) 2017-present Mattermost, Inc. All Rights Reserved.
// See License.txt for license information.





var PluginClass = function () {
    function PluginClass() {
        __WEBPACK_IMPORTED_MODULE_0_babel_runtime_helpers_classCallCheck___default()(this, PluginClass);
    }

    __WEBPACK_IMPORTED_MODULE_1_babel_runtime_helpers_createClass___default()(PluginClass, [{
        key: 'initialize',
        value: function initialize(registerComponents, store) {
            registerComponents({ ChannelHeaderButton: __WEBPACK_IMPORTED_MODULE_2__components_channel_header_button__["a" /* default */], MobileChannelHeaderButton: __WEBPACK_IMPORTED_MODULE_3__components_mobile_channel_header_button__["a" /* default */] }, { custom_zoom: __WEBPACK_IMPORTED_MODULE_4__components_post_type_zoom__["a" /* default */] });
        }
    }]);

    return PluginClass;
}();

global.window.plugins['zoom'] = new PluginClass();
/* WEBPACK VAR INJECTION */}.call(__webpack_exports__, __webpack_require__(83)))

/***/ })
/******/ ]);