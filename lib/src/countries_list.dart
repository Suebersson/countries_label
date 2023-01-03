//https://www.auslandsvorwahlen.net/en/alphabetical/a

part of 'country_picker.dart';

/// Nome das keys usada na list em [Countries], e útil para facilitar o desenvolvimento
extension ImplementParametersName on Map<String, String> {
  String get countryName => 'name';
  String get countryInitials => 'initials';
  String get countryDialCode => 'dialCode';
}

/// Classe que armazenará os dados básicos dos países
/// Como a lista de dados é muito grande, essa classe obriga
/// acessar os dados apenas com uma instância única
class Countries {
  
  static final Countries _instance = Countries._();
  static Countries get i => _instance;
  Countries._();

  factory Countries(){
    return _instance;
  }

  final List<Map<String, String>> list = const [
    /// Esse será o objeto que será retornado quando for solicitado os
    /// dados de algum país que não exsite na lista (Countries.i.list[0])
    {
      "name": "undefined",
      "initials": "undefined",
      "dialCode": "undefined",
    },
    {
      "name": "افغانستان",
      "initials": "AF",
      "dialCode": "+93",
    },
    {
      "name": "Åland",
      "initials": "AX",
      "dialCode": "+35818",
    },
    {
      "name": "Shqipëria",
      "initials": "AL",
      "dialCode": "+355",
    },
    {
      "name": "الجزائر",
      "initials": "DZ",
      "dialCode": "+213",
    },
    {
      "name": "American Samoa",
      "initials": "AS",
      "dialCode": "+1684",
    },
    {
      "name": "Andorra",
      "initials": "AD",
      "dialCode": "+376",
    },
    {
      "name": "Angola",
      "initials": "AO",
      "dialCode": "+244",
    },
    {
      "name": "Anguilla",
      "initials": "AI",
      "dialCode": "+1264",
    },
    {
      "name": "Antarctica",
      "initials": "AQ",
      "dialCode": "+672",
    },
    {
      "name": "Antigua and Barbuda",
      "initials": "AG",
      "dialCode": "+1268",
    },
    {
      "name": "Argentina",
      "initials": "AR",
      "dialCode": "+54",
    },
    {
      "name": "Հայաստան",
      "initials": "AM",
      "dialCode": "+374",
    },
    {
      "name": "Aruba",
      "initials": "AW",
      "dialCode": "+297",
    },
    {
      "name": "Australia",
      "initials": "AU",
      "dialCode": "+61",
    },
    {
      "name": "Österreich",
      "initials": "AT",
      "dialCode": "+43",
    },
    {
      "name": "Azərbaycan",
      "initials": "AZ",
      "dialCode": "+994",
    },
    {
      "name": "Bahamas",
      "initials": "BS",
      "dialCode": "+1242",
    },
    {
      "name": "‏البحرين",
      "initials": "BH",
      "dialCode": "+973",
    },
    {
      "name": "Bangladesh",
      "initials": "BD",
      "dialCode": "+880",
    },
    {
      "name": "Barbados",
      "initials": "BB",
      "dialCode": "+1246",
    },
    {
      "name": "Белару́сь",
      "initials": "BY",
      "dialCode": "+375",
    },
    {
      "name": "België",
      "initials": "BE",
      "dialCode": "+32",
    },
    {
      "name": "Belize",
      "initials": "BZ",
      "dialCode": "+501",
    },
    {
      "name": "Bénin",
      "initials": "BJ",
      "dialCode": "+229",
    },
    {
      "name": "Bermuda",
      "initials": "BM",
      "dialCode": "+1441",
    },
    {
      "name": "ʼbrug-yul",
      "initials": "BT",
      "dialCode": "+975",
    },
    {
      "name": "Bolivia",
      "initials": "BO",
      "dialCode": "+591",
    },
    {
      "name": "Bosna i Hercegovina",
      "initials": "BA",
      "dialCode": "+387",
    },
    {
      "name": "Botswana",
      "initials": "BW",
      "dialCode": "+267",
    },
    {
      "name": "Bouvetøya",
      "initials": "BV",
      "dialCode": "+47",
    },
    {
      "name": "Brasil",
      "initials": "BR",
      "dialCode": "+55",
    },
    {
      "name": "British Indian Ocean Territory",
      "initials": "IO",
      "dialCode": "+246",
    },
    {
      "name": "Negara Brunei Darussalam",
      "initials": "BN",
      "dialCode": "+673",
    },
    {
      "name": "България",
      "initials": "BG",
      "dialCode": "+359",
    },
    {
      "name": "Burkina Faso",
      "initials": "BF",
      "dialCode": "+226",
    },
    {
      "name": "Burundi",
      "initials": "BI",
      "dialCode": "+257",
    },
    {
      "name": "Cambodia",
      "initials": "KH",
      "dialCode": "+855",
    },
    {
      "name": "Cameroon",
      "initials": "CM",
      "dialCode": "+237",
    },
    {
      "name": "Canada",
      "initials": "CA",
      "dialCode": "+1",
    },
    {
      "name": "Cabo Verde",
      "initials": "CV",
      "dialCode": "+238",
    },
    {
      "name": "Cayman Islands",
      "initials": "KY",
      "dialCode": "+1345",
    },
    {
      "name": "Ködörösêse tî Bêafrîka",
      "initials": "CF",
      "dialCode": "+236",
    },
    {
      "name": "Tchad",
      "initials": "TD",
      "dialCode": "+235",
    },
    {
      "name": "Chile",
      "initials": "CL",
      "dialCode": "+56",
    },
    {
      "name": "中国",
      "initials": "CN",
      "dialCode": "+86",
    },
    {
      "name": "Christmas Island",
      "initials": "CX",
      "dialCode": "+61",
    },
    {
      "name": "Cocos (Keeling) Islands",
      "initials": "CC",
      "dialCode": "+61",
    },
    {
      "name": "Colombia",
      "initials": "CO",
      "dialCode": "+57",
    },
    {
      "name": "Komori",
      "initials": "KM",
      "dialCode": "+269",
    },
    {
      "name": "République du Congo",
      "initials": "CG",
      "dialCode": "+242",
    },
    {
      "name": "République démocratique du Congo",
      "initials": "CD",
      "dialCode": "+243",
    },
    {
      "name": "Cook Islands",
      "initials": "CK",
      "dialCode": "+682",
    },
    {
      "name": "Costa Rica",
      "initials": "CR",
      "dialCode": "+506",
    },
    {
      "name": "Côte d'Ivoire",
      "initials": "CI",
      "dialCode": "+225",
    },
    {
      "name": "Hrvatska",
      "initials": "HR",
      "dialCode": "+385",
    },
    {
      "name": "Cuba",
      "initials": "CU",
      "dialCode": "+53",
    },
    {
      "name": "Κύπρος",
      "initials": "CY",
      "dialCode": "+357",
    },
    {
      "name": "Česká republika",
      "initials": "CZ",
      "dialCode": "+420",
    },
    {
      "name": "Danmark",
      "initials": "DK",
      "dialCode": "+45",
    },
    {
      "name": "Djibouti",
      "initials": "DJ",
      "dialCode": "+253",
    },
    {
      "name": "Dominica",
      "initials": "DM",
      "dialCode": "+1767",
    },
    {
      "name": "República Dominicana",
      "initials": "DO",
      "dialCode": "+1",
    },
    {
      "name": "Ecuador",
      "initials": "EC",
      "dialCode": "+593",
    },
    {
      "name": "مصر‎",
      "initials": "EG",
      "dialCode": "+20",
    },
    {
      "name": "El Salvador",
      "initials": "SV",
      "dialCode": "+503",
    },
    {
      "name": "Guinea Ecuatorial",
      "initials": "GQ",
      "dialCode": "+240",
    },
    {
      "name": "ኤርትራ",
      "initials": "ER",
      "dialCode": "+291",
    },
    {
      "name": "Eesti",
      "initials": "EE",
      "dialCode": "+372",
    },
    {
      "name": "ኢትዮጵያ",
      "initials": "ET",
      "dialCode": "+251",
    },
    {
      "name": "Falkland Islands",
      "initials": "FK",
      "dialCode": "+500",
    },
    {
      "name": "Føroyar",
      "initials": "FO",
      "dialCode": "+298",
    },
    {
      "name": "Fiji",
      "initials": "FJ",
      "dialCode": "+679",
    },
    {
      "name": "Suomi",
      "initials": "FI",
      "dialCode": "+358",
    },
    {
      "name": "France",
      "initials": "FR",
      "dialCode": "+33",
    },
    {
      "name": "Guyane française",
      "initials": "GF",
      "dialCode": "+594",
    },
    {
      "name": "Polynésie française",
      "initials": "PF",
      "dialCode": "+689",
    },
    {
      "name": "Territoire des Terres australes et antarctiques fr",
      "initials": "TF",
      "dialCode": "+262",
    },
    {
      "name": "Gabon",
      "initials": "GA",
      "dialCode": "+241",
    },
    {
      "name": "Gambia",
      "initials": "GM",
      "dialCode": "+220",
    },
    {
      "name": "საქართველო",
      "initials": "GE",
      "dialCode": "+995",
    },
    {
      "name": "Deutschland",
      "initials": "DE",
      "dialCode": "+49",
    },
    {
      "name": "Ghana",
      "initials": "GH",
      "dialCode": "+233",
    },
    {
      "name": "Gibraltar",
      "initials": "GI",
      "dialCode": "+350",
    },
    {
      "name": "Ελλάδα",
      "initials": "GR",
      "dialCode": "+30",
    },
    {
      "name": "Kalaallit Nunaat",
      "initials": "GL",
      "dialCode": "+299",
    },
    {
      "name": "Grenada",
      "initials": "GD",
      "dialCode": "+1473",
    },
    {
      "name": "Guadeloupe",
      "initials": "GP",
      "dialCode": "+590",
    },
    {
      "name": "Guam",
      "initials": "GU",
      "dialCode": "+1671",
    },
    {
      "name": "Guatemala",
      "initials": "GT",
      "dialCode": "+502",
    },
    {
      "name": "Guernsey",
      "initials": "GG",
      "dialCode": "+44",
    },
    {
      "name": "Guinée",
      "initials": "GN",
      "dialCode": "+224",
    },
    {
      "name": "Guiné-Bissau",
      "initials": "GW",
      "dialCode": "+245",
    },
    {
      "name": "Guyana",
      "initials": "GY",
      "dialCode": "+592",
    },
    {
      "name": "Haïti",
      "initials": "HT",
      "dialCode": "+509",
    },
    {
      "name": "Heard Island and McDonald Islands",
      "initials": "HM",
      "dialCode": "+0",
    },
    {
      "name": "Vaticano",
      "initials": "VA",
      "dialCode": "+379",
    },
    {
      "name": "Honduras",
      "initials": "HN",
      "dialCode": "+504",
    },
    {
      "name": "香港",
      "initials": "HK",
      "dialCode": "+852",
    },
    {
      "name": "Magyarország",
      "initials": "HU",
      "dialCode": "+36",
    },
    {
      "name": "Ísland",
      "initials": "IS",
      "dialCode": "+354",
    },
    {
      "name": "भारत",
      "initials": "IN",
      "dialCode": "+91",
    },
    {
      "name": "Indonesia",
      "initials": "ID",
      "dialCode": "+62",
    },
    {
      "name": "ایران",
      "initials": "IR",
      "dialCode": "+98",
    },
    {
      "name": "العراق",
      "initials": "IQ",
      "dialCode": "+964",
    },
    {
      "name": "Éire",
      "initials": "IE",
      "dialCode": "+353",
    },
    {
      "name": "Isle of Man",
      "initials": "IM",
      "dialCode": "+44",
    },
    {
      "name": "ישראל",
      "initials": "IL",
      "dialCode": "+972",
    },
    {
      "name": "Italia",
      "initials": "IT",
      "dialCode": "+39",
    },
    {
      "name": "Jamaica",
      "initials": "JM",
      "dialCode": "+1876",
    },
    {
      "name": "日本",
      "initials": "JP",
      "dialCode": "+81",
    },
    {
      "name": "Jersey",
      "initials": "JE",
      "dialCode": "+44",
    },
    {
      "name": "الأردن",
      "initials": "JO",
      "dialCode": "+962",
    },
    {
      "name": "Қазақстан",
      "initials": "KZ",
      "dialCode": "+7",
    },
    {
      "name": "Kenya",
      "initials": "KE",
      "dialCode": "+254",
    },
    {
      "name": "Kiribati",
      "initials": "KI",
      "dialCode": "+686",
    },
    {
      "name": "북한",
      "initials": "KP",
      "dialCode": "+850",
    },
    {
      "name": "대한민국",
      "initials": "KR",
      "dialCode": "+82",
    },
    {
      "name": "Republika e Kosovës",
      "initials": "XK",
      "dialCode": "+383",
    },
    {
      "name": "الكويت",
      "initials": "KW",
      "dialCode": "+965",
    },
    {
      "name": "Кыргызстан",
      "initials": "KG",
      "dialCode": "+996",
    },
    {
      "name": "ສປປລາວ",
      "initials": "LA",
      "dialCode": "+856",
    },
    {
      "name": "Latvija",
      "initials": "LV",
      "dialCode": "+371",
    },
    {
      "name": "لبنان",
      "initials": "LB",
      "dialCode": "+961",
    },
    {
      "name": "Lesotho",
      "initials": "LS",
      "dialCode": "+266",
    },
    {
      "name": "Liberia",
      "initials": "LR",
      "dialCode": "+231",
    },
    {
      "name": "‏ليبيا",
      "initials": "LY",
      "dialCode": "+218",
    },
    {
      "name": "Liechtenstein",
      "initials": "LI",
      "dialCode": "+423",
    },
    {
      "name": "Lietuva",
      "initials": "LT",
      "dialCode": "+370",
    },
    {
      "name": "Luxembourg",
      "initials": "LU",
      "dialCode": "+352",
    },
    {
      "name": "澳門",
      "initials": "MO",
      "dialCode": "+853",
    },
    {
      "name": "Македонија",
      "initials": "MK",
      "dialCode": "+389",
    },
    {
      "name": "Madagasikara",
      "initials": "MG",
      "dialCode": "+261",
    },
    {
      "name": "Malawi",
      "initials": "MW",
      "dialCode": "+265",
    },
    {
      "name": "Malaysia",
      "initials": "MY",
      "dialCode": "+60",
    },
    {
      "name": "Maldives",
      "initials": "MV",
      "dialCode": "+960",
    },
    {
      "name": "Mali",
      "initials": "ML",
      "dialCode": "+223",
    },
    {
      "name": "Malta",
      "initials": "MT",
      "dialCode": "+356",
    },
    {
      "name": "M̧ajeļ",
      "initials": "MH",
      "dialCode": "+692",
    },
    {
      "name": "Martinique",
      "initials": "MQ",
      "dialCode": "+596",
    },
    {
      "name": "موريتانيا",
      "initials": "MR",
      "dialCode": "+222",
    },
    {
      "name": "Maurice",
      "initials": "MU",
      "dialCode": "+230",
    },
    {
      "name": "Mayotte",
      "initials": "YT",
      "dialCode": "+262",
    },
    {
      "name": "México",
      "initials": "MX",
      "dialCode": "+52",
    },
    {
      "name": "Micronesia",
      "initials": "FM",
      "dialCode": "+691",
    },
    {
      "name": "Moldova",
      "initials": "MD",
      "dialCode": "+373",
    },
    {
      "name": "Monaco",
      "initials": "MC",
      "dialCode": "+377",
    },
    {
      "name": "Монгол улс",
      "initials": "MN",
      "dialCode": "+976",
    },
    {
      "name": "Црна Гора",
      "initials": "ME",
      "dialCode": "+382",
    },
    {
      "name": "Montserrat",
      "initials": "MS",
      "dialCode": "+1664",
    },
    {
      "name": "المغرب",
      "initials": "MA",
      "dialCode": "+212",
    },
    {
      "name": "Moçambique",
      "initials": "MZ",
      "dialCode": "+258",
    },
    {
      "name": "Myanma",
      "initials": "MM",
      "dialCode": "+95",
    },
    {
      "name": "Namibia",
      "initials": "NA",
      "dialCode": "+264",
    },
    {
      "name": "Nauru",
      "initials": "NR",
      "dialCode": "+674",
    },
    {
      "name": "नपल",
      "initials": "NP",
      "dialCode": "+977",
    },
    {
      "name": "Nederland",
      "initials": "NL",
      "dialCode": "+31",
    },
    {
      "name": "Netherlands Antilles",
      "initials": "AN",
      "dialCode": "+599",
    },
    {
      "name": "Nouvelle-Calédonie",
      "initials": "NC",
      "dialCode": "+687",
    },
    {
      "name": "New Zealand",
      "initials": "NZ",
      "dialCode": "+64",
    },
    {
      "name": "Nicaragua",
      "initials": "NI",
      "dialCode": "+505",
    },
    {
      "name": "Niger",
      "initials": "NE",
      "dialCode": "+227",
    },
    {
      "name": "Nigeria",
      "initials": "NG",
      "dialCode": "+234",
    },
    {
      "name": "Niuē",
      "initials": "NU",
      "dialCode": "+683",
    },
    {
      "name": "Norfolk Island",
      "initials": "NF",
      "dialCode": "+672",
    },
    {
      "name": "Northern Mariana Islands",
      "initials": "MP",
      "dialCode": "+1670",
    },
    {
      "name": "Norge",
      "initials": "NO",
      "dialCode": "+47",
    },
    {
      "name": "عمان",
      "initials": "OM",
      "dialCode": "+968",
    },
    {
      "name": "Pakistan",
      "initials": "PK",
      "dialCode": "+92",
    },
    {
      "name": "Palau",
      "initials": "PW",
      "dialCode": "+680",
    },
    {
      "name": "فلسطين",
      "initials": "PS",
      "dialCode": "+970",
    },
    {
      "name": "Panamá",
      "initials": "PA",
      "dialCode": "+507",
    },
    {
      "name": "Papua Niugini",
      "initials": "PG",
      "dialCode": "+675",
    },
    {
      "name": "Paraguay",
      "initials": "PY",
      "dialCode": "+595",
    },
    {
      "name": "Perú",
      "initials": "PE",
      "dialCode": "+51",
    },
    {
      "name": "Pilipinas",
      "initials": "PH",
      "dialCode": "+63",
    },
    {
      "name": "Pitcairn Islands",
      "initials": "PN",
      "dialCode": "+64",
    },
    {
      "name": "Polska",
      "initials": "PL",
      "dialCode": "+48",
    },
    {
      "name": "Portugal",
      "initials": "PT",
      "dialCode": "+351",
    },
    {
      "name": "Puerto Rico",
      "initials": "PR",
      "dialCode": "+1939",
    },
    {
      "name": "Puerto Rico",
      "initials": "PR",
      "dialCode": "+1787",
    },
    {
      "name": "قطر",
      "initials": "QA",
      "dialCode": "+974",
    },
    {
      "name": "România",
      "initials": "RO",
      "dialCode": "+40",
    },
    {
      "name": "Россия",
      "initials": "RU",
      "dialCode": "+7",
    },
    {
      "name": "Rwanda",
      "initials": "RW",
      "dialCode": "+250",
    },
    {
      "name": "La Réunion",
      "initials": "RE",
      "dialCode": "+262",
    },
    {
      "name": "Saint-Barthélemy",
      "initials": "BL",
      "dialCode": "+590",
    },
    {
      "name": "Saint Helena",
      "initials": "SH",
      "dialCode": "+290",
    },
    {
      "name": "Saint Kitts and Nevis",
      "initials": "KN",
      "dialCode": "+1869",
    },
    {
      "name": "Saint Lucia",
      "initials": "LC",
      "dialCode": "+1758",
    },
    {
      "name": "Saint-Martin",
      "initials": "MF",
      "dialCode": "+590",
    },
    {
      "name": "Saint-Pierre-et-Miquelon",
      "initials": "PM",
      "dialCode": "+508",
    },
    {
      "name": "Saint Vincent and the Grenadines",
      "initials": "VC",
      "dialCode": "+1784",
    },
    {
      "name": "Samoa",
      "initials": "WS",
      "dialCode": "+685",
    },
    {
      "name": "San Marino",
      "initials": "SM",
      "dialCode": "+378",
    },
    {
      "name": "São Tomé e Príncipe",
      "initials": "ST",
      "dialCode": "+239",
    },
    {
      "name": "العربية السعودية",
      "initials": "SA",
      "dialCode": "+966",
    },
    {
      "name": "Sénégal",
      "initials": "SN",
      "dialCode": "+221",
    },
    {
      "name": "Србија",
      "initials": "RS",
      "dialCode": "+381",
    },
    {
      "name": "Seychelles",
      "initials": "SC",
      "dialCode": "+248",
    },
    {
      "name": "Sierra Leone",
      "initials": "SL",
      "dialCode": "+232",
    },
    {
      "name": "Singapore",
      "initials": "SG",
      "dialCode": "+65",
    },
    {
      "name": "Slovensko",
      "initials": "SK",
      "dialCode": "+421",
    },
    {
      "name": "Slovenija",
      "initials": "SI",
      "dialCode": "+386",
    },
    {
      "name": "Solomon Islands",
      "initials": "SB",
      "dialCode": "+677",
    },
    {
      "name": "Soomaaliya",
      "initials": "SO",
      "dialCode": "+252",
    },
    {
      "name": "South Africa",
      "initials": "ZA",
      "dialCode": "+27",
    },
    {
      "name": "South Sudan",
      "initials": "SS",
      "dialCode": "+211",
    },
    {
      "name": "South Georgia",
      "initials": "GS",
      "dialCode": "+500",
    },
    {
      "name": "España",
      "initials": "ES",
      "dialCode": "+34",
    },
    {
      "name": "Sri Lanka",
      "initials": "LK",
      "dialCode": "+94",
    },
    {
      "name": "السودان",
      "initials": "SD",
      "dialCode": "+249",
    },
    {
      "name": "Suriname",
      "initials": "SR",
      "dialCode": "+597",
    },
    {
      "name": "Svalbard og Jan Mayen",
      "initials": "SJ",
      "dialCode": "+47",
    },
    {
      "name": "Swaziland",
      "initials": "SZ",
      "dialCode": "+268",
    },
    {
      "name": "Sverige",
      "initials": "SE",
      "dialCode": "+46",
    },
    {
      "name": "Schweiz",
      "initials": "CH",
      "dialCode": "+41",
    },
    {
      "name": "سوريا",
      "initials": "SY",
      "dialCode": "+963",
    },
    {
      "name": "臺灣",
      "initials": "TW",
      "dialCode": "+886",
    },
    {
      "name": "Тоҷикистон",
      "initials": "TJ",
      "dialCode": "+992",
    },
    {
      "name": "Tanzania",
      "initials": "TZ",
      "dialCode": "+255",
    },
    {
      "name": "ประเทศไทย",
      "initials": "TH",
      "dialCode": "+66",
    },
    {
      "name": "Timor-Leste",
      "initials": "TL",
      "dialCode": "+670",
    },
    {
      "name": "Togo",
      "initials": "TG",
      "dialCode": "+228",
    },
    {
      "name": "Tokelau",
      "initials": "TK",
      "dialCode": "+690",
    },
    {
      "name": "Tonga",
      "initials": "TO",
      "dialCode": "+676",
    },
    {
      "name": "Trinidad and Tobago",
      "initials": "TT",
      "dialCode": "+1868",
    },
    {
      "name": "تونس",
      "initials": "TN",
      "dialCode": "+216",
    },
    {
      "name": "Türkiye",
      "initials": "TR",
      "dialCode": "+90",
    },
    {
      "name": "Türkmenistan",
      "initials": "TM",
      "dialCode": "+993",
    },
    {
      "name": "Turks and Caicos Islands",
      "initials": "TC",
      "dialCode": "+1649",
    },
    {
      "name": "Tuvalu",
      "initials": "TV",
      "dialCode": "+688",
    },
    {
      "name": "Uganda",
      "initials": "UG",
      "dialCode": "+256",
    },
    {
      "name": "Україна",
      "initials": "UA",
      "dialCode": "+380",
    },
    {
      "name": "دولة الإمارات العربية المتحدة",
      "initials": "AE",
      "dialCode": "+971",
    },
    {
      "name": "United Kingdom",
      "initials": "GB",
      "dialCode": "+44",
    },
    {
      "name": "United States",
      "initials": "US",
      "dialCode": "+1",
    },
    {
      "name": "Uruguay",
      "initials": "UY",
      "dialCode": "+598",
    },
    {
      "name": "O‘zbekiston",
      "initials": "UZ",
      "dialCode": "+998",
    },
    {
      "name": "Vanuatu",
      "initials": "VU",
      "dialCode": "+678",
    },
    {
      "name": "Venezuela",
      "initials": "VE",
      "dialCode": "+58",
    },
    {
      "name": "Việt Nam",
      "initials": "VN",
      "dialCode": "+84",
    },
    {
      "name": "British Virgin Islands",
      "initials": "VG",
      "dialCode": "+1284",
    },
    {
      "name": "United States Virgin Islands",
      "initials": "VI",
      "dialCode": "+1340",
    },
    {
      "name": "Wallis et Futuna",
      "initials": "WF",
      "dialCode": "+681",
    },
    {
      "name": "اليَمَن",
      "initials": "YE",
      "dialCode": "+967",
    },
    {
      "name": "Zambia",
      "initials": "ZM",
      "dialCode": "+260",
    },
    {
      "name": "Zimbabwe",
      "initials": "ZW",
      "dialCode": "+263",
    },
  ];
}
