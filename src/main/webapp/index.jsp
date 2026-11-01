
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>IRONCORE | Premium Fitness Club</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&display=swap"
          rel="stylesheet">

    <style>
        :root {
            --primary: #f97316;
            --dark: #101010;
            --card: #191919;
            --light: #ffffff;
            --muted: #a1a1aa;
            --border: #303030;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Inter', sans-serif;
            background: var(--dark);
            color: var(--light);
            line-height: 1.6;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        button {
            font-family: inherit;
            cursor: pointer;
        }

        .container {
            width: 90%;
            max-width: 1200px;
            margin: auto;
        }

        /* NAVBAR */

        .navbar {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(16, 16, 16, 0.95);
            border-bottom: 1px solid var(--border);
        }

        .nav-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 0;
        }

        .logo {
            font-size: 25px;
            font-weight: 900;
            letter-spacing: 2px;
        }

        .logo span {
            color: var(--primary);
        }

        .nav-links {
            display: flex;
            gap: 30px;
            align-items: center;
        }

        .nav-links a {
            color: #d4d4d8;
            font-size: 14px;
            transition: 0.3s;
        }

        .nav-links a:hover {
            color: var(--primary);
        }

        .btn {
            display: inline-block;
            padding: 12px 24px;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            font-weight: 700;
            transition: 0.3s;
        }

        .btn-primary {
            background: var(--primary);
            color: #111;
        }

        .btn-primary:hover {
            background: #fb923c;
            transform: translateY(-2px);
        }

        .menu-btn {
            display: none;
            background: transparent;
            border: none;
            color: white;
            font-size: 26px;
        }

        /* HERO */

        .hero {
            min-height: 620px;
            display: flex;
            align-items: center;
            background:
                linear-gradient(90deg, #101010 15%, rgba(16,16,16,0.85) 48%, rgba(16,16,16,0.2)),
                url("https://images.unsplash.com/photo-1534438327276-14e5300c3a48?auto=format&fit=crop&w=1800&q=85")
                center/cover;
        }

        .hero-content {
            max-width: 650px;
            padding: 90px 0;
        }

        .tag {
            display: inline-block;
            color: var(--primary);
            font-size: 13px;
            font-weight: 800;
            letter-spacing: 3px;
            margin-bottom: 20px;
        }

        .hero h1 {
            font-size: clamp(42px, 6vw, 76px);
            line-height: 1.08;
            font-weight: 900;
            margin-bottom: 25px;
        }

        .hero h1 span {
            color: var(--primary);
        }

        .hero p {
            color: #d4d4d8;
            max-width: 500px;
            margin-bottom: 30px;
            font-size: 16px;
        }

        .hero-buttons {
            display: flex;
            gap: 15px;
            flex-wrap: wrap;
        }

        .btn-outline {
            border: 1px solid #777;
            color: white;
            background: transparent;
        }

        .btn-outline:hover {
            border-color: var(--primary);
            color: var(--primary);
        }

        /* STATS */

        .stats {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
            padding: 50px 0;
            border-bottom: 1px solid var(--border);
        }

        .stat {
            text-align: center;
        }

        .stat h2 {
            color: var(--primary);
            font-size: 35px;
            font-weight: 900;
        }

        .stat p {
            color: var(--muted);
            font-size: 13px;
        }

        /* SECTIONS */

        section {
            padding: 90px 0;
        }

        .section-heading {
            text-align: center;
            margin-bottom: 50px;
        }

        .section-heading h2 {
            font-size: clamp(30px, 4vw, 44px);
            font-weight: 900;
            margin-bottom: 10px;
        }

        .section-heading h2 span {
            color: var(--primary);
        }

        .section-heading p {
            color: var(--muted);
        }

        /* PROGRAMS */

        .program-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
        }

        .program-card {
            background: var(--card);
            border: 1px solid var(--border);
            border-radius: 10px;
            overflow: hidden;
            transition: 0.3s;
        }

        .program-card:hover {
            transform: translateY(-7px);
            border-color: var(--primary);
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
            font-size: 21px;
            margin-bottom: 10px;
        }

        .program-info p {
            color: var(--muted);
            font-size: 14px;
        }

        .program-info a {
            display: inline-block;
            margin-top: 20px;
            color: var(--primary);
            font-weight: 700;
        }

        /* MEMBERSHIP */

        .membership {
            background: #151515;
        }

        .pricing-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
        }

        .price-card {
            background: var(--card);
            border: 1px solid var(--border);
            padding: 35px;
            border-radius: 10px;
            position: relative;
        }

        .price-card.featured {
            border: 2px solid var(--primary);
        }

        .popular {
            position: absolute;
            top: -15px;
            right: 20px;
            background: var(--primary);
            color: #111;
            padding: 5px 15px;
            font-size: 11px;
            font-weight: 800;
            border-radius: 20px;
        }

        .price-card h3 {
            font-size: 22px;
            margin-bottom: 10px;
        }

        .price {
            font-size: 42px;
            font-weight: 900;
            margin: 20px 0;
        }

        .price span {
            font-size: 14px;
            color: var(--muted);
        }

        .price-card ul {
            list-style: none;
            margin: 25px 0;
        }

        .price-card li {
            color: #d4d4d8;
            padding: 10px 0;
            border-bottom: 1px solid var(--border);
            font-size: 14px;
        }

        .price-card li::before {
            content: "✓ ";
            color: var(--primary);
            font-weight: 900;
        }

        .price-card .btn {
            width: 100%;
            text-align: center;
        }

        /* TRAINERS */

        .trainer-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
        }

        .trainer-card {
            background: var(--card);
            border-radius: 10px;
            overflow: hidden;
            text-align: center;
            border: 1px solid var(--border);
        }

        .trainer-card img {
            width: 100%;
            height: 300px;
            object-fit: cover;
        }

        .trainer-card h3 {
            margin-top: 20px;
            font-size: 20px;
        }

        .trainer-card p {
            color: var(--primary);
            padding: 5px 0 25px;
            font-size: 14px;
        }

        /* CTA */

        .cta {
            text-align: center;
            background:
                linear-gradient(rgba(0,0,0,0.75), rgba(0,0,0,0.85)),
                url("https://images.unsplash.com/photo-1517836357463-d25dfeac3438?auto=format&fit=crop&w=1800&q=85")
                center/cover;
        }

        .cta h2 {
            font-size: clamp(30px, 5vw, 48px);
            margin-bottom: 15px;
        }

        .cta p {
            color: #d4d4d8;
            margin-bottom: 30px;
        }

        /* FOOTER */

        footer {
            padding: 35px 0;
            text-align: center;
            border-top: 1px solid var(--border);
            color: var(--muted);
            font-size: 13px;
        }

        footer span {
            color: var(--primary);
        }

        /* MODAL */

        .modal {
            display: none;
            position: fixed;
            inset: 0;
            z-index: 200;
            background: rgba(0,0,0,0.8);
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .modal-box {
            background: #191919;
            border: 1px solid var(--border);
            padding: 35px;
            width: 100%;
            max-width: 450px;
            border-radius: 10px;
            position: relative;
        }

        .modal-box h2 {
            margin-bottom: 20px;
        }

        .modal-box input,
        .modal-box select {
            width: 100%;
            padding: 13px;
            margin-bottom: 15px;
            background: #101010;
            border: 1px solid var(--border);
            color: white;
            border-radius: 5px;
        }

        .modal-box .btn {
            width: 100%;
        }

        .close-btn {
            position: absolute;
            top: 12px;
            right: 18px;
            color: white;
            background: transparent;
            border: none;
            font-size: 25px;
        }

        /* RESPONSIVE */

        @media (max-width: 850px) {
            .nav-links {
                display: none;
                position: absolute;
                top: 70px;
                left: 0;
                width: 100%;
                background: #151515;
                padding: 25px;
                flex-direction: column;
                align-items: flex-start;
            }

            .nav-links.active {
                display: flex;
            }

            .menu-btn {
                display: block;
            }

            .program-grid,
            .pricing-grid,
            .trainer-grid {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 550px) {
            .stats {
                grid-template-columns: repeat(2, 1fr);
            }

            .program-grid,
            .pricing-grid,
            .trainer-grid {
                grid-template-columns: 1fr;
            }

            .hero {
                min-height: 550px;
            }

            section {
                padding: 65px 0;
            }

            .price-card {
                padding: 25px;
            }
        }
    </style>
</head>

<body>

    <!-- NAVBAR -->

    <header class="navbar">
        <div class="container nav-content">

            <a href="#home" class="logo">
                IRON<span>CORE</span>
            </a>

            <nav class="nav-links" id="navLinks">
                <a href="#home">Home</a>
                <a href="#programs">Programs</a>
                <a href="#membership">Membership</a>
                <a href="#trainers">Trainers</a>
                <a href="#contact">Contact</a>
            </nav>

            <button class="btn btn-primary"
                    onclick="openModal()">
                Join Now
            </button>

            <button class="menu-btn"
                    onclick="toggleMenu()">
                ☰
            </button>

        </div>
    </header>

    <!-- HERO -->

    <section class="hero" id="home">

        <div class="container">

            <div class="hero-content">

                <div class="tag">
                    YOUR FITNESS. YOUR POWER.
                </div>

                <h1>
                    BUILD YOUR<br>
                    <span>STRONGER</span><br>
                    SELF.
                </h1>

                <p>
                    Transform your body, strengthen your mind,
                    and become the best version of yourself.
                    Your fitness journey starts here.
                </p>

                <div class="hero-buttons">

                    <button class="btn btn-primary"
                            onclick="openModal()">
                        Start Your Journey
                    </button>

                    <a href="#programs"
                       class="btn btn-outline">
                        Explore Programs
                    </a>

                </div>

            </div>

        </div>

    </section>

    <!-- STATS -->

    <div class="container">

        <div class="stats">

            <div class="stat">
                <h2>2,500+</h2>
                <p>Active Members</p>
            </div>

            <div class="stat">
                <h2>15+</h2>
                <p>Expert Trainers</p>
            </div>

            <div class="stat">
                <h2>25+</h2>
                <p>Fitness Programs</p>
            </div>

            <div class="stat">
                <h2>10+</h2>
                <p>Years Experience</p>
            </div>

        </div>

    </div>

    <!-- PROGRAMS -->

    <section id="programs">

        <div class="container">

            <div class="section-heading">

                <div class="tag">OUR PROGRAMS</div>

                <h2>TRAIN WITH <span>PURPOSE</span></h2>

                <p>
                    Find the right training program for your fitness goals.
                </p>

            </div>

            <div class="program-grid">

                <div class="program-card">

                    <img
                    src="https://images.unsplash.com/photo-1583454110551-21f2fa2afe61?auto=format&fit=crop&w=900&q=80"
                    alt="Strength training">

                    <div class="program-info">

                        <h3>Strength Training</h3>

                        <p>
                            Build muscle, increase strength,
                            and improve overall performance.
                        </p>

                        <a href="#membership"
                           onclick="selectPlan('Premium')">
                            Explore Program →
                        </a>

                    </div>

                </div>

                <div class="program-card">

                    <img
                    src="https://images.unsplash.com/photo-1534438327276-14e5300c3a48?auto=format&fit=crop&w=900&q=80"
                    alt="Personal fitness training">

                    <div class="program-info">

                        <h3>Personal Training</h3>

                        <p>
                            Get personalized workouts and expert
                            guidance from our trainers.
                        </p>

                        <a href="#membership"
                           onclick="selectPlan('Premium')">
                            Explore Program →
                        </a>

                    </div>

                </div>

                <div class="program-card">

                    <img
                    src="https://images.unsplash.com/photo-1518611012118-696072aa579a?auto=format&fit=crop&w=900&q=80"
                    alt="Fitness and flexibility">

                    <div class="program-info">

                        <h3>Functional Fitness</h3>

                        <p>
                            Improve mobility, flexibility,
                            balance, and daily performance.
                        </p>

                        <a href="#membership"
                           onclick="selectPlan('Standard')">
                            Explore Program →
                        </a>

                    </div>

                </div>

            </div>

        </div>

    </section>

    <!-- MEMBERSHIP -->

    <section class="membership" id="membership">

        <div class="container">

            <div class="section-heading">

                <div class="tag">MEMBERSHIP PLANS</div>

                <h2>CHOOSE YOUR <span>PLAN</span></h2>

                <p>
                    Flexible memberships designed for your fitness journey.
                </p>

            </div>

            <div class="pricing-grid">

                <div class="price-card">

                    <h3>Basic</h3>

                    <p>For fitness beginners</p>

                    <div class="price">
                        ₹999 <span>/ month</span>
                    </div>

                    <ul>
                        <li>Gym Access</li>
                        <li>Basic Workout Plans</li>
                        <li>Locker Access</li>
                        <li>Fitness Assessment</li>
                    </ul>

                    <button class="btn btn-outline"
                            onclick="selectPlan('Basic')">
                        Choose Basic
                    </button>

                </div>

                <div class="price-card featured">

                    <div class="popular">MOST POPULAR</div>

                    <h3>Premium</h3>

                    <p>For serious fitness goals</p>

                    <div class="price">
                        ₹1,999 <span>/ month</span>
                    </div>

                    <ul>
                        <li>Unlimited Gym Access</li>
                        <li>Personal Training Sessions</li>
                        <li>Advanced Workout Plans</li>
                        <li>Nutrition Guidance</li>
                    </ul>

                    <button class="btn btn-primary"
                            onclick="selectPlan('Premium')">
                        Choose Premium
                    </button>

                </div>

                <div class="price-card">

                    <h3>Elite</h3>

                    <p>For the ultimate experience</p>

                    <div class="price">
                        ₹2,999 <span>/ month</span>
                    </div>

                    <ul>
                        <li>All Premium Benefits</li>
                        <li>Dedicated Personal Trainer</li>
                        <li>Customized Nutrition Plan</li>
                        <li>Priority Booking</li>
                    </ul>

                    <button class="btn btn-outline"
                            onclick="selectPlan('Elite')">
                        Choose Elite
                    </button>

                </div>

            </div>

        </div>

    </section>

    <!-- TRAINERS -->

    <section id="trainers">

        <div class="container">

            <div class="section-heading">

                <div class="tag">OUR EXPERTS</div>

                <h2>MEET OUR <span>TRAINERS</span></h2>

                <p>
                    Train with professionals who are committed to your success.
                </p>

            </div>

            <div class="trainer-grid">

                <div class="trainer-card">

                    <img
                    src="https://images.unsplash.com/photo-1567013127542-490d757e51fc?auto=format&fit=crop&w=900&q=80"
                    alt="Strength coach">

                    <h3>Alex Johnson</h3>

                    <p>Strength & Conditioning</p>

                </div>

                <div class="trainer-card">

                    <img
                    src="https://images.unsplash.com/photo-1534367610401-9f5ed68180aa?auto=format&fit=crop&w=900&q=80"
                    alt="Fitness coach">

                    <h3>Sarah Williams</h3>

                    <p>Personal Fitness Trainer</p>

                </div>

                <div class="trainer-card">

                    <img
                    src="https://images.unsplash.com/photo-1583454110551-21f2fa2afe61?auto=format&fit=crop&w=900&q=80"
                    alt="Fitness specialist">

                    <h3>Michael Davis</h3>

                    <p>Functional Fitness</p>

                </div>

            </div>

        </div>

    </section>

    <!-- CTA -->

    <section class="cta" id="contact">

        <div class="container">

            <div class="tag">YOUR TRANSFORMATION STARTS NOW</div>

            <h2>READY TO GET STRONGER?</h2>

            <p>
                Take the first step toward a healthier and stronger you.
            </p>

            <button class="btn btn-primary"
                    onclick="openModal()">
                Become a Member
            </button>

        </div>

    </section>

    <!-- FOOTER -->

    <footer>

        <div class="container">

            <p>
                © 2026 IRON<span>CORE</span> Fitness Club.
                Designed for your fitness journey.
            </p>

        </div>

    </footer>

    <!-- REGISTRATION MODAL -->

    <div class="modal" id="registrationModal">

        <div class="modal-box">

            <button class="close-btn"
                    onclick="closeModal()">
                &times;
            </button>

            <h2>Join IRONCORE</h2>

            <form id="registrationForm">

                <input type="text"
                       id="memberName"
                       placeholder="Full Name"
                       required>

                <input type="email"
                       id="memberEmail"
                       placeholder="Email Address"
                       required>

                <input type="tel"
                       id="memberPhone"
                       placeholder="Phone Number"
                       required>

                <select id="memberPlan" required>

                    <option value="">Select Membership Plan</option>

                    <option value="Basic">Basic - ₹999</option>

                    <option value="Premium">Premium - ₹1999</option>

                    <option value="Elite">Elite - ₹2999</option>

                </select>

                <button type="submit"
                        class="btn btn-primary">
                    Submit Registration
                </button>

            </form>

        </div>

    </div>

    <!-- JAVASCRIPT -->

    <script>

        function openModal() {
            document.getElementById("registrationModal")
                    .style.display = "flex";
        }

        function closeModal() {
            document.getElementById("registrationModal")
                    .style.display = "none";
        }

        function selectPlan(plan) {

            document.getElementById("memberPlan").value = plan;

            openModal();
        }

        function toggleMenu() {

            document.getElementById("navLinks")
                    .classList.toggle("active");
        }

        document.getElementById("registrationForm")
                .addEventListener("submit", function(event) {

            event.preventDefault();

            const name =
                document.getElementById("memberName").value;

            const plan =
                document.getElementById("memberPlan").value;

            alert(
                "Welcome " + name +
                "! Your " + plan +
                " membership selection is complete."
            );

            closeModal();

            this.reset();
        });

        window.addEventListener("click", function(event) {

            const modal =
                document.getElementById("registrationModal");

            if (event.target === modal) {
                closeModal();
            }

        });

    </script>

</body>
</html>
