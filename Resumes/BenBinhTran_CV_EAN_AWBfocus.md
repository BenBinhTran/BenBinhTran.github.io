<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="Ben Tran - Engineer, Air Network and Partner Management CV">
  <title>Ben Tran — Engineer, Air Network &amp; Partner Management CV</title>

  <style>
    :root {
      --cv-text: #111111;
      --cv-muted: #555555;
      --cv-heading: #0a58a8;
      --cv-border: #dddddd;
      --cv-chip-bg: #f2f6fb;
      --cv-chip-text: #111133;
      --cv-font-body: Arial, Helvetica, sans-serif;
      --cv-line-height: 1.5;
      --cv-container-width: 794px;
      --cv-container-padding: 18px;
      --cv-column-gap: 18px;
      --cv-sidebar-width: 240px;
      --cv-section-spacing: 12px;
      --cv-body-size: 11.5px;
      --cv-sidebar-size: 10.5px;
      --cv-meta-size: 11px;
      --cv-role-size: 12px;
      --cv-heading-size: 13px;
    }

    * {
      box-sizing: border-box;
    }

    @page {
      size: A4;
      margin: 8mm;
    }

    body {
      margin: 0;
      color: var(--cv-text);
      background: #ffffff;
      font-family: var(--cv-font-body);
      font-size: var(--cv-body-size);
      line-height: var(--cv-line-height);
    }

    .container {
      width: 100%;
      max-width: var(--cv-container-width);
      margin: 12px auto;
      padding: var(--cv-container-padding);
    }

    .document-header {
      display: flex;
      align-items: flex-start;
      justify-content: space-between;
      gap: var(--cv-column-gap);
      padding-bottom: 10px;
      border-bottom: 1px solid var(--cv-border);
    }

    .identity {
      min-width: 0;
    }

    .name {
      margin: 0;
      font-size: 20px;
      font-weight: 700;
    }

    .title {
      margin-top: 4px;
      color: var(--cv-muted);
      font-size: 13px;
      font-weight: 600;
    }

    .tagline {
      margin-top: 2px;
      color: var(--cv-muted);
      font-size: var(--cv-meta-size);
    }

    .contact {
      flex: 0 0 255px;
      color: var(--cv-muted);
      font-size: var(--cv-meta-size);
      font-style: normal;
      line-height: 1.45;
      text-align: right;
    }

    .contact-grid {
      display: grid;
      grid-template-columns: repeat(2, minmax(0, 1fr));
      gap: 0 12px;
      text-align: right;
    }

    .contact-grid span {
      display: block;
      white-space: nowrap;
    }

    a {
      color: #0a66c2;
      text-decoration: none;
    }

    a:hover,
    a:focus-visible {
      text-decoration: underline;
    }

    .summary {
      margin-top: var(--cv-section-spacing);
    }

    section {
      margin-top: var(--cv-section-spacing);
    }

    h2 {
      margin: 6px 0;
      color: var(--cv-heading);
      font-size: var(--cv-heading-size);
      line-height: 1.25;
    }

    p {
      margin: 6px 0;
    }

    .muted {
      color: var(--cv-muted);
      font-size: var(--cv-meta-size);
    }

    .small {
      font-size: var(--cv-sidebar-size);
    }

    ul {
      margin: 6px 0 6px 18px;
      padding: 0;
    }

    li {
      margin: 4px 0;
      line-height: 1.28;
    }

    .two-col {
      display: flex;
      align-items: flex-start;
      gap: var(--cv-column-gap);
      margin-top: 2px;
    }

    .col-main {
      min-width: 0;
      flex: 1 1 auto;
    }

    .col-side {
      width: var(--cv-sidebar-width);
      flex: 0 0 var(--cv-sidebar-width);
    }

    .role-block,
    .sidebar-block,
    .project-block,
    .publication-block {
      page-break-inside: avoid;
      break-inside: avoid;
    }

    .role-block {
      margin-bottom: 8px;
    }

    .role {
      color: var(--cv-text);
      font-size: var(--cv-role-size);
      font-weight: 700;
      line-height: 1.3;
    }

    .meta {
      margin: 2px 0 5px;
      color: var(--cv-muted);
      font-size: var(--cv-meta-size);
      line-height: 1.35;
    }

    .role-block ul {
      margin-top: 4px;
    }

    .sidebar-block {
      margin-bottom: 10px;
    }

    .sidebar-block h2 {
      margin-top: 0;
    }

    .sidebar-list {
      margin-left: 16px;
    }

    .skills {
      display: flex;
      flex-wrap: wrap;
      gap: 5px;
    }

    .skill {
      padding: 3px 6px;
      border: 1px solid #d9e2ee;
      border-radius: 3px;
      color: var(--cv-chip-text);
      background: var(--cv-chip-bg);
      font-size: var(--cv-sidebar-size);
      line-height: 1.25;
    }

    .side-copy {
      color: var(--cv-muted);
      font-size: var(--cv-sidebar-size);
      line-height: 1.35;
    }

    .highlights {
      margin-top: 12px;
    }

    .highlights-grid {
      display: grid;
      grid-template-columns: repeat(3, minmax(0, 1fr));
      gap: 10px;
    }

    .highlight {
      padding: 8px;
      border: 1px solid var(--cv-border);
      border-radius: 4px;
      background: #fbfdff;
      page-break-inside: avoid;
      break-inside: avoid;
    }

    .highlight h3 {
      margin: 0 0 3px;
      color: var(--cv-heading);
      font-size: 11px;
      line-height: 1.2;
    }

    .highlight p {
      margin: 0;
      color: var(--cv-muted);
      font-size: var(--cv-meta-size);
      line-height: 1.3;
    }

    .projects {
      margin-top: 12px;
    }

    .project-block {
      margin-bottom: 8px;
    }

    .project-block ul {
      margin-top: 4px;
    }

    .project-links {
      font-size: var(--cv-meta-size);
    }

    .project-links a {
      color: #0a66c2;
      font-style: italic;
    }

    .publication-block {
      margin-top: 10px;
    }

    .publication-block ul {
      margin-bottom: 0;
    }

    .role-alignment-intro {
      margin: 0 0 7px;
      color: var(--cv-muted);
      font-size: var(--cv-meta-size);
      line-height: 1.35;
    }

    .transition-plan-link {
      margin-top: 6px;
      color: var(--cv-muted);
      font-size: var(--cv-meta-size);
    }

    .no-print {
      margin-bottom: 10px;
      color: var(--cv-muted);
      font-size: 11px;
      text-align: center;
    }

    @media screen and (max-width: 760px) {
      .container {
        margin: 0 auto;
        padding: 16px;
      }

      .document-header,
      .two-col {
        flex-direction: column;
      }

      .contact {
        flex-basis: auto;
        width: 100%;
        text-align: left;
      }

      .col-side {
        width: 100%;
        flex-basis: auto;
      }
    }

    @media print {
      body {
        -webkit-print-color-adjust: exact;
        print-color-adjust: exact;
        font-size: 9px;
        line-height: 1.15;
      }

      .no-print {
        display: none;
      }

      .container {
        max-width: none;
        margin: 0;
        padding: 0;
      }

      a {
        color: var(--cv-text);
      }

      a[style*="color:#0a66c2"] {
        color: #0a66c2 !important;
      }

      .project-links a {
        color: #0a66c2 !important;
        font-style: italic;
      }

      .document-header {
        gap: 14px;
        padding-bottom: 6px;
        break-inside: avoid;
      }

      .name {
        font-size: 17px;
      }

      .title {
        margin-top: 2px;
        font-size: 10.5px;
      }

      .tagline {
        margin-top: 1px;
        font-size: 8.5px;
      }

      .contact {
        flex-basis: 300px;
        font-size: 8px;
        line-height: 1.15;
      }

      .contact-grid {
        gap: 0 8px;
      }

      section,
      .summary {
        margin-top: 4px;
      }

      h2 {
        padding-bottom: 2px;
        margin: 4px 0 3px;
        border-bottom: 1px solid #dbe5f0;
        font-size: 10px;
      }

      p {
        margin: 2px 0;
      }

      .muted {
        font-size: 8.6px;
      }

      ul {
        margin: 2px 0 2px 12px;
      }

      li {
        margin: 1px 0;
        line-height: 1.12;
      }

      .two-col {
        gap: 10px;
        break-inside: auto;
      }

      .col-side {
        width: 160px;
        flex-basis: 160px;
      }

      .role-block {
        margin-bottom: 3px;
      }

      .role {
        font-size: 9.3px;
        line-height: 1.15;
      }

      .meta {
        margin: 1px 0 2px;
        font-size: 8.5px;
        line-height: 1.15;
      }

      .role-block ul {
        margin-top: 2px;
      }

      .sidebar-block {
        margin-bottom: 4px;
      }

      .sidebar-list {
        margin-left: 12px;
      }

      .skills {
        gap: 2px;
      }

      .skill {
        padding: 2px 3px;
        font-size: 8px;
        line-height: 1.15;
      }

      .side-copy {
        font-size: 8.2px;
        line-height: 1.2;
      }

      .highlights {
        margin-top: 8px;
      }

      .highlights-grid {
        gap: 8px;
      }

      .highlight {
        padding: 6px;
      }

      .highlight h3 {
        margin-bottom: 2px;
        font-size: 9px;
      }

      .highlight p {
        font-size: 8.2px;
        line-height: 1.18;
      }

      .projects {
        display: grid;
        grid-template-columns: repeat(2, minmax(0, 1fr));
        column-gap: 12px;
        row-gap: 2px;
        margin-top: 8px;
      }

      .projects > h2,
      .highlights > h2,
      .publication-block {
        grid-column: 1 / -1;
      }

      .project-block {
        margin-bottom: 3px;
      }

      .project-block ul {
        margin-top: 2px;
      }

      .project-links {
        font-size: 8.2px;
      }

      .publication-block {
        margin-top: 4px;
        padding-top: 2px;
        border-top: 1px solid #e3eaf3;
      }

      .role-alignment-intro {
        margin-bottom: 4px;
        font-size: 8.2px;
        line-height: 1.15;
      }

      .role-alignment-link {
        margin-top: 4px;
        font-size: 8px;
        line-height: 1.15;
      }
    }
  </style>
</head>

<body>
  <div class="no-print">Print this document with the browser's A4 / default-scale settings and choose “Save as PDF”.</div>

  <main class="container">
    <header class="document-header">
      <div class="identity">
        <h1 class="name">BEN BINH TRAN</h1>
        <div class="title">Engineer – Air Network &amp; Partner Management</div>
        <div class="tagline">Operations Planning | Service Reliability | Analytics &amp; Workflow Automation</div>
      </div>

      <address class="contact">
        <div class="contact-grid">
          <span>+84 822 468 722</span>
          <span>Ho Chi Minh City, Vietnam</span>
          <span><a href="mailto:BenBinhTran@gmail.com">BenBinhTran@gmail.com</a></span>
          <span><a href="https://BenBinhTran.github.io" target="_blank" rel="noopener noreferrer">BenBinhTran.github.io</a></span>
          <span><a href="https://phoenixflix.vercel.app" target="_blank" rel="noopener noreferrer">phoenixflix.vercel.app</a></span>
          <span><a href="https://github.com/PhoenixWeaver" target="_blank" rel="noopener noreferrer">github.com/PhoenixWeaver</a></span>
        </div>
      </address>
    </header>

    <section class="summary" aria-labelledby="summary-heading">
      <h2 id="summary-heading">Summary &amp; Objective</h2>
      <p class="muted">
        Operations-focused engineering professional with 20+ years of technical, research, and operations experience, including FedEx Vietnam customer experience work supporting RPI creation and monitoring. Strong foundation for Engineer – Air Network &amp; Partner Management through operational exception monitoring, SLA/KPI analysis, service-recovery coordination, process implementation, and cross-functional handoffs. Experienced with station, PUD, inbound-clearance, and regional teams, including Malaysia, Singapore, China, Taiwan, and Thailand collaboration. Brings practical analytics and workflow automation experience across Excel/Power Query, Power BI basics, SQL, CEBS, ServiceNow, SharePoint, Power Automate, and JavaScript, supported by U.S. engineering education and bilingual English/Vietnamese communication.
      </p>
    </section>

    <div class="two-col">
      <section class="col-main" aria-labelledby="experience-heading">
        <h2 id="experience-heading">Professional Experience</h2>

        <article class="role-block">
          <div class="role">FedEx Vietnam — Customer Experience Agent (RPI Creator &amp; Monitor)</div>
          <div class="meta">Ho Chi Minh City, Vietnam | 02/2026 – 08/2026</div>
          <ul>
            <li>Create RPI C-MOD control numbers in CEBS and submit SharePoint entries that trigger Vietnamese and English consignee notifications.</li>
            <li>Validate 12-digit AWB and shipment data; extract shipper/consignee contacts with Copilot/OCR and attach RPI, commercial, MSDS, and related documentation.</li>
            <li>Own the case lifecycle across SharePoint, Excel, ServiceNow, and CEBS by maintaining statuses, timestamps, ownership, and handoffs through pickup and closure.</li>
            <li>Monitor operational exception queues, flag SLA risks, and escalate through Station Supervisor, Operations Manager, and Regional RPI paths with recommended next actions.</li>
            <li>Coordinate with station, PUD, and inbound-clearance teams to close documentation gaps, arrange re-dispatch, and support CCTV/bag checks or DG approvals.</li>
            <li>Manage bilingual communications, standardized templates, service-recovery updates, case-note macros, and escalation notes for consistent execution.</li>
            <li>Coordinate with China and Taiwan teams for RPI monitoring and with Thailand teams for RPI creation, supporting consistent regional handoffs and operational visibility.</li>
            <li>Use Power Query, Excel, and SharePoint logs to track case aging, pickup-within-SLA percentage, and leading exception types; implemented Power Automate flows to consolidate AWB rows, normalize multi-recipient fields, group AWBs by recipient, and send one consolidated HTML email.</li>
          </ul>
        </article>

        <article class="role-block">
          <div class="role">FedEx Vietnam — Customer Experience Agent / Supplies Coordination</div>
          <div class="meta">Ho Chi Minh City, Vietnam | 02/2026 – 05/2026</div>
          <ul>
            <li>Collaborated with Malaysia and Singapore teams to coordinate supplies ordering and delivery across regional workflows.</li>
            <li>Documented and standardized order placement, tracking, and escalation procedures; developed guidance for typical quantities, item locations, and special or bulk requests.</li>
            <li>Instituted a “Data Not Found” check for missing or delayed orders, verified dispatch attempts, escalated unresolved account issues, and monitored lifecycle/allocation exceptions.</li>
          </ul>
        </article>

        <article class="role-block">
          <div class="role">Customer Service Partner Specialist — Concentrix</div>
          <div class="meta">Ho Chi Minh City, Vietnam | 2024 – 2025</div>
          <ul>
            <li>Provided B2B platform support, technical triage, billing coordination, and high-priority dispute resolution; escalated defects to engineering and logged root causes in ServiceNow.</li>
          </ul>
        </article>

        <article class="role-block">
          <div class="role">Quality Control — Kizik | Warehouse Operations — Black Diamond</div>
          <div class="meta">USA | 2022 – 2023</div>
          <ul>
            <li>Conducted statistical analysis, failure investigations, test-model development, and quality-record management while supporting high-volume fulfillment, inventory accuracy, and outbound quality checks.</li>
          </ul>
        </article>

        <article class="role-block">
          <div class="role">Shift Lead / Sales Manager — AutoZone Inc.</div>
          <div class="meta">USA | 2018 – 2020</div>
          <ul>
            <li>Owned assigned-shift operations and supervised/trained a team of 6+ across merchandising, sales, safety, cash handling, and inventory control.</li>
            <li>Managed Commercial/Hub fulfillment for corporate accounts so deliveries were made as promised; enforced loss-prevention and emergency-response procedures.</li>
          </ul>
        </article>

        <article class="role-block">
          <div class="role">Research Assistant (SATCOM) — Brigham Young University / Linear Signal Inc. (Raytheon Sponsored)</div>
          <div class="meta">Provo, UT | 2010 – 2014</div>
          <ul>
            <li>Led design, HFSS simulation, and fabrication of a broadband, high-efficiency dielectric resonator antenna array for satellite communications; achieved a 10% improvement in aperture efficiency over existing models.</li>
            <li>Developed and validated an electrodynamic model for low-loss radome materials at microwave frequencies and high temperatures; designed an electronically steerable array with dual RHCP/LHCP capabilities.</li>
          </ul>
        </article>

        <article class="role-block">
          <div class="role">Research Assistant — University of Arkansas (MOLICS Lab)</div>
          <div class="meta">Fayetteville, AR | 2005 – 2010</div>
          <ul>
            <li>Applied microwave imaging for non-contact object detection and fabricated/tested RF devices under strict laboratory protocols.</li>
          </ul>
        </article>
      </section>

      <aside class="col-side" aria-label="Core competencies and credentials">
        <section class="sidebar-block" aria-labelledby="competencies-heading">
          <h2 id="competencies-heading">Core Competencies</h2>
          <ul class="sidebar-list small">
            <li><strong>Network Operations:</strong> Exception monitoring, service recovery, SLA-risk escalation, SOP/process implementation.</li>
            <li><strong>Performance:</strong> SLA/KPI tracking, aging and exception analysis, RCA/SPC, corrective-action recommendations.</li>
            <li><strong>Regional Coordination:</strong> Malaysia/Singapore supplies workflows; China/Taiwan RPI monitoring; Thailand RPI creation.</li>
            <li><strong>Stakeholders:</strong> Station operations, PUD, inbound clearance, customer experience, regional RPI, and cross-functional teams.</li>
          </ul>
        </section>

        <section class="sidebar-block" aria-labelledby="skills-heading">
          <h2 id="skills-heading">Skills &amp; Tools</h2>
          <div class="skills small">
            <span class="skill">CEBS</span>
            <span class="skill">SharePoint</span>
            <span class="skill">ServiceNow</span>
            <span class="skill">Excel</span>
            <span class="skill">Power Query</span>
            <span class="skill">Power BI basics</span>
            <span class="skill">SQL / PostgreSQL</span>
            <span class="skill">Power Automate</span>
            <span class="skill">JavaScript</span>
            <span class="skill">HTML / CSS</span>
            <span class="skill">Node.js</span>
            <span class="skill">REST APIs</span>
            <span class="skill">RCA / SPC</span>
            <span class="skill">SLA / KPI</span>
            <span class="skill">DG handling</span>
          </div>
        </section>

        <section class="sidebar-block" aria-labelledby="education-heading">
          <h2 id="education-heading">Education</h2>
          <div class="side-copy">
            <strong>MS, Electrical Engineering</strong><br>
            University of Arkansas<br>
            Fayetteville, AR | 2008–2010
          </div>
          <p class="side-copy">
            <strong>BS, Electrical Engineering &amp; Mathematics</strong><br>
            University of Arkansas<br>
            Fayetteville, AR | 2004–2008
          </p>
          <p class="side-copy">
            <strong>PhD studies (incomplete), Electrical &amp; Computer Engineering</strong><br>
            Brigham Young University<br>
            Provo, UT | 2010–2014
          </p>
        </section>

        <section class="sidebar-block" aria-labelledby="certifications-heading">
          <h2 id="certifications-heading">Certifications &amp; Badges</h2>
          <p class="side-copy">ServiceNow: Customer Service Case Management, Incident Management, Problem Management, ServiceNow Administration Fundamentals, Knowledge Management, and JavaScript Fundamentals.</p>
        </section>

        <section class="sidebar-block" aria-labelledby="languages-heading">
          <h2 id="languages-heading">Languages</h2>
          <p class="side-copy">English (professional) | Vietnamese (native)</p>
        </section>
      </aside>
    </div>

    <section class="highlights" aria-labelledby="highlights-heading">
      <h2 id="highlights-heading">Air Network Operations &amp; Engineering Role Alignment</h2>
      <p class="role-alignment-intro">Using the Air Network &amp; Partner Management job description as a framework, I mapped my RPI, SLA/KPI, exception management, and automation experience to each responsibility area and built a structured competency development plan — documenting how I would approach the role from day one if assigned.</p>
      <div class="highlights-grid">
        <article class="highlight">
          <h3>Network Performance</h3>
          <p>Translate shipment, SLA, and exception data into lane, capacity, service, and partner-performance insights.</p>
        </article>
        <article class="highlight">
          <h3>Analytics &amp; Planning</h3>
          <p>Use Excel/Power Query, SQL, RCA/SPC, and automation to support dashboards, business cases, and continuous improvement.</p>
        </article>
        <article class="highlight">
          <h3>Operational Execution</h3>
          <p>Coordinate station, PUD, clearance, regional, airline, and vendor stakeholders through implementation and disruption recovery.</p>
        </article>
      </div>
      <p class="role-alignment-link">Supporting role-alignment details: <a href="https://benbinhtran.github.io/AirNetworkPlan.html" target="_blank" rel="noopener noreferrer" style="color:#0a66c2;font-style:italic;text-decoration:underline;">Air Network Operations &amp; Engineering plan</a></p>
    </section>

    <section class="projects" aria-labelledby="projects-heading">
      <h2 id="projects-heading">Selected Projects &amp; Automation</h2>

      <article class="project-block">
        <div class="role">Bulk Booking Logistics Suite</div>
        <div class="meta">Jun 2026 | Vanilla JS, HTML/CSS</div>
        <ul>
          <li>Combined booking, driver-note, and bulk-request tools with AWB parsing, dimension checks, and approval-email generation.</li>
          <li class="project-links">Demo: <a href="https://phoenixflix.vercel.app/bulkbooking.html" target="_blank" rel="noopener noreferrer">bulkbooking.html</a> | README: <a href="https://github.com/PhoenixWeaver/BT-utility-tools-demo/blob/main/README_bulkbooking.md" target="_blank" rel="noopener noreferrer">BT-utility-tools-demo</a></li>
        </ul>
      </article>

      <article class="project-block">
        <div class="role">AWB Consolidation Flow</div>
        <div class="meta">Jun 2026 | Power Automate, SharePoint, Outlook</div>
        <ul>
          <li>Groups AWBs by recipient and sends consolidated HTML emails with tracked workflow data.</li>
        </ul>
      </article>

      <article class="project-block">
        <div class="role">Customer Request Automation</div>
        <div class="meta">Jun 2026 | Power Automate, Power Apps, Lists, Outlook</div>
        <ul>
          <li>Automates intake, routing, assignment, SLA tracking, and notifications across teams.</li>
          <li class="project-links">README: <a href="https://github.com/PhoenixWeaver/BT-utility-tools-demo/blob/main/README_AutomateFlows.md" target="_blank" rel="noopener noreferrer">BT-utility-tools-demo</a></li>
        </ul>
      </article>

      <article class="project-block">
        <div class="role">Logistics Supplies Order Automation</div>
        <div class="meta">Jun 2026 | Node/Express, HTML/CSS/JS</div>
        <ul>
          <li>Validates orders, blocks duplicates, and creates audit-ready histories.</li>
          <li class="project-links">Demo: <a href="https://phoenixflix.vercel.app/orders.html" target="_blank" rel="noopener noreferrer">orders.html</a> | README: <a href="https://github.com/PhoenixWeaver/BT-utility-tools-demo/blob/main/README_orders.md" target="_blank" rel="noopener noreferrer">BT-utility-tools-demo</a></li>
        </ul>
      </article>

      <section class="publication-block" aria-labelledby="publications-heading">
        <h2 id="publications-heading">Publications</h2>
        <ul>
          <li><strong>High-efficiency DRA array feeds for satellite communications.</strong> <em>IEEE TAP</em>, 2014.</li>
          <li><strong>Broadband high-efficiency DRA for satellite communications.</strong> <em>IEEE APS-URSI</em>, 2013.</li>
        </ul>
      </section>
    </section>

  </main>
</body>

</html>
