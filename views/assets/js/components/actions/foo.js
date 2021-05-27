// This event callback pushes its results into the results array and returns a promise.
function foo_action(_options, params, _event, results) {
  var promiseObj = new Promise(function(resolve) {
    console.log('Foo called');
    // Reload iFrame: https://stackoverflow.com/questions/86428/what-s-the-best-way-to-reload-refresh-an-iframe
    document.getElementById('random_fact').src += '';
    results.push({
      action: 'action',
      content: JSON.stringify({data: params.text}),
      statusCode: 200,
    });
    resolve(results);
  });
  return promiseObj;
}
