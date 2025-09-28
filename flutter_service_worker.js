'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "888483df48293866f9f41d3d9274a779",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"manifest.json": "586e5c52e81e409998ab4b91e5328b82",
"index.html": "b3626e17a7a2a7217703a068d23ce082",
"/": "b3626e17a7a2a7217703a068d23ce082",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin.json": "e032a054a2f3f56aefede9af12d0add1",
"assets/images/icons/logout.png": "2867437e8290f6b86366f9fdb9d2a1d7",
"assets/images/icons/documentFill.png": "e3a06b319b4ffbb21ac3805152a6a8fe",
"assets/images/icons/aboutus.png": "0235453ab12e84dff76e32e694fdedd1",
"assets/images/icons/dashboardFill.png": "3576e299d4c3eea98ab561de636897de",
"assets/images/icons/ic_delete_icon.png": "3465afaae0e1e4cd6bd703cb456f0449",
"assets/images/icons/phone.png": "cc3ccf48dcfe3cdc571a394188a14ea3",
"assets/images/icons/holiday.png": "3d57a820b7219c319dc0395058a32e4b",
"assets/images/icons/ic_lock.png": "33d472d24a363faff9536081075dabe8",
"assets/images/icons/degree.png": "f69c38605a18d21ac5827cf6264fbace",
"assets/images/icons/ic_wishList.png": "f406f28724970629466df78409ea727c",
"assets/images/icons/ic_cart.png": "a93a54d720107416a1d93af4bd913149",
"assets/images/icons/doctor.png": "5f1972ff94b79d97b385cbbee94e5366",
"assets/images/icons/ic_wishlist_cart.png": "54578caad1f35ab34df9347016946c15",
"assets/images/icons/moreItemFill.png": "cce4c37b7c85c9c5aa685cde594ca213",
"assets/images/icons/ic_orderList.png": "fdb5ccb8557c6f60bd49573d315888a0",
"assets/images/icons/rateUs.png": "6af34c9648f94d3f7935d86499de3b0c",
"assets/images/icons/ic_voucher.png": "856fc83342ce6f09ed052301bc16268f",
"assets/images/icons/razorpay.png": "0af3ea9422dcf0f9725221a73ff52aab",
"assets/images/icons/darkMode.png": "6c6023c5e0f56d61f008eb4d7058bc16",
"assets/images/icons/google_calendar.png": "a2d073b1928f823a044c9dda3eeb722e",
"assets/images/icons/ic_reports.png": "0c0f563a7b5ab014cb6af2953bc940ae",
"assets/images/icons/timer.png": "623c7ea39df9917b6ce9108442538483",
"assets/images/icons/password.png": "01875722f8adc85e1a9574a14853e9e3",
"assets/images/icons/payment_failed.json": "ee068f02560c2442f9dc57596e4728ce",
"assets/images/icons/ic_sort.png": "faa477484889f382b9ed6cd06b10f28b",
"assets/images/icons/receptionistIcon.png": "9eb899eef01f595ae1aa4f65794ba861",
"assets/images/icons/slots.png": "9dbced21325b9f50bbddaacb70b2faa9",
"assets/images/icons/ic_shop.png": "6d9b3accfffc8e9788df9ab2aacbef05",
"assets/images/icons/offline_payment.png": "74daabc05997164909b41e9933aedabd",
"assets/images/icons/ic_no_search.png": "99d156c7e18c6532f367e67b253e1109",
"assets/images/icons/ic_notification.png": "f67a7265b000f1b0a5548b68038ce471",
"assets/images/icons/voice.png": "f4fcdfeddb9bc7bf7bc73d8606d199ba",
"assets/images/icons/contact.png": "8f9366bd3df10b3028ee7cb71568a8a9",
"assets/images/icons/ic_no_profile.png": "b07d686e04b1e804ade66840476d522e",
"assets/images/icons/google-meets.png": "b16ecaaf81a134df73e620f5e71c125c",
"assets/images/icons/ic_invalid_url.png": "23493eaddcfb4afe86aa49df62343dfd",
"assets/images/icons/doctorIcon.png": "efa3cd83e3b99a6561363e6cd47129ce",
"assets/images/icons/profileFill.png": "a255d334a52667b7a476a9144dc863eb",
"assets/images/icons/edit.png": "adbd31aea1544693c71c32798aea0fa1",
"assets/images/icons/message.png": "14fc68f002e22e0e33a6b77d72052a1f",
"assets/images/icons/ic_order.png": "4f93098e700e4bb586c67e89087c9f4d",
"assets/images/icons/ic_settings.png": "f68825a5fa1196136578526cf1335fc1",
"assets/images/icons/patientFill.png": "b3ddb1f4e224c71a997b95df3c76fbde",
"assets/images/icons/email.png": "594f7175ba8c62899286ea50b8b5487b",
"assets/images/icons/showPassword.png": "262c6498dffc118bf34207e1e7d6a4e0",
"assets/images/icons/dashboard.png": "2964bbd2d857df48830d5b9aa206e971",
"assets/images/icons/ic_zoom.png": "cb0fc4cbd78452c59bc2524344cdd400",
"assets/images/icons/camera.png": "e0b96d0c7d40ff91654ac7888b9fa585",
"assets/images/icons/hi.png": "4d244d8dc0df0939a6d8dfb2415419e6",
"assets/images/icons/termsAndCondition.png": "67b112ecab4c37a9f22c8a9d275e4f06",
"assets/images/icons/share.png": "7b8f4366e176c5875ff3c736d4fd19db",
"assets/images/icons/collage.png": "b87aa876533304ff73da0bde5a416408",
"assets/images/icons/unlock.png": "28f92619b4cb051b47d3716d81cb2dff",
"assets/images/icons/email2.png": "3d9ed94a38a5f9c1f75067250dfbbd3b",
"assets/images/icons/morning.png": "ed4fef386c806c875d6fb5a15e4bc049",
"assets/images/icons/img.png": "bb8f47e2954405a8baefab406ef89ad0",
"assets/images/icons/moreItem.png": "d94f3822aa96d2a07e07618cbafe3675",
"assets/images/icons/ic_no_photo.png": "424ca6d9fa7f40beecd76611c9b0cd95",
"assets/images/icons/confirmAppointment.png": "5740198c2f962b18410b888078fed171",
"assets/images/icons/document.png": "799e505f21c66e5db98b8e9f0e36f917",
"assets/images/icons/patient.png": "4b0d0915934ccb6bba2d405a380e95f9",
"assets/images/icons/ic_arrow_up.png": "824f11b9874cf51016a6e0076108db43",
"assets/images/icons/helpAndSupport.png": "aab74ec0b1bb45a257b19c95c9fdcc83",
"assets/images/icons/ic_bill.png": "09ffada3fdc9aaf4ca368cac3b2b1416",
"assets/images/icons/ic_favourite_outlined.png": "75362de5d17145a6f29d9a9f6da435f9",
"assets/images/icons/darkMode.svg": "16122f5932652bc75676ab6edd101925",
"assets/images/icons/video.png": "a82b84872afdc59b613c02b756d7a76c",
"assets/images/icons/calendarFill.png": "42c60518c53cbb92a9160f1e4e146d4d",
"assets/images/icons/fillDoctor.png": "f05e5e5959cf3e10e8e500b4c6ae6256",
"assets/images/icons/appointment.png": "bbab654b2dec61aa40c59a0384664ed5",
"assets/images/icons/purchase.png": "007b4631429275b714d23cfd05de98dd",
"assets/images/icons/ic_blood_group.png": "82353b6ef33f1b927a115d84b90680f8",
"assets/images/icons/telemed.png": "e77530af7ee5c90950b7d82c073656bb",
"assets/images/icons/arrowDown.png": "95d34e40ac62bd9db45bc8314cc2ab74",
"assets/images/icons/hidePassword.png": "481c35cdf68259804e0d978ac9b30f0f",
"assets/images/icons/icMultiSelect.png": "7be5b171f0976b024578412376a22a48",
"assets/images/icons/evening.png": "ce0ebad8b5a980935b1eee1b37e2d548",
"assets/images/icons/phone.svg": "2d80c91768bad858db17f552b79ea517",
"assets/images/icons/ic_filter.png": "bf4deecbbf35fd8e1952ec5c8bf99680",
"assets/images/icons/ic_favourite_filled.png": "7d7eea96bf8e557c72143519801469ee",
"assets/images/icons/graduationCap.png": "a9554125489fe7ca038476e454f5492d",
"assets/images/icons/ic_address.png": "cdbc95ea9ecc7b5cb6fe90e60c6453cb",
"assets/images/icons/woocommerce.png": "06ef53725c1a09c7c2f57012c2f76323",
"assets/images/icons/ic_checklist.png": "0ee9447b736746460940e3e78b7bfb05",
"assets/images/icons/experience.png": "1cebd4f75d795596f07e589bd3921d31",
"assets/images/icons/ic_notification_icon.png": "b83cde58642dbd280ac61cd61f6e2539",
"assets/images/icons/success_full_payment.json": "86ee667ee2d0a5660e15638f046aeb33",
"assets/images/icons/services.png": "587ad90c9df534eb9668f88e2f0402a4",
"assets/images/icons/stripe.png": "d3619e8bbb6eaf6bb3aff0d2b3406657",
"assets/images/icons/app_version.png": "0f6619605b17e0ae4266ed819dfa806d",
"assets/images/icons/ic_addToCart.png": "c5ccc4def2d121836b9b8be74633ffc2",
"assets/images/icons/ic_search.png": "6f716c4ed16115a092a063fa54c60aa3",
"assets/images/icons/ic_clinic.png": "8382f5404416c65b8f1a6cfefec245ee",
"assets/images/icons/calendar.png": "5652d07c4644fe344b0abacc05ac2760",
"assets/images/icons/ic_clinicPlaceHolder.png": "1943475f9e358bdb2c1a05b8e70cbb5b",
"assets/images/icons/dollarIcon.png": "09d0fd2542380958a6ad8c47328a5d6d",
"assets/images/icons/ic_female_doctor.png": "f807be619686c0cd517867e7a09fd2ed",
"assets/images/icons/ic_clear.png": "f77354bb41a0ec4da1ebda3a9f7cd56a",
"assets/images/icons/call.png": "05966639f919b787a9a59280ea26e533",
"assets/images/icons/user.png": "25f99294983b92e63c512a424f7a3934",
"assets/images/icons/ic_location.png": "08fa69cd9d6ce8654651475487f8e505",
"assets/images/appIcon.png": "42d997cda27c9b92ccc76ab812660440",
"assets/images/filesFormat/ic_ppt.png": "fd6e8d354e631b842febb8321dcb1bd4",
"assets/images/filesFormat/ic_mov.png": "ba7ed2bc8d1bfb38f512571b03ccb83c",
"assets/images/filesFormat/ic_pdf.png": "e9bee346f551041289acfd78e5650257",
"assets/images/filesFormat/ic_doc.png": "b06481c80e68986542ae043c4b9658c4",
"assets/images/filesFormat/ic_jpg.png": "d5760c8e30685a79dc98a54cc9e145f8",
"assets/images/filesFormat/ic_png.png": "2c5a308c6fa2ebe11f4e68a2c0aac02e",
"assets/images/filesFormat/ic_txt.png": "1c3250b27d7bf4631164ef25fff25ca0",
"assets/images/flags/icUS.png": "da547d78f0813ecfca786901eca9e9a5",
"assets/images/flags/icBangladesh.png": "8aa34f2604b56fc791870c122670f41e",
"assets/images/flags/icFrench.png": "535d6d3399aec7572fddc9cbd7e9af7a",
"assets/images/flags/icIndia.png": "a5f4b487e6b01ff36c6ab3b0017ad34d",
"assets/images/flags/icGermany.png": "181cf572b93fb29625357e04061631d9",
"assets/images/flags/icAr.png": "ead63c82d77a99b1c50230f75153b47f",
"assets/images/walkThrough4.png": "e04c7fae6cf1c085cdbc535b7941a224",
"assets/images/walkThrough3.png": "c1cd624bdb11e773cb7885f807a43206",
"assets/images/morningSlot.png": "d404f21cbd7f6720c9760fcb94fe6a91",
"assets/images/doctor.jpg": "5e501a6abd74c488a5fa903673e679f0",
"assets/images/walkThrough2.png": "3b50586a67abed0254869cc35bc419c8",
"assets/images/ic_no_product.jpg": "7a5e37a99b5c357720ebcb70893d60e7",
"assets/images/ic_no_internet_screen.png": "285a3998be845ffff4a397c2367f0eb4",
"assets/images/ic_female_doctor.jpg": "96a5c28d1873e61d043e7b962010e050",
"assets/images/somethingWentWrong.png": "6b9dbe11bad3e06a0577be442fa25bfa",
"assets/images/noDataFound.png": "482779f6c684b9f1ed1ca6b668d95bdf",
"assets/images/walkThrough1.png": "d8501d9058a3581bacf9c7075947d92e",
"assets/images/darkModeNoImage.png": "c959988ad7a30e0afeec7c8751138251",
"assets/fonts/MaterialIcons-Regular.otf": "6196f789d8f147a6f065352ea832e8b4",
"assets/NOTICES": "a21ef9e5e0fd6b1eec7128441066809f",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "56e2c9cedd97f10e7e5f1cebd85d53e3",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "76478ef739d3af08e2ca5d2b131e3900",
"assets/packages/syncfusion_flutter_datepicker/assets/fonts/Roboto-Medium.ttf": "7d752fb726f5ece291e2e522fcecf86d",
"assets/packages/font_awesome_flutter/lib/fonts/Font%2520Awesome%25207%2520Free-Regular-400.otf": "b0390cd9d96a5ceebecf3dd2816a4f0f",
"assets/packages/font_awesome_flutter/lib/fonts/Font%2520Awesome%25207%2520Brands-Regular-400.otf": "440da663f17184f21f007a3a2bf60f69",
"assets/packages/font_awesome_flutter/lib/fonts/Font%2520Awesome%25207%2520Free-Solid-900.otf": "106c6fd4fadec4f3c67242982883fde6",
"assets/packages/nb_utils/assets/icons/ic_beautify.png": "a680304f89d7cf2de6ebaabcb05e6947",
"assets/packages/nb_utils/fonts/LineAwesome.ttf": "4fe1928e582fd2e3316275954fc92e86",
"assets/FontManifest.json": "87b0192a8e8129ba4de0dcefebb3e22f",
"assets/AssetManifest.bin": "53a3dd33fe74e6ace46caaa986b258a4",
"assets/AssetManifest.json": "17afd050a5b686aa0470e09acbae7dd1",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter_bootstrap.js": "808badd52ba34171b0fe4e7865fb9671",
"version.json": "8b2d7fd0538cd154a502ed79ffb5f449",
"main.dart.js": "2d2ee53ef94f34c583225ca7615661ca"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
