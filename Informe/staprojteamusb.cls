%% --> Identificación de la clase
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{staprojteamusb}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Inicialización
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\@autor{}        % autor
\newcommand\@titulo{}       % titulo
\newcommand\@institucion{}  % Universidad
\newcommand\@correo{}       % correo
\newcommand\@fecha{}        % fecha
\newcommand\@resumen{}      % resumen o abstract
\newcommand\@palabrasc{}    % palabras clave
\newcommand\@sangria{1.2em} % identacion al inicio de cada parrafo
\newcommand\@tipo{}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Opciones
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Opciones de tama\~no de letra.
\DeclareOption{10pt}{\PassOptionsToClass{10pt}{article}}
\DeclareOption{11pt}{\PassOptionsToClass{11pt}{article}}
\DeclareOption{12pt}{\PassOptionsToClass{12pt}{article}}
%%  Declaración de tamaños de página
\DeclareOption{a4}{
	\PassOptionsToPackage{
		top=0.8in,            
		inner=0.5in,
		outer=0.5in,
		bottom=0.7in,
		headheight=4ex,       
		headsep=6.5ex, 
		paperwidth=220mm,
		paperheight=300mm,
		right=2cm,
		left=2cm,
		textheight=9in,
		textwidth=6.25in,
		footskip=1cm
	}{geometry}}

%%  Opciones predeterminadas son a4, 11pt, oneside
\ExecuteOptions{a4,11pt}
\ProcessOptions\relax
\LoadClass{article}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --- Paquetes
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Son necesarios los siguientes paquetes para dar formato al documento.

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[spanish]{babel}
\RequirePackage{geometry}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage{amsthm}
\RequirePackage{enumitem}
\RequirePackage{graphicx}
\RequirePackage[colorlinks,allcolors=.,breaklinks]{hyperref}
\AtBeginDocument{\urlstyle{sf}}
\RequirePackage{xcolor}
\RequirePackage{float}
\RequirePackage{fontawesome}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage[font={small},labelfont={color=seccolor,bf,small},
justification=centerlast,tablename=Tabla]{caption}
\RequirePackage{listings}
\RequirePackage{tcolorbox}
\RequirePackage{etoolbox}
\RequirePackage[babel]{csquotes}
\RequirePackage{graphicx}
\RequirePackage{mathtools}
\RequirePackage{multirow}
\RequirePackage{pdfpages}
\RequirePackage{subfiles}
\RequirePackage{stfloats}
\usepackage{titlesec}
\usepackage{float}
\usepackage{xcolor}
\usepackage{verbatim}
\usepackage{charter}
\usepackage{amsmath}
\usepackage{appendix}
\usepackage{ragged2e}
\usepackage{array}
\usepackage{etoolbox}
\usepackage{fancyhdr}
\usepackage{booktabs}
\usepackage{arydshln}
\usepackage{caption}
\usepackage{subcaption}
\usepackage{enumitem}
\usepackage{geometry}
\usepackage{hyperref}
\usepackage{url}
\hypersetup{colorlinks=true,linkcolor=seccolor,urlcolor=seccolor, citecolor=seccolor}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Nuevos comandos

\newcommand{\cencabezado}{\rule{\textwidth}{2pt}}
\newcommand{\autor}[1]{\renewcommand\@autor{\bfseries #1}}
\newcommand{\titulo}[1]{\renewcommand\@titulo{\bfseries #1}}
\newcommand{\correo}[1]{\renewcommand\@correo{#1}}
\newcommand{\fecha}[1]{\renewcommand\@fecha{#1}}
\newcommand{\resumen}[1]{\renewcommand\@resumen{#1}}
\newcommand{\palabrasc}[1]{\renewcommand\@palabrasc{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Estilos de títulos
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% --> Estilo de secciones numeradas
\titleformat{name=\section}[display]
{\color{seccolor}\vspace*{-10mm}\bfseries\scshape\centering}
{}{1ex}
{\Large\titlerule%\vspace{.3ex}
	\thesection.\
}
[\vspace{.9ex}\titlerule]
%% --> Estilo de secciones no numeradas
\titleformat{name=\section,numberless}[display]
{\color{seccolor}\vspace*{-10mm}\bfseries\scshape\centering}
{}{1ex}
{\Large\titlerule\vspace{.3ex}
}
[\vspace{.9ex}\titlerule]
%% --> Estilo de subsecciones numeradas
\titleformat{\subsection}
{\color{sseccolor}\normalfont\Large\bfseries\scshape}{\thesubsection.}{1em}{}
%% --> Estilo de subsecciones no numeradas
\titleformat{name=\subsection,numberless}[display]
{\color{sseccolor}\large\bfseries\scshape}
{}{0ex}{}[]
%% --> Estilo de subsubsecciones numeradas
\titleformat{\subsubsection}
{\color{sseccolor}\large\bfseries}{\thesubsubsection}{1em}{}
%% Espacios de los títulos
\titlespacing*{\section}{0pc}{3ex \@plus4pt \@minus3pt}{5pt}
\titlespacing*{\subsection}{0pc}{2.5ex \@plus3pt \@minus2pt}{0pt}
\titlespacing*{\subsubsection}{0pc}{2ex \@plus2.5pt \@minus1.5pt}{0pt}
\titlespacing*{\paragraph}{0pc}{1.5ex \@plus2pt \@minus1pt}{10pt}
%% Modificación del nivel de la tabla de contenidos
\setcounter{tocdepth}{2}

%%%%%%%%%%% Bibliografia
\RequirePackage[babel]{csquotes}
\RequirePackage[style=apa,backend=biber]{biblatex}
\DeclareLanguageMapping{spanish}{spanish-apa}
\DefineBibliographyStrings{spanish}{%
	andothers = {et al\adddot},
}
\DefineBibliographyExtras{spanish}
{\setcounter{smartand}{1}% or some other value
	\let\lbx@finalnamedelim=\lbx@es@smartand
	\let\lbx@finallistdelim=\lbx@es@smartand}

\DefineBibliographyExtras{spanish}{%
	\setcounter{smartand}{1}%
	\renewbibmacro*{name:delim:apa:family-given}[1]{%
		\ifnumgreater{\value{listcount}}{\value{liststart}}
		{\ifboolexpr{
				test {\ifnumless{\value{listcount}}{\value{liststop}}}
				or
				test \ifmorenames
			}
			{\printdelim{multinamedelim}}
			{\lbx@finallistdelim{#1}}}
		{}}%
}
\setlength{\bibhang}{\@sangria}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% -- Variables internas
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  La siguiente es la lista de las variables internas utilizadas para el formato.
\newcommand\@interlineado{1.2}
\newcommand\@espaciop{0.5em}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% -- Otros
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\endinput
