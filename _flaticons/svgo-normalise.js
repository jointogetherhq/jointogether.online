module.exports = {
  plugins: [
    {
      name: 'removeDimensions',
      active: true
    },
    {
      name: 'removeViewBox',
      active: false
    },
    {
      name: 'addAttributesToSVGElement',
      params: {
        attributes: [
          { width: '24' },
          { height: '24' }
        ]
      }
    }
  ]
};
