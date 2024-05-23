<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 20%; /* Set the width to 20% for each card to fit all 5 in a row */
  float: left; /* Add this to make the cards float next to each other */
  margin: 1%; /* Add some margin for spacing between cards */
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container {
  padding: 2px 16px;
  text-align: center; /* Center the content within each card */
}
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

.btn-grad {
    background-image: linear-gradient(to right, #ff6e7f 0%, #bfe9ff 51%, #ff6e7f 100%);
    margin: 10px;
    width: 200px; /* Set a fixed width */
    height: 50px; /* Set a fixed height */
    text-align: center;
    text-transform: uppercase;
    transition: 0.5s;
    background-size: 200% auto;
    color: black;
    box-shadow: 0 0 20px #eee;
    border-radius: 10px;
    display: block;
  }

  .btn-grad:hover {
    background-position: right center;
    color: #fff;
    text-decoration: none;
  }
  
</style>
</head>
<body>

<%@ include file="employeenavbar.jsp" %>
<br><br>

<div class="clearfix">
  <div class="card">
    <img src="https://watermark.lovepik.com/photo/20211130/large/lovepik-hotel-standard-room-picture_501283030.jpg" alt="Avatar" style="width:100%">
    <div class="container">
      
        <button type="button" class="btn-grad" onclick="stan()">Standard</button>
    </div>
  </div>

  <!-- Add four more cards below -->
  <div class="card">
    <img src="https://watermark.lovepik.com/photo/20211120/large/lovepik-a-deluxe-hotel-room-picture_500481095.jpg" alt="Avatar" style="width:100%">
    <div class="container">
      <button type="button" class="btn-grad" onclick="dup()">Deluxe</button>
    </div>
  </div>

  <div class="card">
    <img src="https://img.freepik.com/premium-photo/luxury-tropical-bedroom-suite-resort-hotel-with-wardrobe_105762-1840.jpg" alt="Avatar" style="width:100%">
    <div class="container">
      <button type="button" class="btn-grad" onclick="sui()">Suite</button>
    </div>
  </div>

  <div class="card">
    <img src="data:image/jpeg;base64,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" alt="Avatar" style="width:100%">
    <div class="container">
      <button type="button" class="btn-grad" onclick="vil()">Villa</button>
    </div>
  </div>

  <div class="card">
    <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgWFRYZGBgZHBgaGRgcGBkcGBgZGhgZGhgcGhwcIS4lHCErHxkaJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHxISHjQrJSs0NDQ0NDQ0NDQxNDQ0MTQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIALcBEwMBIgACEQEDEQH/xAAbAAACAgMBAAAAAAAAAAAAAAAEBQMGAAECB//EAEYQAAIBAgMEBgYGCAUDBQAAAAECEQADBBIhBTFBUQYTImFxgTKRobGywRQjQnLR8AcVM1JigpLhJENzs8JTovElNDVjk//EABkBAAMBAQEAAAAAAAAAAAAAAAABAgMEBf/EACYRAAICAQMEAwEBAQEAAAAAAAABAhEDEiExIjJBUQQTcWFSgUL/2gAMAwEAAhEDEQA/AD76yjfdb3Gkj4YEQR+fdT24Oy3gfcaW5K3+FGMou15Of5cmpKn4AThFHoyveD+YravdXcwccm3+ujorXV12PDBrg5VlknyQJtAD00ZO/ePWKNsYoH0WB8D8qgNuh7mCU6xB5jQ1jL4v+WbR+T/pDlMUeNEJiapeKxd+08K+ZYGjrOviINOEx5Hpoy947S+zUVyuEk2q4OhTi0n7LGt6pFu0kw+KDeiwPdOvq30Ut+pKsaLcqQPSr6UBvNYMUTuHrqJSS5LUWxsLldpcB4j10pBJ3mirNuRU/Z/CtAxBrm5fVRLMAOZIA9ZocWTzNVx9mocOl9szOzuuZmYwua5oJO7sitcXXLSY5GoRsdYnbyL6Eue7Qes/IGlOK2zefRSEHcJPrP4CggldZa9CPxornc4pZ5PgL2LsxL3XtelyiZgSzTOVjMzPClSJVm6Mjs4r/S/4vSFFowJJy/QzNur9EOSthKmK1rJXQYEeWtxUmWt5aAISK5y0SLJO4GpFwhPIef4VDnFcspQk+EB5aLwi9lvFfnU30NR6Te4V1bCwQvNZ389K582aLi0jpw4ZRkmznpak4u5AmRa/2kpWmAc/ZI8dPfTi/inDEMrBtJzZsxEdk68IiO6Kga+xpQyT0pRQ5wgpNyYKuyj9pgPAE/hUgwVtfSJPn8hrW2JO81wUp6csuXQtWKPCskzW19FR4wPeda5bFchXGSsyUfQn3Oxfe12qjXXN+YrK3krdV9ERfdIbP6LeB91AhaNxFvOjrMZlYTviRSRdlXF9Fx5EqfVu9tcvxJSjF0r3N/lRi5K3QflrMlCZb6/xeI19n41i7QYekh8vwrs+1ebRy/U/FMLyVmSo0x6HjHiCKJRlbcQfAzVqcXwyHGS5Qh20mv8ATTnq6WbbXXzWneSs4d7/AOGk+xAFzBq29deY0PrFQ3rdxFJR5gE5XEjQc99NclRYlOw33W9xq5wi1ujOE5LhiXYu0GuuwdcrLvgyDu7tN9WC0lVzo+n113y+FKtNpa8Wa62exj7USotMMKnZ86EVaY4QdnzNSOXBKiUhuj/BWx/9r/HdqyKKrb3F+jIuYT1jmJExnuax511fF2mcmfeIsyVmSu2uKONRPiRyr0nlgvJxrFJ+B10b3Yr/AEx8L0oVKzDXb3b6pWMr2wsDsgHfPCJojD4c/bB8M34Vz45tN6Vds2yQTrU62BylZlHOmLIu5UVfWx9ZqIYcVs3kfpGdYl7YEWUV2rngvs+dGC0BuAHlWZKn65S7mx/bFdqQGS55CtZW4mjClc5KaxQXgTyzfkGINTYdIDeK+8111ddosA+K++llUVB0isUm5q2T9I1/xDfdt/7aUry0628v1x+7b/21pdkq8b6F+GeTvf6DZazLRBStZaqyAfJWstEFK1losZBlrVT5aylYBd+6ERnO5VJ5bhzpdZ2zbbn4iGHsNO8MvbXxqm4zDLLKoADZtw4njXm4JSjFtez0c8Yykk/RYreNtNucecj30WltWHBvUap+zkv2bYRbYuICTmKtvOplgCKkOOZwVFkI4I7U6b9Y0E6V0rM/KOd4F4ZZ7uzUO9aBubFQ+iSDStMfiE4k+ZHsOau16QXF9JJ8QPkQfZSeTG+UH15FwwPaeHdHKscywIbMSZ5QRTT6XiE9O1m8J94kUsxm0RdfdB0014QDEjvFXjq6eOnJuLDI3GK1JFdTbSfbV18pHs19lS3No2WRouJJVoBMHceBg07fDq3pKD4gGle1Nh2XRyUAIViCN4IBNatzS5TMVofhoR9H9b10+HwW6tFsVVOi2HyPcUGQOfeEPzq3WxXk5O5nqQ7ETIKYYb0fOgkFH4Zez51KHLg6ZjFU7DbHJXrc5Ad3GUAfvPx/lq7BKS4Rf8Og/jufHcro+Ok5bnPnbUdhcmBUcCfE1MtkDcKN6utZK9NaVwjz3JvlmtiL2sR9we5q1kqXY47eJ+4Pc1S5Kxxvd/prlXH4CG3WdXRZStZK1syoFNuuerospXPV0agoEKVrJRZt1z1dFhQLlrTLp5j30VlqK+unmPfWeV9LNcK60FbZWbv8tv4FpfkpttVe3/Lb+BaCKVUH0L8Jmup/oKUrWWiClay09QlEHKVrJRBSuctGoekgy1lT5ayjUGknwo7a+NVO6JfzPvq3YIdtfGqo/p+Zrz8PY/078nevwsuybf1f8x+VHdQCNQD461DshPq/5j8qZImldcX0o5JLqYA2zbR3ovkI91K9p7Htrbd1BBVGYdokSFJHpTyqy5KX7XT6i7/pv8BpS0tcDjqT5PNSv1o/m+JK9O6uvNG/aj+f4kr1XJWeF1ZpnV0C9XUGPT6t/uP8JpgLe/8APCoNop9Vc+4/wmttVo59FMo/R4fW3fEfClWi2KrPR0fWXfEfClWm2K8yfc/09OHaiZBR+EHZ8zQSimGEHZ8zSQ5cE6CkmAH1KD+O58dyn6CkezB2EH8d347ldGDaRz5t4kvV1nV0XkrDbrs1HHoF2zBD4n7g9zUZkobBCLmI+6PcaY9XWcZVZrJcfgOUrWWierrOrq9ZGkFKVzlos265y0aw0ghSuclFlK56ujUGkFy0Pi10HiPeKY5KDx66Dx+YqZyuLLxxqSCtoLLD7tv4FoUpTDFrLL9xPgWoClEZdKCS6mCFK5y0WUrnJT1CoGKVyUospXJSjUFA2StUVlrKNQUQYRodTyM1UVaWnx+VWuye0Kp+GaY8/lXJh7WdeTlF62IPqh95vlTJRpVWwe0CrJb0KnMxEOGkCR2lIAHdxn1mWMT1ZjKzo6gMWctDMCF0J3Tvjn4Vprp0ZfW3uPWdRGo17xyP4Uv22wGHu99u58Boa1eIUQ0EFojhP5PrpdtUMllszTmRm3me0Igz94fkUnPwNY/JTm/aDwf4kr1pSCJFeSOfrPJ/iSvTcFincsezk0Cj7WYFsxMabimnjSUtJco2T4d5JHj7wK1tNfqbv3H+A0G94opYGJ3aD99QYnumo9sYmbd6dy50AjjkI9804zpURKFuysdGLTNculVJgiYHNUj3GrZawr/uH1Uj6BntYn76fBV4w5rKUE23/TWMqihK65SA2hO4HSmOD9HzPypdtxvrk8P+VMcH6PmflWXDot7xsKWkmyR2V+/d+O5TtRVVxOJdLalDB651BiRBe5W2J02YzVqizZazLS2/tUIiyCzlEJGgktlGvLU8qy3thCAYIkSJjXu37611mf1My0sXL3eo9xpnFKMNfDm467mQEcyINT/rVN8NqY3Df66dicbYeRWopWdvWtQcwjdI9KdITXtHuHMVJf2siBiytCAFogxOWBod5zTB4VLlQ1jb8B5FckUjx3SBCrohYOMgmBALFY1nkaOTaIgdhz3hCQTx3U9Q9D9BhFail7bYSYyv/R/esO1U3lXHisePGnqFoD4oDae4ePzFa/WyTGV/6R+ND4rFq4GWdDxjmO+k3sOMKdjm/wDZ+4nwCoSKgxu0ETKG/cTl+4OZoQ7Zt8z/ANp9xp2DjYxNc0u/XNsiRPsE+2oztu3H2vIA+40WxaRoa4NLv1ynJ/6e+OfMiuG2zb/i9Q/GlY9AzrKWfrhP4vV/esothoJbbAEE7uOk6cdKpezHkKe8/wDGrfcfKpO6ATPhVL2XbKKoYQZPtyx7qyw9rNsnci1YNUkOzQRm4HTQDnFTpYVEIS8mZsxllbKCYiI4SB6zStcqh3b7cWxrxInUHTcpHnUWI2iMpto26Ad+hBHHdTaTlwJSdD/KuWM6ekSIzejBkbjr+FLtqsDZcdYrZUYDVyx7YeNUjmN/KlXRVWZirssAhiSRrp6Pfx9VF9J8chz200ZYB7KgkmH1b7qncONOknSE5MrbGbn9XxJV4UhQQLqb5EdYIP8AQeUeZqjq03RMag7tB9jh5U5/WiJIFskaTLjUiRI7Jjf7qSpobvwWe1ikgK9xIAI0VyTMGTKwdR86h2hfs9Vc+t1yOQMrnM2UjflGp5mqyNuIP8pD4sDx+7S/aG3QwZVtKJBE5iYEeFFRFchl0dxDqb2RiCTuBgEhFie6jLeO2iHBYpllQQt1906kSN+vsFKeiN4sz+M+xRVqPzHvFQ5bstKkiewXdgXzEgaEtPHdVgwJ7PmflSa3TfAns+Z+VZot8By1UMVicllWP/XYRzBvOGH9OarX1gA1qjfSrd1BbfOArtcJXKT6bsBr972VpCtzGXj9J9uo+e2VDFXyMSIyLbtgM08QdzcZynkBSyesDWh2ANeIaSIkbivZJ8mp1fxdp8mZrkIoXKFUK2q6ntz9n20PZFkZ+0wzMGAAZdQir2oY8Qd3CKKlXBrqQfsg5VdSMuVIIkGIBnXca6xOMtrmROszdqSFtouUSJzIkkGRpIkE0u2XcyI6u4ZmUjNDQzHMZM6jfQ+1sAzo6WcVkzaa5wsQdGXI28xuOgG/nck3SRnFq22KelmPyCxcRVVrecCNQSmTJpA3AU26FYhrli4Xcuxu+kTrARImhrOwbVyyy4pla9DBLiOwUSBDMpABOadMu6Km+gvh8MyYNxnNwP27iSVyAEaQNSBxFTKLca8mkZJOx2+yle67aKpCCF0ObMTmMjWMpkceYrjE4XJdtojPNwMM8JlVlAMkF9+p1A0ApRjLuK65FVUawqCYu2FcuofKC2cMRJWeJ111owi45S4ERHQmA11HInMsEggZSCDImNd9TGMkDkmLtqXbtp0RmyldTGRjG6NDodAY03d9dYnFshylm3T2ZMJ2iTJB3ZWOu/Shtp7IvXsSFZHhiobEo6ZIUNoyxLDcJBHDwp/hsK6oiNZZ2tgLnMy+SRn0MyYnUn0vOnK1QotWxTZ2qzPkGUuAxAJMgBSSoOgA3mJ4Nu3k3DYl3L5yCQViDwmNRJjj6jSvpDhLlthftYdw7h1y27NxgoKMpZo7InMBEbzv0oLop15e82IS4pbq4Loyg9ticoYDnw504p8hJrgsG3NpKl5EMEslqJ3gaKx3GN4Fc451BKskFYy9lMjCN4YnVZYbv3uE6Q9IcHmZLqqc1tVY6MQ4QK6pA3TB1oK7ti5ibktayloVUBOY5Vg5SQIJ3+VOT9BHgifaKF8gSQeyWKKASBmIB1+zGvfwmocJfz3LaKiBWOV3I7IGVpIb7IlYPiBXeGvoqszMqFDkcuC47QBACMoysYWCJ36b6ixOItlF6xiZzQzRllvRy6ldSI3DcdJ0KsDeJ2i6pdLWlQqiZDlBB7QCwY/dE798cqIx2NtI7jIv1YSVCRIYidZ5MDPdSzA3ly20dwARDwRmQlmgwdSMvHcJ50K91zeyzmWUtlmMyt4qCykGYMAg8optUCdjLFbSso7KcOSVMEiSDGmh+XDdWVX8ZsDEG5chCRneDJM9o91bp0vYt/R6Rjv2byQBlOpmBpv0qn7PvlwGOmp08Ijh31bsf+zf7je6qfs4Qq+f/GpxLpbCb3oepbDjtAwGVgQG0K7jI4iTSoXiyuSBGaA2QjUPLAsAAd40131xfaHJzsh03Zhw5rUoxN10Ki7nUiIYhjB8dR4763WO97MHOtqN7BsM6OQQIK7zBMToNO+gNqMxuaDQKZMA6tOpPr9dHbMv3cMGCKGDEEhsxEjzqPEXkbOxssrMpEi4Sg0OuRlPv4ClKDuylNVQHbH1g0nfp/MlWsYUAFsipDkqAgYnKoLgGPHSPZVSQ/Wev4kqzWsyKTnRp9HO6yN2aS5Rl3ctd1ZaWy20gq3cDIWykERoQAGMcAPvD1modquDZY/vI8DlpHLfw8qyxtBUU57loE/ul3jThAbkN1KsXthAjqX6x2DABbTwpM+iWZcu/kfDmnHcaltRx0YWHfx+SVaDu/PMVVejFwlnJUrOuojgo+VW4nSofcx/+UFIaZYN+x5n5UnW4BvNTLta2ghi2snQTy5kVMU26RctkMcQ5OleeYu11dpryq7HrWUqh7RXO4MaEcBwq2Pt2fQQeLmT6hAHtoG9jXyMA2QamEhBqZOiRPGuiGNrk55ZPRrYaYe6q9YmKRm7WYr2baiAA+siSeAMcxUHSN7djIltHZng5wWZFh1DB5PZkE6+HfAuzcLfusxQHKDBdjlTTf2idfKasWz8LkMveL81T0f6m/AU9Hpsbye0is7RvMjRbYEZgJ9MR3ERPjXWHd3v/R5AfIHkr2YL5IkEmZHKrH0kVHss5RVKNbykDta3EXU7zoTvqvtsb6TeuMHdHRvqzbyGQrvnLkiOyWSFJnVuZofSgi9T2Qc2y8QGyjIW5Zo4Tx7qBs3Lj3DaQIzrvCuY3x6W46gjfwqLpJirmq23dU6tSWRcx7fYGsllLAyMs6A8qF6DYK9afrUR7mYAAxBDAkHMXgAaTrv9VSp2i2qNnbyAwXSd0Zo1Bg76YWMU7qGS0zK3ospBB1I0I36gjypVe/R3e7T3byIJJCqrOYLE66qAdeE1YNjPbw6Wred26s6nIoDHOzmBmOXfG87qtrbYmLi3uwT6fDZCjBhvX7Q0n0d+6pRj14o/9DfhSrYmxFs4tMQ1/PlZ3YG2VYl1cb854vNWrD2S8hWDHtQASDqSYIIjjUttPZWNOL8ixdop/EPFYqa1tBH0DTESBrEnTThVU6VYjHYZ7pIdLb5VBPaQgboaIU6nSZO+NBW+hN5mRyzFjKiWJJgMY1NNOw2Lsm0gpjOVPLtA+qi02k3/AFH9b1590pwC3sUqiesKL6S9giWO8azoeHKl21dhs2U2kCOoHWEvlVmAWSpY7u0AN27dScknRUYtx1HrKbRPG4fNz8zUi4tTvdT4lT768TwqXlcoWeQQGC3IKzlae0wB/A1Ydn3CVuZr91QRbRScQwYMCozJlbUkAgjXfNDkkJRs9RR0PBD/ACIflWzhbbRNq0YgibVswQcwjs6a6+NUBdrMLjI7sqggpC5i6ZQdZbXUkcPRpRexuLWIxdtTLTnFrJBPYIZlPDxpKVrgbjT2Z611KD/Lt/8A5px1/drK8Yt9KMdGtxOP+QnPut1lV0i3PR2IAIdAykDmZBEmRy1FRNgMK29Ah4ZCV9S+jw5U3awHRCN+VR6v7iluIwpzewAj1/nurBWuDRpMAxGwEYyl3yYT7V/Cg36MudA9ph95vmtPUwvDunxpXtjFdUpjfw1jWr+6SW5DxRbF1/o9iE3Akc0cEeoGfZQWMtXUU9YGUEMO0sA6HcYE0+2TjnREdjmzKGncwzDN6XLUCOFPbO2UIykATvDRB9/Oms98ieGiibKwqOzM0yDGkRBAqwLsezqSpJ7zT63gMOZItIuY/Y7Ov8unsru/s6Qcjgdzbv6gPlUuRVFfGCRd1tff76W7VcAQuVfAAcRTDaGGxYkLZkfvK2cHvhdR51WcRs+8Sc5IPKIP41m2x6QzZV8yQWkR3aa0wfEMR+e6q6uMXCq+ftuwGRTMGD2teG8eqoV6WoR2rTof4WDL7YNOMW9wk1wXBbk0PjzIH54iodk4+1f/AGbyYkqRDDxojHW2DKN+hPd3T+eFXji1IUpLSDw8dhGc8lUmPGN1L8baxTAjIV8SB85qwYbryNHyL46fh7a7xKXisBkc8IMkeO4e2uqnW5yXvs0I7e0Rh1RWEtCgrOm4A+2jL3SEhkKQFJ7UqTuMkCY4K2/nyBqq7aR0c9YjB+zuBBIA4HiNd8cZ4VLsbEvLOxJBKEKqrm7Jyht2kFt/HTlWepI1cbpl4xmMN3DZFUl3KHQaAK6u0ncNAfVVV2jicRZuO2HbNL3He2JllJ1BUEFl04HwiKNs7acuGzBYBV9SNZMk6xuCmD5c6KdjeV3jDi4gZnzqiKUBl2DJDprBMt+NDakVG4tmujW1rdy2GbDgGYK5jkGXLBVYHiBw561fsM2ZQRoDw5TVBwbZtfqtY1tOXQ67wxZte6eFXrBNCDw40JUKW+53ioyEVRsWsPVox20FE9qe4a+6qLtvHPP1aE9+nupuyY0gm/i0TfqTAAElieAA41cujmCe2ud46xtyb8g/i5v7B3nd5fsRn+kq7hpXWTz0UfF7K9U6MRnJ/hPHvFSipK1sE9I8APoGLLwx6i8YO4FUZgdeMga15X0WhQwAgdkx/Ma9h6UIzYLEogzO9m4irzZ0KAa95rxu21zDC59IRUdEQ5VVVDZmJUkJ2eMHL+7Q95cglURtjMflxds5UdURMyELmcmJQPlJBOZdN0TWtqWHsol5xPWZvqywQhFGdiXAJE/uhhq09xpo2gzNmntyWmJJY+6mzbXv30Au/WBDHa4EgcSDrofVRlcVQQ1BOzOjFnF2Xuqxt3CX6tWYvmNtVzyW3qSyknePDSs2B0uTD2UQYcsY/aCArQzNBmN0wRNTYK9fW2Ut5rapnuQmQjNlFsFkZSGlmQEAE6mONSYbBsERAjutxR1zsgGU5pEHQkBTMA66AgQKycotW+DWNlS2ptBHus/UupuEsRn0JJiV7JncR5Uw2ZaNxWTKyOFLHODlIzrlAJ1WATw49+hl3DKmUDOgbMArorqfRLAhgSu4biBvgnWlTY57N1VDONAJBOWH01Ri2b11Saa2YNNO2hncuBTlOHVyAAWyP2tBrv18a1Ta3gVIBVyogCMgbUCCZJ4kExwmOFZWVr2XT9F+2dig9tZRkIZhkb0hDHXTQg7/ADrthrI7/Ke7hxpWMQDWzcPBvI/iKsVBgbUn5VS+kt2Wjxq0C/AObT886pO23lyazm9i4rcsuCthrFkj/pp61WD7RWXLUa/n8611sJ82EtHkGX1OworKCvs/JpUFi3rnT0GI8/lRNjbDwC6htdBMeEjcTUeLTU/n86TQjjThxHhS3QbMsFrpAh35l9o/tRlvaqPp2XHfBHgAd9Ut1JGn/iTv958qkKhRG4Ace7maNTDSi04zZeDvD620g5ECCPAbvZVfxH6P8GzdkuJ+ySfcDI9QpK2Ke4xtoxIOm8iQB2o5CvRdlYRVUIvCAW4sQoBYRu191NSfgTikeb/QTh3ZUw7oUZlLhLkNlJEhyAGBiQeINAXNsXkuNmEgtoGJQkZeDaceVX/pHjnTEuod1AywFdgNUUiADS5dtXAf2rkHUdtvx5ULO4t1+F/Rqimysp0jVRLq6kAxmOYEweO88ONMdkdLAwMBQeeaAN2pnd66avttzpnbdxgzzGtBNjbj7yfLSqXyWiX8RP0Q7S2kl4It4l0VgTl7AXgSH9IctCRSE3Ea44sAKH1VFloAYkgkyYAJPGrANrYfDW763GW5iSgFu06F7al47TZhlkKS0aGCRrNebW7jo4ZZDTpE89InU1TbnuvXBGmMLjz/AEuKEvaOeSbYRWzA69vtICDqSsnnup9s3o9ib2EuCwvZuKhUkqA0lCcrtEyuZTAjRInUii4vGYhY6606KSNSjIWMaQWEDy5V7x0ax+HtYGw3WgqUz5tcxJY5yQdRDSCToI1iqx3fBnPZbM8ywdlsD9TiR1dyM4WQZQswUgqSNSpG/hT5NtO47JBX+GIjhOutDdNekWExRDpZ61rfZ6zOVWCw7JKntiWJhQRvhxJFVXZm0n+kshaEVDltqMqDRdco3nUiTJjjWl0LTqW5dTjm4qKguXVb7MeAmg7eMHv7qmVlNVqZDxoFNwB1GgkiO/tKaunR0w++dPnVYv2AVzD7JDDyYE+yasGwX18vmKTdlJaVRZsfecW3NuC+mUGIJkc68v6eYZxeCXFm5dsqzgMYUZ2yZcxJzAhieG6BvmL9IO1MQDaZLr2x1jqpR2U9kqAeydTVc2ndxb3kFy+bjsjKruJYIsmMw1O8679aTYRXkU3dj30cEW3dQVOZVLDUBoOXcdYNem9E9gfR7b3TcR3bsOhBAtkHtKwgywaJ00jSqJat4216DN4LcYD+loFSHHXTc6y/avM8KM6EKSBp2mRTPZ0nfECYqJX4G1Z67snZ7HMyKpG7Mh7M6yvZ1JGk7okVW9t4+2t97LIS4zO3ZZjGYCMskljrAH7tNNj/AKTcCLK2Qr4d1WAvV9hTzWCfHXeeOs0v6MbRwOJttdxeHm61x4cDtqgI6tM6MG7KhR5VOhN2VGTiqFW1uklu3iDh2LLaC9o5VQuWQlAoUSgDFdWJ3NpupI1nCXC95uvdoBBe4pVBmVVYlAC8Fp0IgEzuq+YnoZsW+SwZ7bMSSRccGT/qBhS+9+h/DP8A+3xzD7y23+ErVKCQtZTMVggXYrduBSZAzaAd3Y3cu6Kyr5Z/R5tG2oS3j7eRdFmzrHfIPvrdOmGo4uWCNU9X4VCuIO49k8uNF5qivIrekJ/POsuDazQunn+fClG09hrd1Ryjf1IfFeHkRRj2ivomRyO/y51i4gbjoe/fRafI69G9iWns4YWnILKzmVMghnLA67t/spglwZTr+FBrerC3EaHmPwoaFRJeX3fPnQrr866a8wmRI5j5j8KiN0HdUMaN5BHnPnwoDH3+zE/nfRxOhpNjTNS2NEvR9hnIgSRHr4Dxr0rZAgCd4A9Zyk/P1V5psVO3I38O6vS9mtA13D+/z91ERSKd+kFwmKHDNaQnvILpPqUDyqtjE7qcfpZ7L4e4D6SOh5yj5v8An7KpOBuO5yohc9w0HidwpOG9m0J9KRY7LSRT3ZtpCwzHTjzMamOZpNs3YbmDceP4V+ZNWjBYMKZA15xWbW5pqVFSwvQjEYq497EMtkOxYro7gE6KADAgQBJ0jdV/2B0ZwmFg2km4P8x+1c8juX+UCibFsxJMCp+vA9ET3n5CujWzlcdxgziNYynfO4+XGqN+kzAWjgWdEVCjo3ZGUNmbKcyrofSmSJ0q2K01W/0jf/H3fvWv91acW7JaR5LgtqC3be2VJzaggjQ6Rp4it4LaKrdNw6Agj4fwpY2u+tZdIrVsmuS44faqNuYeumFjFjgfz5V50UIqRMQ67mI86qyaPU0v/V3NdMj/AAmn3R15I+6feK8hwvSG6isphgwI5ETVjw3TYW7LG2CLxXKsjRZ+3O4xwHOKdiZL+kLaaM9u0naa2zO5nQF4IXx0k+IpF+vA1+1cZSAgcEAhpzLGkxSHrCSSTJOpJ3k8zzroAyDyqXu7KSpJF7s7ew7fbjxDL7YI9tNMJct3PQZGPip9xrzNvVUvVjcaVP2OkWnpdYy38OCCJLc+a8/GmfRJCbEg/bbhI3LVDvX3BSXY5ZKyxOXdunduFOtl9ILtlMlvIVmYdZ1IA3gg8BSd2NJU0egoGHI+ZH41MH5qfYfcZqHohiWxlp3dFQo+SVJyt2Qdxkjfzp02yzwo1VyidH9APpJ5v/31lF/q9uVbp60Gli0NUbtWs1Rs1QyzZqK4oO/+9bLVwzVIyEllPMe31VNbuTQ7vXGfXv5/jzpDDwp5VG+GzcNeY3/3qJMSR3+G/wBX/mjbF8HjRY6AnRlEQWHhrSXG3O1ER3bj5irgpWuMRg7dwZXQEc+I8CNRUtWNbFe2O/bG4TMc92p7h31bre01AAGqqTpxZuUcF5mgMBsi3anKCc28sZMct26jvo6ch7qVBsxZt7DJi2ttdUnqw0LmOVi2SSQPu7p4musNhVQBUUKBuAAA9Qo8YcHdoOZ3VIgA3CTz/tSpspNLg5sYbidBzoxIHoie87vVXKDnUlUokORINd+v54V0orQqRaqibJUNVz9I5/8AT7v3rX+6tWBNarf6SD/gLg5ta+NaqK3JZ4mSa2hqRVFbyitRHBBrCKly1rLQMgC91bVamNaIigKIgmvKiBXKtXVIaR0D3Vg9laDVuaYzi5qV86kQAaCuGSSDyqXC4fO6IJ7bKvf2iBp66BI9x/R9gurwNqRq4Ln+cyP+2KsuWh8LbCIqroFAAHIAQKlZ6iyGd5ByrVRddWUUBQg9cuaysqWWRO1RF6ysqRkLtUDNrWVlAztHqVbmusg8x+dfzrWVlJgGWr5WJ1B1BHEUxtXhWVlIomW+ToBXWfzPs9XGsrKQM6RSTqfz3VMieqsrKpEsnVa6NZWVRJ01aR9Y7qysoAmtvVY/SS3+Bcfx2/jFZWVSJPH81bQVlZWgzsiuZ1isrKBmFawCsrKAODrXQIisrKQHS611FZWUwNtpT/oLhusxtvkuZz/KIHtYVlZUvgD25G0rTvWVlQSD3H1NZWVlUI//2Q==" alt="Avatar" style="width:100%">
    <div class="container">
      <button type="button" class="btn-grad" onclick="pent()">Pent house</button>
    </div>
  </div>

</div>

  <script>
  function stan()
  {
	  window.location.href="viewallstandard";
  }
  function dup()
  {
	  window.location.href="viewallduplex";
  }
  function sui()
  {
	 window.location.href="viewallsuite";
  }
  function vil()
  {
	  window.location.href="viewallvilla";
  }
  function pent()
  {
	  window.location.href="viewallpenthouse";
  }
  function vil()
  {
	  window.location.href="viewallvilla";
  }
  function pent()
  {
	  window.location.href="viewallpenthouse";
  }
  
  </script>

</body>
</html>
