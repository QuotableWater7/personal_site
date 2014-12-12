(function () {
  'use strict';

  window.JT = {};

  JT.View = function () {

  };

  JT.Model = function () {
    if ('blah') { console.log('weee'); }

    return {
      alert: function (text) { alert(text); }
    };
  };

  var extend = function (options) {
    var parent = this;
    var child;

    if (options && _.has(options, 'constructor')) { child = options.constructor; console.log('using constructor'); }
    else { child = function () { return parent.apply(this, arguments); } }

    _.extend(child, parent);

    return child;
  }

  JT.Model.extend = extend;

  var BlahModel = JT.Model.extend({
    newAlert: function (text) { alert(text + ' yeah.'); }
  });

  var my_model = new BlahModel();
  // console.log(my_model);
  // my_model.newAlert();
})();
