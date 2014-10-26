module.exports = function(grunt) {
  'use strict';
  grunt.initConfig({
    nodewebkit: {
      src: ['package.json', 'index.html', 'sample.txt'],
      name: 'Sample-node-webkit-app'
    }
  });
  grunt.loadNpmTasks('grunt-node-webkit-builder');
  grunt.registerTask('default', ['nodewebkit']);
};
