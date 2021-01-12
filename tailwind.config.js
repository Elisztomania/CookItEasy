module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      boxShadow: {
        'creme': '4px 4px 0 0 rgba(247, 244, 234, 1)',
        'lila-deep': '4px 4px 0 0 rgba(192, 185, 221, 1)',
      },
      colors: {
        'creme': '#F7F4EA',
        'lila-soft':'#DED9E2',
        'lila-deep':'#C0B9DD',
        'new-black':'#161925',
        'new-gray':'#565554',
      }
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
};
