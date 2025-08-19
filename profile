<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>森興産株式会社 - LOVE THE EARTH | 留学生支援事業</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: #333;
            background: #ffffff;
        }

        .hero {
            background: linear-gradient(135deg, #ffffff 0%, #f8f9fa 100%);
            color: #333;
            min-height: 100vh;
            display: flex;
            align-items: center;
            position: relative;
            border-bottom: 2px solid #e9ecef;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1000 1000"><circle cx="200" cy="200" r="2" fill="rgba(52,58,64,0.03)"/><circle cx="800" cy="300" r="1.5" fill="rgba(52,58,64,0.03)"/><circle cx="400" cy="600" r="1.5" fill="rgba(52,58,64,0.03)"/><circle cx="900" cy="700" r="2" fill="rgba(52,58,64,0.03)"/><circle cx="100" cy="800" r="1.5" fill="rgba(52,58,64,0.03)"/></svg>');
            animation: float 30s ease-in-out infinite;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0) rotate(0deg); }
            50% { transform: translateY(-10px) rotate(180deg); }
        }

        .hero-content {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 2rem;
            text-align: center;
            z-index: 1;
            position: relative;
        }

        .logo {
            font-size: 3rem;
            font-weight: 300;
            margin-bottom: 1rem;
            color: #343a40;
            letter-spacing: 2px;
            animation: slideInDown 1s ease-out;
        }

        @keyframes slideInDown {
            from { opacity: 0; transform: translateY(-30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .tagline {
            font-size: 1.5rem;
            margin-bottom: 2rem;
            animation: slideInUp 1s ease-out 0.3s both;
            color: #495057;
            font-weight: 300;
        }

        @keyframes slideInUp {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .love-earth {
            font-size: 3.5rem;
            font-weight: 700;
            color: #2c5aa0;
            margin: 2rem 0;
            animation: fadeIn 1s ease-out 0.6s both;
            letter-spacing: 3px;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        .subtitle {
            font-size: 1.1rem;
            color: #6c757d;
            margin-bottom: 3rem;
            animation: fadeIn 1s ease-out 0.9s both;
            max-width: 800px;
            margin-left: auto;
            margin-right: auto;
            line-height: 1.8;
        }

        .section {
            padding: 5rem 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }

        .section-alt {
            background: #f8f9fa;
            border-top: 1px solid #dee2e6;
            border-bottom: 1px solid #dee2e6;
        }

        .section-title {
            font-size: 2.5rem;
            text-align: center;
            margin-bottom: 3rem;
            color: #2c5aa0;
            position: relative;
            font-weight: 300;
            letter-spacing: 1px;
        }

        .section-title::after {
            content: '';
            position: absolute;
            bottom: -15px;
            left: 50%;
            transform: translateX(-50%);
            width: 60px;
            height: 2px;
            background: #2c5aa0;
        }

        .mission-section {
            background: #ffffff;
            text-align: center;
            border-top: 3px solid #2c5aa0;
        }

        .mission-quote {
            font-size: 1.3rem;
            font-style: italic;
            margin: 2rem auto;
            padding: 3rem;
            background: #ffffff;
            border-radius: 8px;
            border: 2px solid #e9ecef;
            box-shadow: 0 8px 25px rgba(0,0,0,0.08);
            max-width: 900px;
            position: relative;
            line-height: 1.8;
        }

        .mission-quote::before {
            content: '"';
            position: absolute;
            top: -10px;
            left: 30px;
            font-size: 4rem;
            color: #2c5aa0;
            font-weight: bold;
        }

        .mission-quote::after {
            content: '"';
            position: absolute;
            bottom: -20px;
            right: 30px;
            font-size: 4rem;
            color: #2c5aa0;
            font-weight: bold;
        }

        .wasabi-section {
            background: #f8f9fa;
        }

        .wasabi-card {
            background: #ffffff;
            padding: 3rem;
            border-radius: 12px;
            border: 1px solid #dee2e6;
            margin: 2rem 0;
            box-shadow: 0 8px 25px rgba(0,0,0,0.08);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .wasabi-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 35px rgba(0,0,0,0.12);
        }

        .wasabi-meaning {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            margin: 3rem 0;
        }

        .meaning-card {
            background: #ffffff;
            padding: 2.5rem;
            border-radius: 8px;
            text-align: center;
            border: 1px solid #dee2e6;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .meaning-card:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
        }

        .meaning-letter {
            font-size: 3rem;
            font-weight: bold;
            color: #2c5aa0;
            margin-bottom: 1rem;
        }

        .app-section {
            background: #ffffff;
        }

        .patent-section {
            background: #f8f9fa;
        }

        .patent-highlight {
            background: #ffffff;
            padding: 3rem;
            border-radius: 12px;
            margin: 2rem 0;
            text-align: center;
            box-shadow: 0 8px 25px rgba(0,0,0,0.08);
            border: 2px solid #2c5aa0;
            position: relative;
        }

        .patent-highlight::before {
            content: '特許取得';
            position: absolute;
            top: -12px;
            left: 30px;
            background: #2c5aa0;
            color: white;
            padding: 5px 15px;
            border-radius: 20px;
            font-size: 0.9rem;
            font-weight: bold;
        }

        .patent-number {
            font-size: 1.8rem;
            font-weight: bold;
            color: #2c5aa0;
            margin: 1rem 0;
        }

        .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin: 3rem 0;
        }

        .service-card {
            background: white;
            padding: 2.5rem;
            border-radius: 8px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.08);
            border: 1px solid #e9ecef;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            position: relative;
        }

        .service-card:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.12);
        }

        .service-number {
            position: absolute;
            top: -15px;
            left: 30px;
            background: #2c5aa0;
            color: white;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
            font-size: 1.2rem;
        }

        .stats-section {
            background: #2c5aa0;
            color: white;
            text-align: center;
        }

        .stats-section .section-title {
            color: white;
        }

        .stats-section .section-title::after {
            background: white;
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 2rem;
            margin: 3rem 0;
        }

        .stat-card {
            background: rgba(255,255,255,0.1);
            padding: 2.5rem;
            border-radius: 8px;
            border: 1px solid rgba(255,255,255,0.2);
            backdrop-filter: blur(10px);
        }

        .stat-number {
            font-size: 3rem;
            font-weight: bold;
            color: white;
            margin-bottom: 0.5rem;
        }

        .company-info {
            background: #f8f9fa;
            padding: 5rem 2rem;
        }

        .info-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }

        .info-card {
            background: white;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 3px 10px rgba(0,0,0,0.08);
            border: 1px solid #e9ecef;
        }

        .info-title {
            color: #2c5aa0;
            font-weight: 600;
            margin-bottom: 0.8rem;
            font-size: 1.1rem;
            border-bottom: 1px solid #e9ecef;
            padding-bottom: 0.5rem;
        }

        .cta-section {
            background: #ffffff;
            color: #333;
            text-align: center;
            padding: 5rem 2rem;
            border-top: 3px solid #2c5aa0;
        }

        .cta-button {
            display: inline-block;
            background: #2c5aa0;
            color: white;
            padding: 1rem 3rem;
            border-radius: 6px;
            text-decoration: none;
            font-weight: 600;
            font-size: 1.1rem;
            margin: 2rem;
            transition: transform 0.3s ease, box-shadow 0.3s ease, background-color 0.3s ease;
            border: 2px solid #2c5aa0;
        }

        .cta-button:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(44,90,160,0.3);
            background: #1a3f73;
        }

        .scroll-indicator {
            position: absolute;
            bottom: 2rem;
            left: 50%;
            transform: translateX(-50%);
            animation: bounce 2s infinite;
            opacity: 0.7;
        }

        @keyframes bounce {
            0%, 20%, 50%, 80%, 100% { transform: translateX(-50%) translateY(0); }
            40% { transform: translateX(-50%) translateY(-8px); }
            60% { transform: translateX(-50%) translateY(-4px); }
        }

        .app-highlight {
            background: #ffffff;
            padding: 3rem;
            border-radius: 12px;
            color: #333;
            border: 1px solid #dee2e6;
            box-shadow: 0 8px 25px rgba(0,0,0,0.08);
        }

        .award-badge {
            display: inline-block;
            background: #2c5aa0;
            color: white;
            padding: 0.5rem 1rem;
            border-radius: 20px;
            font-size: 0.9rem;
            font-weight: 600;
            margin: 0.5rem;
        }

        @media (max-width: 768px) {
            .hero-content { padding: 0 1rem; }
            .logo { font-size: 2.2rem; }
            .love-earth { font-size: 2.5rem; }
            .tagline { font-size: 1.2rem; }
            .section { padding: 3rem 1rem; }
            .section-title { font-size: 2rem; }
            .mission-quote { padding: 2rem; margin: 1rem; }
        }

        /* フォーマルなアニメーション */
        .fade-in-up {
            opacity: 0;
            transform: translateY(30px);
            transition: opacity 0.6s ease, transform 0.6s ease;
        }

        .fade-in-up.visible {
            opacity: 1;
            transform: translateY(0);
        }
    </style>
</head>
<body>
    <section class="hero">
        <div class="hero-content">
            <div class="logo">森興産株式会社</div>
            <div class="tagline">世界と共に未来を創る</div>
            <div class="love-earth">LOVE THE EARTH</div>
            <div class="subtitle">
                For the Next Generation ──次世代のために、今できることを。<br>
                私たち森興産株式会社は、グローバル社会における人材の架け橋として、<br>
                外国人材と日本企業の"共に働く未来"を支えています。
            </div>
        </div>
        <div class="scroll-indicator">
            <svg width="24" height="40" viewBox="0 0 24 40">
                <rect x="7" y="7" width="10" height="26" rx="5" fill="none" stroke="#6c757d" stroke-width="1.5"/>
                <circle cx="12" cy="15" r="1.5" fill="#6c757d">
                    <animate attributeName="cy" values="15;22;15" dur="2s" repeatCount="indefinite"/>
                </circle>
            </svg>
        </div>
    </section>

    <section class="mission-section">
        <div class="section">
            <h2 class="section-title">代表メッセージ</h2>
            <div class="mission-quote fade-in-up">
                自分たちが死んだ後、次の世代に何を残せるでしょう？<br>
                先に死んでしまう私たちは、次の世代に何が残せるのか、<br>
                そう考えたときに『想い』しかつなぎようがないことを感じました。
            </div>
            <p style="font-size: 1.1rem; color: #6c757d; line-height: 1.8; max-width: 800px; margin: 0 auto;">
                万国共通で同意できる『想い』を残すために、人と物とお金をどう扱っていくのか。
                その方向付けになる理念を考えることに時間とパワーを最もかけました。
            </p>
            <p style="margin-top: 2rem; font-weight: 600; color: #2c5aa0;">
                森興産株式会社 代表取締役 森 隼人
            </p>
        </div>
    </section>

    <section class="wasabi-section section-alt">
        <div class="section">
            <h2 class="section-title">WA.SA.Bi. プラットフォーム</h2>
            <div class="wasabi-card fade-in-up">
                <h3 style="font-size: 1.8rem; margin-bottom: 1.5rem; color: #2c5aa0;">
                    日本で生活する外国人留学生のための多言語情報共有プラットフォーム
                </h3>
                <p style="font-size: 1.1rem; line-height: 1.8; color: #495057;">
                    「留学生の、留学生による、留学生のための」サイトとして、国籍や人種を問わず、
                    日本での生活をより良く、幸せにすることを目的としています。
                </p>
            </div>
            
            <div class="wasabi-meaning">
                <div class="meaning-card fade-in-up">
                    <div class="meaning-letter">WA</div>
                    <div style="color: #6c757d;">和・ワクワク・笑い</div>
                </div>
                <div class="meaning-card fade-in-up">
                    <div class="meaning-letter">SA</div>
                    <div style="color: #6c757d;">サポート・探す・最高</div>
                </div>
                <div class="meaning-card fade-in-up">
                    <div class="meaning-letter">Bi</div>
                    <div style="color: #6c757d;">美・ビジネス・遊び</div>
                </div>
            </div>
        </div>
    </section>

    <section class="stats-section">
        <div class="section">
            <h2 class="section-title">実績数字</h2>
            <div class="stats-grid">
                <div class="stat-card fade-in-up">
                    <div class="stat-number">130+</div>
                    <div>対象国数</div>
                </div>
                <div class="stat-card fade-in-up">
                    <div class="stat-number">19,000+</div>
                    <div>登録ユーザー数</div>
                </div>
                <div class="stat-card fade-in-up">
                    <div class="stat-number">10</div>
                    <div>対応言語数</div>
                </div>
                <div class="stat-card fade-in-up">
                    <div class="stat-number">28</div>
                    <div>時間管理アプリ</div>
                </div>
            </div>
        </div>
    </section>

    <section class="app-section">
        <div class="section">
            <h2 class="section-title">革新的アプリ「28」</h2>
            <div class="app-highlight fade-in-up">
                <h3 style="font-size: 1.6rem; color: #2c5aa0; margin-bottom: 1.5rem;">
                    アルバイト時間管理アプリ「28 – Twenty eight – シリーズ」
                </h3>
                <p style="font-size: 1.1rem; line-height: 1.8; color: #495057;">
                    週28時間制限を守るための革新的なアプリケーション。
                    ビジネス特許の仕組みを一部実装し、適正・適法に日本人と外国人が共生し合える社会づくりを前提に、
                    外国人雇用・管理のDX化（デジタルトランスフォーメーション）の実現を目的としています。
                </p>
            </div>
        </div>
    </section>

    <section class="patent-section section-alt">
        <div class="section">
            <h2 class="section-title">特許取得実績</h2>
            <div class="patent-highlight fade-in-up">
                <h3 style="color: #2c5aa0; margin-bottom: 1rem; font-size: 1.4rem;">
                    外国人の信用スコアリングに関するビジネスモデル特許
                </h3>
                <div class="patent-number">特許第7450961号</div>
                <p style="margin: 1rem 0; font-weight: 600;">2024年3月8日取得</p>
                <p style="font-size: 1.1rem; line-height: 1.7; color: #495057;">
                    留学生など外国人の信用力を補完し日本での生活環境を向上させる画期的なシステム。
                    留学生の「信用」を「見える化」し、その「信用」をあらゆるサービスに活用できるようにします。
                </p>
            </div>
        </div>
    </section>

    <section class="section">
        <h2 class="section-title">事業内容</h2>
        <div class="services-grid">
            <div class="service-card fade-in-up">
                <div class="service-number">1</div>
                <h3 style="color: #2c5aa0; margin: 1.5rem 0 1rem; font-size: 1.3rem;">
                    外国人向け情報メディア「WA.SA.Bi.®」
                </h3>
                <p style="color: #6c757d; line-height: 1.7;">
                    130カ国以上から19,000人以上が登録する、日本での生活・就職・留学情報を多言語で発信するポータルサイト。
                    外国人が「日本で暮らす・学ぶ・働く」ためのリアルな情報を提供しています。
                </p>
            </div>
            <div class="service-card fade-in-up">
                <div class="service-number">2</div>
                <h3 style="color: #2c5aa0; margin: 1.5rem 0 1rem; font-size: 1.3rem;">
                    外国人材の採用・定着支援「トモナウ」
                </h3>
                <p style="color: #6c757d; line-height: 1.7;">
                    企業と外国人材の間に立ち、採用から定着までを伴走型で支援。
                    中小企業でも安心して外国人材を受け入れられるよう、制度設計から研修、フォローアップまでを一貫して提供。
                </p>
            </div>
            <div class="service-card fade-in-up">
                <div class="service-number">3</div>
                <h3 style="color: #2c5aa0; margin: 1.5rem 0 1rem; font-size: 1.3rem;">
                    教育・研修事業
                </h3>
                <p style="color: #6c757d; line-height: 1.7;">
                    外国人向けのビジネスマナー研修、日本語教育、キャリア支援プログラムを提供。
                    また、日本人社員向けの多文化理解研修も実施し、職場の相互理解を促進。
                </p>
            </div>
            <div class="service-card fade-in-up">
                <div class="service-number">4</div>
                <h3 style="color: #2c5aa0; margin: 1.5rem 0 1rem; font-size: 1.3rem;">
                    イベント・セミナー企画
                </h3>
                <p style="color: #6c757d; line-height: 1.7;">
                    外国人向けの就職フェア、企業説明会、キャリアセミナーを産官学金と連携して開催。
                    企業と外国人材の出会いの場を創出しています。
                </p>
            </div>
        </div>
    </section>

    <section class="company-info section-alt">
        <div class="section">
            <h2 class="section-title">会社情報</h2>
            <div class="info-grid">
                <div class="info-card fade-in-up">
                    <div class="info-title">会社名</div>
                    <div>森興産株式会社</div>
                </div>
                <div class="info-card fade-in-up">
                    <div class="info-title">設立</div>
                    <div>1987年4月28日</div>
                </div>
                <div class="info-card fade-in-up">
                    <div class="info-title">本社所在地</div>
                    <div>大阪市中央区南船場1-4-11 モリビル4階</div>
                </div>
                <div class="info-card fade-in-up">
                    <div class="info-title">資本金</div>
                    <div>3,000万円</div>
                </div>
                <div class="info-card fade-in-up">
                    <div class="info-title">代表取締役</div>
                    <div>森 隼人</div>
                </div>
                <div class="info-card fade-in-up">
                    <div class="info-title">認定・実績</div>
                    <div>
                        <span class="award-badge">経済産業省「地域未来牽引企業」選定</span><br>
                        <span class="award-badge">BJT正規販売代理店（21カ国）</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="cta-section">
        <div class="section">
            <h2 style="font-size: 2.5rem; margin-bottom: 1.5rem; color: #2c5aa0; font-weight: 300;">
                For the Next Generation
            </h2>
            <p style="font-size: 1.3rem; margin-bottom: 3rem; color: #6c757d; line-height: 1.8;">
                次世代のために、今できることを。<br>
                私たちと一緒に、グローバル社会の未来を創りませんか？
            </p>
            <a href="https://morikosan.co.jp" class="cta-button">公式サイトを見る</a>
        </div>
    </section>

    <script>
        // スクロール時のフェードインアニメーション
        const observerOptions = {
            threshold: 0.1,
            rootMargin: '0px 0px -50px 0px'
        };

        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.classList.add('visible');
                }
            });
        }, observerOptions);

        document.querySelectorAll('.fade-in-up').forEach(el => {
            observer.observe(el);
        });

        // スムーズスクロール
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    target.scrollIntoView({
                        behavior: 'smooth'
                    });
                }
            });
        });

        // より洗練されたホバー効果
        document.querySelectorAll('.service-card, .info-card, .meaning-card, .wasabi-card').forEach(card => {
            card.addEventListener('mouseenter', function() {
                this.style.transform = 'translateY(-3px)';
            });
            card.addEventListener('mouseleave', function() {
                this.style.transform = 'translateY(0)';
            });
        });
    </script>
</body>
</html>
