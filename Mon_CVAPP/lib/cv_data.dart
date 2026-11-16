// Toutes les informations du CV sont ici.

class ElementData {
  final String titre;
  final String lieu;
  final String periode;
  final List<String> details;

  const ElementData({
    required this.titre,
    required this.lieu,
    this.periode = '',
    this.details = const [],
  });
}

const String photoProfil = 'assets/images/profil.jpg';

const String nomComplet = 'Ranim Obaia';
const String titreCv = 'Business Computing Student – E-Business';
const String presentation =
    'Third-year Business Computing student at ESSECT who builds complete web '
    'applications, from the interface to the database, with a focus on user '
    'experience and business needs. Experienced in agile Scrum teams, '
    'including as Scrum Master, and in integrating AI into real products. '
    'Available from February 2027 for a 6-month internship.';

const List<ElementData> formations = [
  ElementData(
    titre: 'Bachelor in Business Computing – E-Business major',
    lieu: 'ESSECT, Tunis',
    periode: 'Expected 2027',
  ),
];

const List<ElementData> experiences = [
  ElementData(
    titre: 'Web Developer Intern',
    lieu: 'Nanolab, Tunis',
    periode: 'Jun 2026',
    details: [
      'Built the official website of Novalead, the first mobile training '
          'centre, with Next.js, React and Tailwind CSS',
      'Contact form with Prisma and MySQL, with emails sent through Brevo; '
          'fully responsive mobile version',
      'Scrum Master for the team: ran dailies, sprint planning and '
          'retrospectives; version control with Git',
    ],
  ),
  ElementData(
    titre: 'Web Developer Intern',
    lieu: 'IT GROW, Tunis',
    periode: 'Jun 2025 – Aug 2025',
    details: [
      'Designed and built a showcase website with WordPress',
      'Gathered client requirements, integrated content and optimised SEO',
      'Ensured the site was responsive on all devices',
    ],
  ),
];

const List<ElementData> benevolat = [
  ElementData(titre: 'Member', lieu: 'ONET Tunis'),
  ElementData(titre: 'Finance Committee Member', lieu: 'CRT Tunis'),
];

const List<ElementData> projets = [
  ElementData(
    titre: 'Talynx – AI job preparation app',
    lieu: 'Java, JavaFX, MySQL, Gemini API',
    details: [
      'Desktop app that analyses CVs, gives personalised suggestions and '
          'simulates job interviews using the Gemini API',
    ],
  ),
  ElementData(
    titre: 'SmartRH – Multi-site HR platform',
    lieu: '.NET 8, Blazor, SignalR, EF Core, Azure AD, Flutter',
    details: [
      'Team project with real-time features, company sign-in and a mobile app',
    ],
  ),
  ElementData(
    titre: 'Task management REST API',
    lieu: 'NestJS, Node.js, TypeScript',
  ),
];

const Map<String, List<String>> competences = {
  'Front end': ['React', 'Next.js', 'TypeScript', 'Tailwind CSS', 'HTML/CSS'],
  'Back end': [
    'Node.js',
    'NestJS',
    '.NET 8 / ASP.NET Core',
    'Java',
    'REST APIs',
  ],
  'Databases': ['MySQL', 'SQL', 'Prisma', 'Entity Framework'],
  'Data': ['SPSS', 'PCA', 'Excel', 'Business Intelligence'],
  'Tools': [
    'Git/GitHub',
    'Agile/Scrum',
    'WordPress',
    'Flutter',
    'AI-assisted development',
  ],
};

const List<String> langues = [
  'Arabic (Native)',
  'French (Advanced)',
  'English (Advanced)',
];

const String email = 'ranimobaia@gmail.com';
const String telephone = '+216 22 301 070';
const String ville = 'Tunis, Tunisia';
const String lienProfil = 'linkedin.com/in/ranim-obaia';