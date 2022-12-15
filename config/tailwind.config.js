const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        'custom': ['Roboto', 'Roboto', 'sans-serif'],
      },
      backgroundImage: {
        'sign-in': "url('https://images.unsplash.com/photo-1511379938547-c1f69419868d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')",
        'sign-up': "url('https://images.unsplash.com/photo-1510915361894-db8b60106cb1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')",
      },
      height: {
        'form': '60rem',
      },
      width: {
        'form': '60rem'
      }
    },
    colors: {
      transparent: 'transparent',
      current: 'currentColor',
      'primary': '#0D1A26',
      'secondary': '#D9D0C1',
      'third': '#A6523F',
      'four': '#F2F2F2',
      'five': '#404040',
      'news': '#172B3E'
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('autoprefixer'),
  ]
}
