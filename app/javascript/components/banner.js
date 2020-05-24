import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Enjoy our amazing cocktails", "Add your own creation"],
    typeSpeed: 40,
    loop: true
  });
}

export { loadDynamicBannerText };
