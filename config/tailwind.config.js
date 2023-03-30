const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
  content: ["./public/*.html", "./app/helpers/**/*.rb", "./app/javascript/**/*.js", "./app/views/**/*.{erb,haml,html,slim}", "./app/components/**/*.{erb,haml,html,slim}"],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Inter var", ...defaultTheme.fontFamily.sans],
      },

      colors: {
        primary: "#1EA69A",
        secondary: "#FEC265",
        primaryHover: "#17837a",
        secondaryHover: "#eeaf52",
      },
    },
  },
  plugins: [require("@tailwindcss/forms"), require("@tailwindcss/aspect-ratio"), require("@tailwindcss/typography"), require("@tailwindcss/line-clamp"), require("@tailwindcss/container-queries")],
};
