module.exports = {
  plugins: ["jasmine"],
  env: {
    browser: true,
    commonjs: true,
    es6: true,
    jasmine: true,
    jquery: true
  },
  extends: 'airbnb-base',
  extends: 'airbnb-base/legacy',
  extends: 'plugin:jasmine/recommended',
  globals: {
    Atomics: 'readonly',
    SharedArrayBuffer: 'readonly',
  },
  parserOptions: {
    ecmaVersion: "ES5",
    ecmaFeatures: "impliedStrict"
  },
  rules: {
  },
};
