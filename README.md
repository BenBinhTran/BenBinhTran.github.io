# Professional CV Website Portfolio

A modern, interactive CV website featuring multiple specialized resume pages, each tailored for different career paths. Built with premium design aesthetics including animated backgrounds, glassmorphism effects, and smooth transitions.

## 🌐 Live Demos

- **Home:** https://bentran.vercel.app
- **Planning & Engineering (P&E) Agent:** https://bentran.vercel.app/PE
- **Technical Support Engineer (TSE):** https://bentran.vercel.app/TSE
- **RF & Microwave Engineer (ECEN):** https://bentran.vercel.app/ECEN
- **Customer Service Specialist (CSS):** https://bentran.vercel.app/CSS
- **TEFL English Teacher:** https://bentran.vercel.app/TEFL
- **Credentials:** https://bentran.vercel.app/credentials

## 📄 CV Pages Overview

### 1. PE.html - Planning & Engineering Agent
**Focus:** First/Last Mile Logistics, SLA/KPI Management, Process Improvement

**Highlights:**
- Operations-focused with a strong background in RPI creation and monitoring.
- Skills in analytics (Power Query, Power BI, SQL) and automation (Power Automate).
- Bilingual (English/Vietnamese) with extensive cross-functional coordination experience.

**Live URL:** `/PE`
**PDF:** `BenBenTran_CV_PE.pdf`

---

### 2. ECEN.html - RF & Microwave Engineer
**Focus:** Electromagnetics, RF/Microwave Systems

**Highlights:**
- Deep expertise in antenna theory, computational modeling, and SATCOM.
- 4 core competency categories: RF & Satellite Systems, Engineering Software, Quality & Manufacturing, and Operations.

**Live URL:** `/ECEN`
**PDF:** `BenBinhTran_CV_ECEN.pdf`

---

### 3. TSE.html - Technical Support Engineer
**Focus:** Web Development, WordPress, Full-stack Solutions

**Highlights:**

**Live URL:** `/TSE`
**PDF:** `BenBinhTran_CV_TSE.pdf`

---

### 4. CSS.html - Customer Service Specialist
**Focus:** ServiceNow, IT Support, ITSM

**Highlights:**
- ServiceNow Support Specialist (Practitioner Level) training
- IT Service Management expertise
- 20 years US residency with corporate standards understanding

**Live URL:** `/CSS`
**PDF:** `BenBinhTran_CV_CSS.pdf`

---

### 5. TEFL.html - TEFL English Teacher
**Focus:** ESL Instruction, Cross-Cultural Communication

**Highlights:**
- TEFL certified with fluent American English proficiency from 20+ years in the US.
- Extensive experience in university-level teaching, mentoring, and curriculum development.

**Live URL:** `/TEFL`
**PDF:** `TR1758107923-certificate.pdf`

## ✨ Design Features

All pages share a premium, modern design with:

- 🎨 **Animated Gradient Backgrounds** - Floating particles and dynamic color shifts
- 💎 **Glassmorphism Effects** - Semi-transparent cards with backdrop blur
- ⚡ **Smooth Transitions** - Hover effects and scroll animations
- 📱 **Fully Responsive** - Mobile-first design approach
- 🎯 **Interactive Elements** - Pulsing timeline markers and animated sections
- 🎨 **Professional Color Scheme** - Unique gradients for each CV theme
- 📥 **PDF Download** - Prominent download button for each resume version
- 🚀 **SEO Optimized** - Meta tags, Open Graph, proper semantic HTML

## 🛠️ Technologies

- **HTML5** - Semantic markup
- **CSS3** - Custom properties, flexbox, grid, animations, glassmorphism
- **Vanilla JavaScript** - Intersection Observer API, DOM manipulation, particle system
- **Google Fonts** - Inter and JetBrains Mono
- **No Framework Dependencies** - Pure, lightweight code

## 📂 Project Structure

```
BenTran_CV/
├── TSE.html              # Technical Support Engineer CV
├── ECEN.html             # RF & Microwave Engineer CV
├── CSS.html              # Customer Service Specialist CV
├── index.html            # Landing page
├── vercel.json           # Vercel deployment configuration
├── Resumes/              # PDF files directory
│   ├── BenBinhTran_CV_TSE.pdf
│   ├── BenBinhTran_CV_ECEN.pdf
│   └── BenBinhTran_CV_CSS.pdf
├── README.md             # This file
└── Update290126.md       # Detailed update report
```

## 🚀 Deployment

### Prerequisites
Ensure all PDF files are in the `Resumes/` folder with correct names.

### Deploy to Vercel

1. **Connect to Vercel:**
   ```bash
   vercel
   ```

2. **Or push to GitHub:**
   ```bash
   git add .
   git commit -m "Update CV pages"
   git push
   ```

3. **Vercel will automatically deploy** if connected to your repository.

### Routing Configuration

The `vercel.json` file configures clean URLs:

```json
{
  "rewrites": [
    { "source": "/TSE", "destination": "/TSE.html" },
    { "source": "/ECEN", "destination": "/ECEN.html" },
    { "source": "/CSS", "destination": "/CSS.html" }
  ]
}
```

## 📋 Features by Section

### All Pages Include:
- **Header** - Name, title, contact information with links
- **Download Button** - PDF resume download
- **Summary & Objective** - Tailored for each position
- **Core Competencies** - Role-specific skills and expertise
- **Professional Experience** - Detailed work history with bullet points
- **Research & Engineering Projects** - SATCOM and research experience
- **Education** - Degrees with specializations (ECEN & CSS)
- **Honors & Recognition** - Awards and scholarships
- **Publications** - IEEE publications
- **Activities & Leadership** - Volunteer and leadership roles

## 🎯 Key Differences Between Pages

| Feature | TSE | ECEN | CSS |
|---------|-----|------|-----|
| **Core Competencies** | 2 categories | 4 categories | 6 categories (3×2 grid) |
| **Education Details** | Standard | PhD/MS specializations | PhD/MS specializations + BS details |
| **AutoZone Work** | 5 bullets | 6 bullets (adds ZNET) | 5 bullets |
| **Summary Focus** | Web Dev | RF Systems | ServiceNow/ITSM |

## 👨‍💻 Author

**Bình (Ben) Trần**
- 📧 Email: TranBinhBen@gmail.com, bentran.jobs@gmail.com
- 🌐 Website: https://bentran.vercel.app
- 🚀 Portfolio: https://phoenixflix.vercel.app
- 💻 GitHub: https://github.com/PhoenixWeaver
- 📍 Location: Ho Chi Minh City, Vietnam

## 📝 License

This project is personal portfolio material. Design and code structure can be used as reference for educational purposes.

## 🔄 Recent Updates

**January 29, 2026:**
- ✅ Created three specialized CV pages (TSE, ECEN, CSS)
- ✅ Updated all meta tags and SEO optimization
- ✅ Configured PDF download links
- ✅ Added Vercel routing configuration
- ✅ Made Core Competencies symmetric (3×2 grid for CSS)
- ✅ Added education specializations
- ✅ Updated README with comprehensive documentation

For detailed update information, see [Update290126.md](./Update290126.md)

---

**Built with ❤️ using pure HTML, CSS, and JavaScript**
