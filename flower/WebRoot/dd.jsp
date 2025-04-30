<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="headder.css" />
  <link rel="stylesheet" href="./styles/dropdown.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
    integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link href="https://fonts.googleapis.com/css2?family=Raleway:ital@1&display=swap" rel="stylesheet" />
  <title>Document</title>


  <link rel="stylesheet" href="./index.css" />
</head>

<body>
 <%@ include file="header.jsp" %>
<nav>
      <div id="options">
        <ul>
          <li id="birthday"><a href="#">BIRTHDAY</a>
            <ul>
              <li><a href="#">Birthday</a></li>
              <li><a href="#">All Birthday Gifts</a></li>
              <li><a href="#">Birthday Best Sellers</a></li>          
              <li><a href="#">Birthday Gift Guide</a></li>
              <li><a href="#">Flower Subscription</a></li>
              <li><a href="#">Same-Day-Delivery</a></li>
              <li><a href="#">Monthly Flower Subscription</a></li>
              <li><a href="#">Fresh From the Farm</a></li>



            </ul>
          </li>
          <li id="birthday"><a href="#">SYMPATHY</a>
            <ul>
              <li><a href="#">All Sympathy</a></li>
              <li><a href="#">Empathy Gifts</a></li>
              <li><a href="#">Personalised Gifts</a></li>
              <li><a href="#">Local flower Delivery</a></li>
              <li><a href="#">International flower Delivery</a></li>
              <li><a href="#">Fabulous Fine</a></li>
              <li><a href="#">Fresh From the Farm</a></li>
              <li><a href="#">New Arrivals</a></li>
            </ul>
          </li>
          <li id="birthday"><a href="#">OCCASIONS</a>
            <ul>
              <li><a href="#">Anniversry</a></li>
              <li><a href="#">Birthday</a></li>
              <li><a href="#">Thank You</a></li>
              <li><a href="#">Sympathy</a></li>
              <li><a href="#">New Baby</a></li>
              <li><a href="#">Toranto</a></li>
              <li><a href="#">Gucisious</a></li>
              <li><a href="#">Meet and Chears</a></li>


            </ul>
          </li>
          <li id="birthday"><a href="#">FLOWERS</a>
            <ul>
              <li><a href="#">All Flowers</a></li>
              <li><a href="#">2023 Flower of the Year</a></li>
              <li><a href="#">Best Selling Flowers</a></li>
              <li><a href="#"> WOW Luxury</a></li>
              <li><a href="#">Gift Bundles</a></li>
              <li><a href="#">Rose Rose and More</a></li>
              <li><a href="#">Fabulous Feline</a></li>
              <li><a href="#">Centerpieces</a></li>
              <li><a href="#">Flower and Berries Bundles</a></li>

            </ul>
          </li>
          <li id="birthday"><a href="#">PLANTS</a>
            <ul>
              <div>
                <li><a href="#">All Plants</a></li>
                <li><a href="#">Plants Kueen</a></li>
                <li><a href="#">2023 Plant of the Year</a></li>
                <li><a href="#">Plant Sale: Save upto 30%</a></li>
                <li><a href="#">Best Selling Plants</a></li>   
              </div>
              <div>
                <img
                  src="https://images.contentstack.io/v3/assets/bltdd99f24e8a94d536/bltab7f8a3f8b0252f7/63f4fb340e330365ff16d052/plant-kween-global-nav-banner-580x400.jpg?quality=70&auto=webp&optimize={medium}"
                  alt="" style="width: 100%;">
              </div>

              <li><a href="#"></a></li>
            </ul>
          </li>
          <li id="birthday"><a href="#">GIFT BASKETS & FOOD</a>
            <ul>
              <li><a href="#">Chocolate Gifts</a></li>
              <li><a href="#">Care Package</a></li>
              <li><a href="#">Gift Baskets</a></li>
              <li><a href="#">Sweet and Spicy</a></li>
              <li><a href="#">Godiva Chocolates</a></li>
              <li><a href="#">Same-Day Bakery DElivery</a></li>
              <li><a href="#">All Birthday Gifts</a></li>
              <li><a href="#">Flower Subscription</a></li>
              <li><a href="#"></a></li>

            </ul>
          </li>
          <li id="sympathy"><a href="#">GIFTS & MORE</a>
            <ul>
              <li><a href="#">Birthday</a></li>
              <li><a href="#">Allema</a></li>
              <li><a href="#">Monteresto</a></li>
              <li><a href="#">Voiseor</a></li>
              <li><a href="#">Centerpeice</a></li>
              <li><a href="#">Magnificent Preserved</a></li>
              <li><a href="#">Rustle Bord</a></li>
              <li><a href="#">Bundle of Love</a></li>
              <li><a href="#">WoW Luxury</a></li>


            </ul>
          </li>
          <li><a href="#">SAME-DAY DELIVERY</a>
            <ul>
              <li><a href="#">Gift Baskets</a></li>
              <li><a href="#">New Arrivals</a></li>
              <li><a href="#">Plant Gift Guide</a></li>
              <li><a href="#">Birthday Special</a></li>
              <li><a href="#">Spa Baskets</a></li>
              <li><a href="#">Katchking</a></li>
              <li><a href="#">party Flower</a></li>
              <li><a href="#"> Local Artists</a></li>
              <li><a href="#">Wine and Bar</a></li>
              <li><a href="#"></a></li>
              <li><a href="#"></a></li>
              <li><a href="#"></a></li>
            </ul>
          </li>
          <li><a href="#">SALE</a>
            <ul>
              <div>
                <li><a href="#">Lilies</a></li>
                <li><a href="#">Orchids</a></li>
                
              </div>

              <li><a href="#"><img
                    src="https://images.contentstack.io/v3/assets/bltdd99f24e8a94d536/bltda1d0eac9a1337c6/634973e6b2dba3104a11dadc/celebrations-passport-test-v2-free-ship-global-nav-banner-280x280_(5).gif?quality=70&auto=webp&optimize={medium}"
                    alt="" style="width: 100%;"></a></li>
              <li><a href="#"></a></li>
              <li><a href="#"></a></li>
              <li><a href="#"></a></li>
              <li><a href="#"></a></li>
              <li><a href="#"></a></li>
              <li><a href="#"></a></li>
              <li><a href="#"></a></li>
            </ul>
          </li>
          <li><a href="#">COMMUNITY</a>
            <ul>
              <li><a href="#">Flower Happiness</a></li>
              <li><a href="#">Sunflowers</a></li>
              <li><a href="#">Daisies</a></li>
              <li><a href="#">Tulps</a></li>
              <li><a href="#">Roses</a></li>
              <li><a href="#">New Arrivals</a></li>
              <li><a href="#">Plant Gift Guide</a></li>
              <li><a href="#">Same-Day Plant Delivery</a></li>

            </ul>
          </li>
        </ul>
      </div>
    </nav>

    <div id="banner-headder">
      <div>
        <img
          src="https://images.contentstack.io/v3/assets/bltdd99f24e8a94d536/blt560de5441247b4fd/63f4e12f2abe1410912a1677/send-birthday-flowers-hero-fy23-V2.jpg?quality=75&auto=webp&optimize={medium}"
          alt="" />
      </div>

      <div>
        <h3>MAKE EVERY</h3>
        <h1>BIRTHDAY SPECIAL</h1>
        <p>
          We love birthdays like we love flowers.Find everything from party
          favors to personalized gifts right here.
        </p>
        <button style="
              color: black;
              background-color: white;
              font-weight: bold;
              border-radius: 1000px;margin-top: 10px;
            " class="btn">
          SHOP NOW
        </button>
      </div>
    </div>

  <div id="mid">
    <section>
      <h1>Send Flowers & Exclusive Gifts</h1>
      <div id="flower">

        <a class="hover" href="./login.html"><img src="./images/flower-01.webp" alt="" />
          <h3>Same Day Flower Delivery</h3>
        </a>
        <a class="hover" href="./login.html"><img src="./images/flower-02.webp" alt="" />
          <h3>Sympathy</h3>
        </a>
        <a class="hover" href="./login.html"><img src="./images/flower-03.webp" alt="" />
          <h3>Get Well</h3>
        </a>
        <a class="hover" href="./login.html"><img src="./images/flower-04.webp" alt="" />
          <h3>Love & Romance</h3>
        </a>
        <a class="hover" href="./login.html"><img src="./images/flower-05.webp" alt="" />
          <h3>Chocolate Coverdes <br />Stawberries</h3>
        </a>
        <a class="hover" href="./login.html"><img src="./images/flower-06.webp" alt="" />
          <h3>Just Because</h3>
        </a>

      </div>
      <div id="sell">
        <div class="best">
          <div>
            <img src="./images/bestseller.webp" alt="" />
            <h3 class="text">Best Seller</h3>
          </div>
          <div>
            <img src="./images/House plants.webp" alt="" />
          </div>
          <h3 class="text2">House Plants</h3>
        </div>
        <div class="DIY"><img src="./images/start.jpeg" alt="" /></div>
      </div>
      <div class="icon">
        <div><img src="images/instagram-icon.png" alt="" /></div>
        <div>
          <h1>Share Your #MadeMeSmile Flowers Moment</h1>
        </div>
      </div>
      <div class="share">
        <img src="./images/dog-1.webp" alt="" />
        <img src="./images/dog-2.webp" alt="" />
        <img src="./images/dog-3.webp" alt="" />
        <img src="./images/dog-4.webp" alt="" />
      </div>
    </section>
  </div>

  <div id="footer">
    <div id="g">
      <div id="great">
        <div class="reviews">
          <img
            src="https://images.contentstack.io/v3/assets/bltdd99f24e8a94d536/blt4c9be4e2d955776a/602a81580aba282006983f75/hp-reviews-final-167891.png?quality=70&auto=webp&optimize={medium}"
            alt="" />
          <div class="stars">
            <div class="star">★</div>
            <div class="star">★</div>
            <div class="star">★</div>
            <div class="star">★</div>
            <div class="star">★</div>
          </div>
          <h4>Beautiful</h4>
          <p>
            "I bought these for my Nana's birthday she said they were
            amazingly beautiful"
          </p>
          <h4>- Pamela</h4>
        </div>
        <div class="vertical"></div>
        <div class="reviews">
          <img
            src="https://images.contentstack.io/v3/assets/bltdd99f24e8a94d536/blt2b874f93791fce4a/62b09064482ba357e65ddbe8/web_icons_125x125_ocean_breeze_orchids.png?quality=60&auto=webp&optimize={medium}"
            alt="" />
          <div class="stars">
            <div class="star">★</div>
            <div class="star">★</div>
            <div class="star">★</div>
            <div class="star">★</div>
            <div class="star">★</div>
          </div>
          <h4>Best Flowers</h4>
          <p>
            "These flowers are beautiful and just as vibrant as the pictures.
            One of the most beautiful bouquets I have ever seen"
          </p>
          <h4>- Michelle</h4>
        </div>
        <div class="vertical"></div>
        <div class="reviews">
          <img
            src="https://images.contentstack.io/v3/assets/bltdd99f24e8a94d536/blte0c04d8be69858b7/6259b075b9aa584a4e32649f/web_icons_125x125_classic_budding_rose.png?quality=60&auto=webp&optimize={medium}"
            alt="" />
          <div class="stars">
            <div class="star">★</div>
            <div class="star">★</div>
            <div class="star">★</div>
            <div class="star">★</div>
            <div class="star">★</div>
          </div>
          <h4>Very Happy</h4>
          <p>
            "I Love how the recipient can plant the roses and enjoy them for a
            long time. The plant is healthy and the candle I ordered with it
            smells great"
          </p>

          <h4>- Betty</h4>
        </div>
        <div class="vertical"></div>
        <div class="reviews">
          <img
            src="https://images.contentstack.io/v3/assets/bltdd99f24e8a94d536/blt854645311f2a8ec4/621cf518ba043c4a2c4a9a54/web_icons_125x125_Gourmet_Drizzled_Berries-v2.png?quality=60&auto=webp&optimize={medium}"
            alt="" />
          <div class="stars">
            <div class="star">★</div>
            <div class="star">★</div>
            <div class="star">★</div>
            <div class="star">★</div>
            <div class="star">★</div>
          </div>
          <h4>Sweet Anniversry</h4>
          <p>
            "The strawberries arrived on the time and were fantastic as always
            . Definitely made my anniversary a lot sweeter"
          </p>

          <h4>- Brian</h4>
        </div>
      </div>
    </div>

    <div id="imagebar">
      <img
        src="https://images.contentstack.io/v3/assets/bltdd99f24e8a94d536/blt40b361bd81392aa3/60145a6694a1800f61b51cde/FY20_Web_CEO_Banner_Desktop.jpg?quality=70&amp;auto=webp&amp;optimize={medium}"
        alt="" />
    </div>

    <div id="deliverytext">
      <h2>More About Our Flower Delivery</h2>
      <div class="para">
        <h5>
          Send Flowers Online with Flower Delivery by 1-800-Flowers.com, the
          World's Favorite Florist!
        </h5>
        <p>
          There's no better place to order flowers online than
          1-800-Flowers.com. Whether you're looking to buy flowers and gifts
          like roses, orchids, gift baskets, bonsai trees, flowering plants or
          wedding bouquets, we have the highest quality blooms and the most
          talented florists who can create exactly what you order. Dazzle and
          delight your loved ones wherever they may be with truly original
          flowers and gifts from 1-800-Flowers.com.
        </p>
      </div>
      <div class="para">
        <h5>Quick Flower Delivery and Great Customer Service</h5>
        <p>
          Same-day flower delivery is available every day, for all seasons:
          spring, winter, summer and fall. To send flowers for same-day
          delivery, all you have to do is place your order by the following
          times in the gift receiver's time zone: 2:30 p.m. weekdays, 1:15
          p.m. Saturdays, and 11:45 a.m. Sundays. Our customer service team is
          standing by to help you with any gift or flower order. Whether
          you're sending red roses to your sweetie, celebrating a birthday, or
          sending a get well gift to someone feeling under the weather, if you
          have questions, our team has answers! Just call 1-800-356-9377 or
          place an order for flower delivery online. We will help you find and
          deliver the perfect flowers, plants, or gift to celebrate life's
          most meaningful moments - from birthday gift recommendations, to
          anniversary floral arrangements she is sure to love.
        </p>
        <p>
          For sympathy gifts and funeral flowers, our team of experienced
          Sympathy Advisors are ready to assist you at 1-866-538-2259.
        </p>
      </div>
      <div class="para">
        <h5>Order the Best Flowers Online for All Occasions and Holidays</h5>
        <p>
          We're the best choice when shopping online for gifts and flowers
          just because, or for special occasions like Mother's Day or
          Valentine's Day. Choose the perfect gift from the best selection of
          flower arrangements, roses, mixed bouquets, fruit arrangements,
          gourmet baskets, and other gifts. With a wide variety of colors,
          sizes and seasonal themes, you can buy flowers and gifts for
          everyone. With same-day gift delivery, we're also your source for
          last-minute gifts, too!
        </p>
        <p>
          Deliver smiles all year long with Free Shipping/No Service Charge on
          all your flowers & gifts when you join the Celebrations Passport®
          program.
        </p>
      </div>
      <div class="para">
        <h5>Send Flowers Internationally</h5>

        <p>
          We deliver flowers across the United States and around the world. If
          you want to send flowers internationally, trust us to deliver your
          most heartfelt messages. Because of our partnerships with local
          florists and flower growers, we are able to ensure that bouquets are
          delivered fresh from the field and on time. Our flower arrangements
          are artfully created and delivered perfectly arranged by
          professional florists.
        </p>
      </div>
      <div class="para">
        <h5>Fresh Flowers Guaranteed by Trusted Florists</h5>
        <p>
          In 1976, Jim McCann, founder of 1-800-Flowers.com, opened his first
          retail florist shop and forever changed the way people buy flowers
          for birthdays, anniversaries, and other special occasions. For more
          than 40 years, our passion has been to help you connect and express
          yourself to the important people in your life by providing the
          finest selection of beautiful flowers and arrangements available for
          same day or next day delivery, from roses and orchids to tulips,
          carnations, and daisies. With quality supported by our 100%
          Satisfaction Guarantee, you can also find plants, gift baskets,
          gourmet foods, and stuffed animals that are perfect for every
          occasion. Ranked consecutively on the Top 1000 list of North
          America’s Leading Online Retailers by Digital Commerce 360,
          1-800-FLOWERS.COM, Inc. is proud to offer solutions for every
          gifting need, whether you're looking for flower delivery across town
          or across the country.
        </p>
      </div>
      <div class="para">
        <h5>
          Trending Flowers News & Articles from Our Flower Blog, Petal Talk
        </h5>

        <p>Flower Color Management</p>
        <p>Best Plant Care Tips from Our Plant Corner</p>
        <p>Diffrent Types of Flower with Pictures</p>
        <p>Thoughfull Sympathy Card Message Ideas</p>
        <p>Zodiacs Flowers by Your Sign</p>
        <p>How to Preserve Flowers in Wax</p>
      </div>
    </div>

    <%@ include file="footer.jsp"%>
  </div>
</body>

</html>
<script>
  let user = document.querySelector(".signin");
  user.onclick = () => {
    location.href = "#";
  };
  let order = document.querySelector(".orders");
  order.onclick = () => {
    location.href = "./wish.html";
  };
  let shopnow = document.querySelector(".btn");
  shopnow.onclick = () => {
    location.href = "./login.html";
  };
  let bag = document.querySelector(".bag");
  bag.onclick = () => {
    location.href = "./cart.html";
  };
  let Cart = JSON.parse(localStorage.getItem("cart")) || [];
  let Total=document.getElementById("cartTotal")
          Total.innerText=Cart.length
</script>