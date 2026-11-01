
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IRONCORE | Fitness Club</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Barlow+Condensed:wght@500;600;700;800&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">

    <style>
        :root {
            --dark: #10130f;
            --card: #1b201a;
            --green: #c5f467;
            --white: #f5f7f1;
            --muted: #a3aaa0;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Inter', sans-serif;
            background: var(--dark);
            color: var(--white);
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 22px 8%;
            background: #10130f;
            position: sticky;
            top: 0;
            z-index: 100;
            border-bottom: 1px solid #30382c;
        }

        .logo {
            font-family: 'Barlow Condensed', sans-serif;
            font-size: 34px;
            font-weight: 800;
        }

        .logo span {
            color: var(--green);
        }

        .nav-links {
            display: flex;
            gap: 28px;
            color: var(--muted);
            font-size: 14px;
        }

        .nav-links a:hover {
            color: var(--green);
        }

        .btn {
            background: var(--green);
            color: #111;
            border: none;
            padding: 13px 22px;
            font-weight: 700;
            cursor: pointer;
            border-radius: 3px;
        }

        .hero {
            min-height: 620px;
            display: flex;
            align-items: center;
            padding: 80px 8%;
            background:
                linear-gradient(90deg, rgba(10,15,9,.98),
                rgba(10,15,9,.65), rgba(10,15,9,.25)),
                url('https://images.unsplash.com/photo-1534438327276-14e5300c3a48?auto=format&fit=crop&w=1800&q=85')
                center/cover;
        }

        .hero-content {
            max-width: 680px;
        }

        .tag {
            color: var(--green);
            letter-spacing: 4px;
            font-size: 13px;
            font-weight: 700;
        }

        h1 {
            font-family: 'Barlow Condensed', sans-serif;
            font-size: clamp(55px, 8vw, 100px);
            line-height: .95;
            margin: 24px 0;
            text-transform: uppercase;
        }

        h1 span {
            color: var(--green);
        }

        .hero p {
            color: #c5c9c0;
            line-height: 1.8;
            max-width: 520px;
            margin-bottom: 30px;
        }

        .stats {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            padding: 30px 8%;
            background: var(--green);
            color: #111;
            text-align: center;
        }

        .stat h2 {
            font-family: 'Barlow Condensed', sans-serif;
            font-size: 42px;
        }

        .stat p {
            font-size: 12px;
            font-weight: 700;
            margin-top: 5px;
        }

        section {
            padding: 90px 8%;
        }

        .section-heading {
            text-align: center;
            margin-bottom: 45px;
        }

        .section-heading h2 {
            font-family: 'Barlow Condensed', sans-serif;
            font-size: 54px;
            text-transform: uppercase;
            margin: 12px 0;
        }

        .section-heading p {
            color: var(--muted);
        }

        .programs {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 22px;
        }

        .program-card {
            background: var(--card);
            border: 1px solid #30382c;
            overflow: hidden;
            transition: .3s;
        }

        .program-card:hover {
            transform: translateY(-7px);
            border-color: var(--green);
        }

        .program-card img {
            width: 100%;
            height: 230px;
            object-fit: cover;
        }

        .program-info {
            padding: 25px;
        }

        .program-info h3 {
            font-family: 'Barlow Condensed', sans-serif;
            font-size: 28px;
            margin-bottom: 10px;
        }

        .program-info p {
            color: var(--muted);
            line-height: 1.7;
            font-size: 14px;
        }

        .pricing {
            background: #171c15;
        }

        .plans {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 22px;
        }

        .plan {
            background: var(--card);
            border: 1px solid #30382c;
            padding: 35px;
            text-align: center;
        }

        .plan.featured {
            border: 2px solid var(--green);
        }

        .plan h3 {
            font-family: 'Barlow Condensed', sans-serif;
            font-size: 32px;
        }

        .price {
            font-family: 'Barlow Condensed', sans-serif;
            font-size: 50px;
            color: var(--green);
            margin: 20px 0;
        }

        .plan ul {
            list-style: none;
            color: var(--muted);
            line-height: 2.5;
            margin-bottom: 25px;
        }

        .trainers {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 22px;
        }

        .trainer img {
            width: 100%;
            height: 300px;
            object-fit: cover;
        }

        .trainer h3 {
            font-family: 'Barlow Condensed', sans-serif;
            font-size: 26px;
            margin-top: 14px;
        }

        .trainer p {
            color: var(--green);
            font-size: 13px;
            margin-top: 5px;
        }

        .join {
            text-align: center;
            background:
                linear-gradient(rgba(15,20,12,.88), rgba(15,20,12,.88)),
                url('https://images.unsplash.com/photo-1540497077202-7c8a3999166f?auto=format&fit=crop&w=1600&q=85')
                center/cover;
        }

        .join h2 {
            font-family: 'Barlow Condensed', sans-serif;
            font-size: clamp(40px, 6vw, 65px);
            margin: 15px 0;
        }

        .join p {
            color: var(--muted);
            margin-bottom: 28px;
        }

        footer {
            text-align: center;
            padding: 30px;
            color: var(--muted);
            border-top: 1px solid #30382c;
            font-size: 13px;
        }

        .modal {
            display: none;
            position: fixed;
            inset: 0;
            background: rgba(0,0,0,.85);
            z-index: 200;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        .modal-content {
            background: var(--card);
            width: 100%;
            max-width: 430px;
            padding: 35px;
            border: 1px solid var(--green);
        }

        .modal-content h2 {
            font-family: 'Barlow Condensed', sans-serif;
            font-size: 35px;
            margin-bottom: 20px;
        }

        .modal-content input,
        .modal-content select {
            width: 100%;
            padding: 14px;
            margin-bottom: 14px;
            background: #10130f;
            border: 1px solid #41483c;
            color: white;
        }

        .modal-content .btn {
            width: 100%;
        }

        @media (max-width: 800px) {
            .nav-links {
                display: none;
            }

            .programs, .plans, .trainers {
                grid-template-columns: 1fr;
            }

            .stats {
                grid-template-columns: repeat(2, 1fr);
                gap: 25px;
            }

            .hero {
                min-height: 550px;
            }

            section {
                padding: 65px 6%;
            }
        }
    </style>
</head>

<body>

<nav class="navbar">
    <a href="#" class="logo">IRON<span>CORE.</span></a>

    <div class="nav-links">
        <a href="#home">Home</a>
        <a href="#programs">Programs</a>
        <a href="#membership">Membership</a>
        <a href="#trainers">Trainers</a>
    </div>

    <button class="btn" onclick="openModal()">JOIN NOW</button>
</nav>

<header class="hero" id="home">
    <div class="hero-content">
        <div class="tag">STRONGER EVERY DAY</div>

        <h1>BUILD YOUR<br> <span>BEST SELF.</span></h1>

        <p>
            Train with purpose. Build strength, improve endurance
            and transform your lifestyle with expert coaches and
            world-class fitness equipment.
        </p>

        <button class="btn" onclick="openModal()">START YOUR JOURNEY</button>
    </div>
</header>

<div class="stats">
    <div class="stat">
        <h2>2,500+</h2>
        <p>HAPPY MEMBERS</p>
    </div>

    <div class="stat">
        <h2>15+</h2>
        <p>EXPERT TRAINERS</p>
    </div>

    <div class="stat">
        <h2>20+</h2>
        <p>FITNESS PROGRAMS</p>
    </div>

    <div class="stat">
        <h2>10+</h2>
        <p>YEARS EXPERIENCE</p>
    </div>
</div>

<section id="programs">
    <div class="section-heading">
        <div class="tag">WHAT WE OFFER</div>
        <h2>OUR FITNESS PROGRAMS</h2>
        <p>Find the right training program for your fitness goals.</p>
    </div>

    <div class="programs">
        <div class="program-card">
            <img src="https://images.unsplash.com/photo-1583454110551-21f2fa2afe61?auto=format&fit=crop&w=800&q=80" alt="Strength training">
            <div class="program-info">
                <h3>STRENGTH TRAINING</h3>
                <p>Build muscle, increase power and improve your overall strength.</p>
            </div>
        </div>

        <div class="program-card">
            <img src="https://images.unsplash.com/photo-1534258936925-c58bed479fcb?auto=format&fit=crop&w=800&q=80" alt="Cardio workout">
            <div class="program-info">
                <h3>CARDIO FITNESS</h3>
                <p>Improve endurance and support your fitness goals through cardio.</p>
            </div>
        </div>

        <div class="program-card">
            <img src="https://images.unsplash.com/photo-1518611012118-696072aa579a?auto=format&fit=crop&w=800&q=80" alt="Yoga training">
            <div class="program-info">
                <h3>YOGA & FLEXIBILITY</h3>
                <p>Improve mobility, balance and flexibility with guided sessions.</p>
            </div>
        </div>
    </div>
</section>

<section class="pricing" id="membership">
    <div class="section-heading">
        <div class="tag">MEMBERSHIP OPTIONS</div>
        <h2>CHOOSE YOUR PLAN</h2>
        <p>Simple membership options to support your fitness journey.</p>
    </div>

    <div class="plans">
        <div class="plan">
            <h3>BASIC</h3>
            <div class="price">₹999</div>
            <ul>
                <li>Gym Access</li>
                <li>Basic Equipment</li>
                <li>Locker Facility</li>
                <li>Monthly Plan</li>
            </ul>
            <button class="btn" onclick="openModal()">SELECT PLAN</button>
        </div>

        <div class="plan featured">
            <h3>PREMIUM</h3>
            <div class="price">₹1,999</div>
            <ul>
                <li>Full Gym Access</li>
                <li>Personal Guidance</li>
                <li>Group Classes</li>
                <li>Monthly Fitness Review</li>
            </ul>
            <button class="btn" onclick="openModal()">SELECT PLAN</button>
        </div>

        <div class="plan">
            <h3>ELITE</h3>
            <div class="price">₹2,999</div>
            <ul>
                <li>All Premium Benefits</li>
                <li>Personal Trainer</li>
                <li>Priority Booking</li>
                <li>Nutrition Guidance</li>
            </ul>
            <button class="btn" onclick="openModal()">SELECT PLAN</button>
        </div>
    </div>
</section>

<section id="trainers">
    <div class="section-heading">
        <div class="tag">MEET OUR TEAM</div>
        <h2>EXPERT TRAINERS</h2>
        <p>Get guidance from experienced fitness professionals.</p>
    </div>

    <div class="trainers">
        <div class="trainer">
            <img src="https://images.unsplash.com/photo-1567013127542-490d757e51fc?auto=format&fit=crop&w=800&q=80" alt="Fitness trainer">
            <h3>JAMES WILSON</h3>
            <p>STRENGTH COACH</p>
        </div>

        <div class="trainer">
            <img src="https://images.unsplash.com/photo-1546483875-ad9014c88eba?auto=format&fit=crop&w=800&q=80" alt="Fitness trainer">
            <h3>SOPHIA MILLER</h3>
            <p>FITNESS TRAINER</p>
        </div>

        <div class="trainer">
            <img src="https://images.unsplash.com/photo-1534367610401-9f5ed68180aa?auto=format&fit=crop&w=800&q=80" alt="Fitness trainer">
            <h3>DAVID CARTER</h3>
            <p>PERSONAL TRAINER</p>
        </div>
    </div>
</section>

<section class="join">
    <div class="tag">YOUR TRANSFORMATION STARTS HERE</div>
    <h2>DON'T WAIT FOR TOMORROW.</h2>
    <p>Take the first step towards a stronger and healthier life.</p>
    <button class="btn" onclick="openModal()">JOIN IRONCORE</button>
</section>

<footer>
    © 2026 IRONCORE FITNESS CLUB. ALL RIGHTS RESERVED.
</footer>

<div class="modal" id="registerModal">
    <div class="modal-content">
        <h2>JOIN IRONCORE</h2>

        <form onsubmit="registerMember(event)">
            <input type="text" placeholder="Your full name" required>
            <input type="email" placeholder="Your email address" required>
            <input type="tel" placeholder="Your phone number" required>

            <select required>
                <option value="">Select membership plan</option>
                <option>Basic</option>
                <option>Premium</option>
                <option>Elite</option>
            </select>

            <button type="submit" class="btn">SUBMIT REGISTRATION</button>
        </form>

        <p id="message" style="margin-top:15px;color:#c5f467;"></p>

        <button class="btn" style="margin-top:15px;background:#454b40;color:white;"
                onclick="closeModal()">CLOSE</button>
    </div>
</div>

<script>
    function openModal() {
        document.getElementById("registerModal").style.display = "flex";
    }

    function closeModal() {
        document.getElementById("registerModal").style.display = "none";
    }

    function registerMember(event) {
        event.preventDefault();

        document.getElementById("message").textContent =
            "Thank you! Your demo registration was submitted successfully.";

        event.target.reset();
    }

    window.onclick = function(event) {
        const modal = document.getElementById("registerModal");

        if (event.target === modal) {
            closeModal();
        }
    };
</script>

</body>
</html>
