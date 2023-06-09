const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
  content: ["./public/*.html", "./app/helpers/**/*.rb", "./app/javascript/**/*.js", "./app/views/**/*.{erb,haml,html,slim}", "./app/components/**/*.{erb,haml,html,slim}"],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Inter var", ...defaultTheme.fontFamily.sans],
      },

      colors: {
        primary: "#0d521b",
        primaryHover: "#146725",
        bgSecondary: "#FFDD01",
        secondaryHover: "#f1d623",
      },
    },
  },
  plugins: [require("@tailwindcss/forms"), require("@tailwindcss/aspect-ratio"), require("@tailwindcss/typography"), require("@tailwindcss/line-clamp"), require("@tailwindcss/container-queries")],
};
