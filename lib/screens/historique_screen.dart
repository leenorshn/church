import 'package:flutter/material.dart';

class HistoriqueScreen extends StatelessWidget {
  const HistoriqueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notre histoire"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Text(
                """
              L’Eglise **néo-apostolique** est présente dans presque tous les pays du monde.  Son siège international est situé à Zurich (Suisse). Actuellement elle compte environ dix millions de membres. Elle est dirigée sous l’autorité de l’apôtre-patriarche qui coordonne les activités des apôtres. Depuis la Pentecôte 2013, Jean-Luc Schneider exerce ce ministère de l’apôtre-patriarche, et il s’appuie sur l’assemblée des apôtres de district dont il est le président du céans.

L’Eglise néo-apostolique administre trois sacrements : le saint baptême d’eau, le saint-scellé (dispensation du Saint-Esprit par l’imposition des mains et la prière d’un apôtre), la sainte cène. Elle prépare ses fidèles en vue du retour proche de Jésus-Christ. Pour plus de détails,  consulter le site de l’Eglise néo-apostolique internationale : www.nak.org                

L'Eglise néo-apostolique en République Démocratique du Congo

L’Eglise néo-apostolique en RD Congo a le statut d’une association sans but lucratif, à droit étranger, reconnue officiellement depuis 1978 par l’Ordonnance Présidentielle No. 78/091 du 27 Février 1978.

Historiquement l’Église territoriale du Canada a assuré la desserte de l’ouest de la République Démocratique du Congo, alors que l’Église territoriale de la France assure celle de la partie Est.

De ce fait, bien que du point de vu légale l’Église néo-apostolique en République Démocratique du Congo était une entité,  du point de vue ecclésiastique, l’Église est répartie en deux champs :

-la partie ouest, comportant les provinces de Kongo Central, Nord-Ubangi, Sud-Ubangi, Mongala, Equateur, Tshuapa, Mai-Ndombe, Kwilu, Kwangu et la ville-province de Kinshasa et ;

-la partie sud-est englobe les provinces de Bas-UeIe, Haut-Uele, Ituri, Tshopo, Nord-Kivu, Sud-Kivu, Maniema, Sankuru, Kasai, Kasaï Oriental, Lulua, Lomami, Tanganyika, Haut-Lomami, Lualaba, et Haut-Katanga.

L'Eglise néo-apostolique de la République Démocratique du Congo Ouest

C’est depuis le premier août, 2010 que l’Apôtre Patriarche Wilhelm Leber a procédé à la création d’un nouveau district territorial autonome en RD Congo qui s’appelle l’Église néo-apostolique de la République Démocratique du Congo Ouest. Cette église territoriale autonome est autorisée à exercer ses activités en République Démocratique du Congo  par l’Arrêté ministériel No. 332/CAB/MIN/J&DH/2013 du 27 novembre 2013.

L’Église néo-apostolique de la République Démocratique du Congo Ouest compte presque 1,2 millions de membres répartis dans près de 8,200 communautés (au sens de paroisses). Presque 30,000 frères de ministères desservent nos membres à titre bénévole. Dans la ville de Kinshasa, nous comptons plus de 1,700 communautés repartis en 9 champs apostoliques.
              """,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
