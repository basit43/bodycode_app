import 'package:bodycode/resources/associations.dart';
import 'package:bodycode/resources/intentions.dart';
import 'package:bodycode/resources/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../resources/decoding.dart';
import '../../resources/images.dart';
import '../../resources/explanations.dart';

class TextScreen extends StatefulWidget {
  final String parentScreen;

  const TextScreen({super.key, required this.parentScreen});

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  Map<String, String> data = {
    'explanation': 'Images.energy',
    'decoding': 'third',
    'Association': 'third',
    'Intention': 'third',
    'Chart': Images.white,
  };
  // Add more items here

  @override
  void initState() {
    setScreen();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('${Images.broadcastChart}');
    print('Chart${data['Chart']}');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // Center the app bar title
        //   automaticallyImplyLeading: false, // Remove the back button
        title: Text(
          widget.parentScreen,
          style: const TextStyle(color: Colors.deepPurple),
        ), // Add an app bar
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child:
                // Image.asset(Images.recoveryInterferenceText),
                Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Explanation',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                data['explanation'] ?? "",
                textAlign: TextAlign.justify,
              ),
              // buildFormattedText(data['explanation'] ?? ""),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Decoding',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                data['decoding'] ?? "",
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Association',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                data['association'] ?? "",
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Intention',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                data['intention'] ?? "",
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                data['Chart'] ?? '',
                fit: BoxFit.contain,
              )
            ],
          ),
        )),
      ),
    );
  }

  void setScreen() {
    if (widget.parentScreen == "Recovery Interference") {
      data = {
        'explanation': Explanations.recoveryTraumaExp,
        'decoding': DecodingData.recoveryTraumaDec,
        'association': Associations.recoveryTraumaAss,
        'intention': Intentions.recoveryTraumaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == "Physical Trauma") {
      data = {
        'explanation': Explanations.physicalTraumaExp,
        'decoding': DecodingData.physicalTraumaDec,
        'association': Associations.physicalTraumaAss,
        'intention': Intentions.physicalTraumaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == "Physical-Emotional Shock") {
      data = {
        'explanation': Explanations.physicalEmotionalExp,
        'decoding': DecodingData.physicalEmotionalDec,
        'association': Associations.physicalEmotionalAss,
        'intention': Intentions.physicalEmotionalInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == "Physical Intolerance") {
      data = {
        'explanation': Explanations.physicalIntoleranceExp,
        'decoding': DecodingData.physicalIntoleranceDec,
        'association': Associations.physicalIntoleranceAss,
        'intention': Intentions.physicalIntoleranceInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == "Idea Allergy") {
      data = {
        'explanation': Explanations.idealAllergyExp,
        'decoding': DecodingData.idealAllergyDec,
        'association': Associations.idealAllergyAss,
        'intention': Intentions.idealAllergyInt,
        'Chart': Images.ideaAllergy,
      };
    } else if (widget.parentScreen == "Idea Intolerance") {
      data = {
        'explanation': Explanations.ideaIntoleranceExp,
        'decoding': DecodingData.ideaIntoleranceDec,
        'association': Associations.ideaIntoleranceAss,
        'intention': Intentions.ideaIntoleranceInt,
        'Chart': Images.ideaIntolerance,
      };
    } else if (widget.parentScreen == 'Belief Code') {
      data = {
        'explanation': Explanations.beliefCode,
        'decoding': '',
        'association': '',
        'intention': '',
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == "Physical Allergy") {
      data = {
        'explanation': Explanations.physicalAllergyExp,
        'decoding': DecodingData.physicalAllergyDec,
        'association': Associations.physicalAllergyAss,
        'intention': Intentions.physicalAllergyInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == "Curse") {
      data = {
        'explanation': Explanations.curseExp,
        'decoding': DecodingData.curseDec,
        'association': Associations.curseAss,
        'intention': Intentions.curseInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == "Air Pollution") {
      data = {
        'explanation': Explanations.airPollution,
        'decoding': DecodingData.polDec,
        'association': Associations.plaAss,
        'intention': Intentions.airInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == "Water Pollution") {
      data = {
        'explanation': Explanations.waterExp,
        'decoding': DecodingData.waterDec,
        'association': Associations.waterAss,
        'intention': Intentions.waterInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == "Plastics") {
      data = {
        'explanation': Explanations.airPollution,
        'decoding': DecodingData.plasticDec,
        'association': Associations.plaAss,
        'intention': Intentions.plaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == "Cording") {
      data = {
        'explanation': Explanations.cordingExp,
        'decoding': DecodingData.cordingDec,
        'association': Associations.cordingAss,
        'intention': Intentions.cordingInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == "Entity") {
      data = {
        'explanation': Explanations.entityExp,
        'decoding': DecodingData.entityDec,
        'association': Associations.entityAss,
        'intention': Intentions.entityInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == "Post-Hypnotic Suggestions") {
      data = {
        'explanation': Explanations.postHypnoticExp,
        'decoding': DecodingData.postHypnoticDec,
        'association': Associations.postHypnoticAss,
        'intention': Intentions.postHypnoticInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == "Saboteur") {
      data = {
        'explanation': Explanations.saboteurExp,
        'decoding': DecodingData.saboteurDec,
        'association': Associations.saboteurAss,
        'intention': Intentions.saboteurInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == "Prenatal Trapped Emotion") {
      data = {
        'explanation': Explanations.prenatalTrappedEmotionsExp,
        'decoding': DecodingData.prenatalTrappedEmotionsDec,
        'association': Associations.prenatalTrappedEmotionsAss,
        'intention': Intentions.prenatalTrappedEmotionsInt,
        'Chart': Images.prenatalChart
      };
    } else if (widget.parentScreen == "Common Trapped Emotion") {
      data = {
        'explanation': Explanations.commonTrappedEmotionsExp,
        'decoding': DecodingData.commonTrappedEmotionsDec,
        'association': Associations.commonTrappedEmotionsAss,
        'intention': Intentions.commonTrappedEmotionsInt,
        'Chart': Images.prenatalChart
      };
    } else if (widget.parentScreen == "Preconception Trapped Emotion") {
      data = {
        'explanation': Explanations.preconceptionTrappedEmotionsExp,
        'decoding': DecodingData.preconceptionTrappedEmotionsDec,
        'association': Associations.preconceptionTrappedEmotionsAss,
        'intention': Intentions.preconceptionTrappedEmotionsInt,
        'Chart': Images.prenatalChart
      };
    } else if (widget.parentScreen == "Shared Trapped Emotion") {
      data = {
        'explanation': Explanations.sharedTrappedEmotionsExp,
        'decoding': DecodingData.sharedTrappedEmotionsDec,
        'association': Associations.sharedTrappedEmotionsAss,
        'intention': Intentions.sharedTrappedEmotionsInt,
        'Chart': Images.prenatalChart,
      };
    } else if (widget.parentScreen == "Inherited Trapped Emotion") {
      data = {
        'explanation': Explanations.inheritedTrappedEmotionsExp,
        'decoding': DecodingData.inheritedTrappedEmotionsDec,
        'association': Associations.inheritedTrappedEmotionsAss,
        'intention': Intentions.inheritedTrappedEmotionsInt,
        'Chart': Images.prenatalChart,
      };
    } else if (widget.parentScreen == "Absorb Trapped Emotion") {
      data = {
        'explanation': Explanations.absorbTrappedEmotionsExp,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.prenatalChart,
      };
    } else if (widget.parentScreen == '3rd Molar (Wisdom)') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == '1st Biscupid') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == '2nd Molar') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Canine') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == '1st Molar') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Lateral Incisor') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == '2ndBiscupid') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Central Incisor') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Vomer Bone') {
      data = {
        'explanation': Explanations.vomer,
        'decoding': DecodingData.vomerDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Inferior Nasal Conchae') {
      data = {
        'explanation': Explanations.vomer,
        'decoding': DecodingData.inferiorDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Lacrimal Bone') {
      data = {
        'explanation': Explanations.vomer,
        'decoding': DecodingData.vomerDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Palatine Bone') {
      data = {
        'explanation': Explanations.vomer,
        'decoding': DecodingData.vomerDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Radio Frequency') {
      data = {
        'explanation': Explanations.radioFrequency,
        'decoding': DecodingData.vomerDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Hyoid Bone') {
      data = {
        'explanation': Explanations.vomer,
        'decoding': DecodingData.vomerDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Zygomatic Bone') {
      data = {
        'explanation': Explanations.vomer,
        'decoding': DecodingData.vomerDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Mandible Bone') {
      data = {
        'explanation': Explanations.vomer,
        'decoding': DecodingData.vomerDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Nasal Bone') {
      data = {
        'explanation': Explanations.vomer,
        'decoding': DecodingData.vomerDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Maxilla Bone') {
      data = {
        'explanation': Explanations.vomer,
        'decoding': DecodingData.vomerDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Frontal Bone') {
      data = {
        'explanation': Explanations.vomer,
        'decoding': DecodingData.vomerDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Middle Ear Bone') {
      data = {
        'explanation': Explanations.vomer,
        'decoding': DecodingData.vomerDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Parietal Bone') {
      data = {
        'explanation': Explanations.vomer,
        'decoding': DecodingData.vomerDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Ethmoid Bone') {
      data = {
        'explanation': Explanations.vomer,
        'decoding': DecodingData.vomerDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Temporal Bone') {
      data = {
        'explanation': Explanations.vomer,
        'decoding': DecodingData.vomerDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Sphenoid Bone') {
      data = {
        'explanation': Explanations.vomer,
        'decoding': DecodingData.vomerDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Occipital Bone') {
      data = {
        'explanation': Explanations.vomer,
        'decoding': DecodingData.vomerDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == '2nd Bicuspid') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Cavitation') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.cavitationInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Amalgam Filling') {
      data = {
        'explanation': Explanations.amalgam,
        'decoding': DecodingData.amalgamDec,
        'association': Associations.amalgamAss,
        'intention': Intentions.amalgamInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Root Canal') {
      data = {
        'explanation': Explanations.rootCanal,
        'decoding': DecodingData.rootCanalDec,
        'association': Associations.rootCanalAss,
        'intention': Intentions.rootCanalInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Dental Product') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.dentalProduct,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Cavity') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.cavityInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Mercury') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.mercuryInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Cadmium') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.mercuryInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Lead') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.mercuryInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Aluminium') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.mercuryInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Arsenic') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.mercuryInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'otherHeavyMetal') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.mercuryInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Prenatal Emotional Compound') {
      data = {
        'explanation': Explanations.parentalEmotionalCompound,
        'decoding': DecodingData.prenatalEmotionalCompoundDec,
        'association': Associations.prenatalEmotionalCompoundAss,
        'intention': Intentions.prenatalEmotionalCompoundInt,
        'Chart': Images.prenatalChart,
      };
    } else if (widget.parentScreen == 'Common Emotional Compound') {
      data = {
        'explanation': Explanations.commonEmotionalCompound,
        'decoding': DecodingData.commonEmotionalCompoundDec,
        'association': Associations.commonEmotionalCompoundAss,
        'intention': Intentions.commonEmotionalCompoundInt,
        'Chart': Images.prenatalChart,
      };
    } else if (widget.parentScreen == 'Preconception Emotional Compound') {
      data = {
        'explanation': Explanations.preconceptionTrappedEmotionsExp,
        'decoding': DecodingData.commonEmotionalCompoundDec,
        'association': Associations.commonEmotionalCompoundAss,
        'intention': Intentions.commonEmotionalCompoundInt,
        'Chart': Images.prenatalChart,
      };
    } else if (widget.parentScreen == 'Shared Emotional Compound') {
      data = {
        'explanation': Explanations.sharedTrappedEmotionsExp,
        'decoding': DecodingData.sharedTrappedEmotionsDec,
        'association': Associations.sharedEmotionalCompoundAss,
        'intention': Intentions.sharedTrappedEmotionsInt,
        'Chart': Images.prenatalChart,
      };
    } else if (widget.parentScreen == 'Inherited Emotional Compound') {
      data = {
        'explanation': Explanations.inheritedTrappedEmotionsExp,
        'decoding': DecodingData.inheritedTrappedEmotionsDec,
        'association': Associations.inheritedTrappedEmotionsAss,
        'intention': Intentions.inheritedTrappedEmotionsInt,
        'Chart': Images.prenatalChart
      };
    } else if (widget.parentScreen == 'Absorb Emotional Compound') {
      data = {
        'explanation': Explanations.absorbEmotionalCompoundExp,
        'decoding': DecodingData.absorbEmotionalCompoundDec,
        'association': Associations.inheritedTrappedEmotionsAss,
        'intention': Intentions.inheritedTrappedEmotionsInt,
        'Chart': Images.prenatalChart
      };
    } else if (widget.parentScreen == 'Prenatal Heart-Wall Emotion') {
      data = {
        'explanation': Explanations.heartWallEmotionExp,
        'decoding': DecodingData.heartWallEmotionalDec,
        'association': Associations.heartWallEmotionAss,
        'intention': Intentions.prenatalHeartWallEmotionsInt,
        'Chart': Images.prenatalChart
      };
    } else if (widget.parentScreen == 'Common Heart-Wall Emotion') {
      data = {
        'explanation': Explanations.commonHeartWallEmotionExp,
        'decoding': DecodingData.commonHeartWallEmotionDec,
        'association': Associations.commonHeartWallEmotionAss,
        'intention': Intentions.commonHeartWallEmotionsInt,
        'Chart': Images.prenatalChart,
      };
    } else if (widget.parentScreen == 'Preconception Heart-Wall Emotion') {
      data = {
        'explanation': Explanations.preconceptionHeartWallEmotionExo,
        'decoding': DecodingData.preconceptionHeartWallDec,
        'association': Associations.preconceptionHeartWallAss,
        'intention': Intentions.preconceptionHeartWallEmotionInt,
        'Chart': Images.prenatalChart
      };
    } else if (widget.parentScreen == 'Shared Heart-Wall Emotion') {
      data = {
        'explanation': Explanations.sharedHeartWallEmotionExo,
        'decoding': DecodingData.sharedHeartWallDec,
        'association': Associations.sharedHeartWallAss,
        'intention': Intentions.sharedHeartWallEmotionInt,
        'Chart': Images.prenatalChart
      };
    } else if (widget.parentScreen == 'Inherited Heart-Wall Emotion') {
      data = {
        'explanation': Explanations.inheritedHeartWallEmotionExp,
        'decoding': DecodingData.inheritedHeartWallDec,
        'association': Associations.inheritedHeartWallAss,
        'intention': Intentions.inheritedHeartWallInt,
        'Chart': Images.prenatalChart,
      };
    } else if (widget.parentScreen == 'Absorb Heart-Wall Emotion') {
      data = {
        'explanation': Explanations.absorbedHeartWallEmotionExp,
        'decoding': DecodingData.absorbedHeartWallDec,
        'association': Associations.absorbedHeartWallAss,
        'intention': Intentions.absorbedHeartWallInt,
        'Chart': Images.prenatalChart,
      };
    } else if (widget.parentScreen == 'Will to...') {
      data = {
        'explanation': Explanations.willToExp,
        'decoding': DecodingData.willToDec,
        'association': Associations.wilToAss,
        'intention': Intentions.willToInt,
        'Chart': Images.mentalChart
      };
    } else if (widget.parentScreen == 'Memory Field') {
      data = {
        'explanation': Explanations.memoryFieldExp,
        'decoding': DecodingData.memoryFieldDec,
        'association': Associations.memoryFieldAss,
        'intention': Intentions.memoryFieldInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'No Will to...') {
      data = {
        'explanation': Explanations.noWillToExp,
        'decoding': DecodingData.noWillToDec,
        'association': Associations.noWillToAss,
        'intention': Intentions.noWillToInt,
        'Chart': Images.noWillToChart
      };
    } else if (widget.parentScreen == 'Despair Anchor') {
      data = {
        'explanation': Explanations.despairAnchor,
        'decoding': DecodingData.despairAnchorDec,
        'association': Associations.despairAss,
        'intention': Intentions.despairInt,
        'Chart': Images.despairChart
      };
    } else if (widget.parentScreen == 'Image') {
      data = {
        'explanation': Explanations.imageExp,
        'decoding': DecodingData.imageDec,
        'association': Associations.imageAss,
        'intention': Intentions.imageInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Broadcast Message') {
      data = {
        'explanation': Explanations.broadCastMessageExp,
        'decoding': DecodingData.broadCastMessageDec,
        'association': Associations.broadCastMessageAss,
        'intention': Intentions.broadCaseMessageInt,
        'Chart': Images.broadcastChart
      };
    } else if (widget.parentScreen == 'Seeking Hear Energy') {
      data = {
        'explanation': Explanations.seekingHeartEnergyExp,
        'decoding': DecodingData.seekingHeartEnergyDec,
        'association': Associations.seekingHeartEnergyAss,
        'intention': Intentions.seekingHeartEnergyInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Organ Communication') {
      data = {
        'explanation': Explanations.organCommunication,
        'decoding': DecodingData.organCommunicationDec,
        'association': Associations.organCommunicationAss,
        'intention': Intentions.organCommunication,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Current Symptom') {
      data = {
        'explanation': Explanations.currentSymptom,
        'decoding': DecodingData.currentSymptomDec,
        'association': Associations.currentSymptom,
        'intention': Intentions.currentSymptom,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Tongue') {
      data = {
        'explanation': Explanations.tongue,
        'decoding': DecodingData.tongueDec,
        'association': Associations.tongueAss,
        'intention': Intentions.tongueInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Liver') {
      data = {
        'explanation': Explanations.liverExp,
        'decoding': DecodingData.tongueDec,
        'association': Associations.tongueAss,
        'intention': Intentions.tongueInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Tendon') {
      data = {
        'explanation': Explanations.tendon,
        'decoding': DecodingData.tongueDec,
        'association': Associations.tongueAss,
        'intention': Intentions.tongueInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Fascia') {
      data = {
        'explanation': Explanations.fascia,
        'decoding': DecodingData.fasciaDec,
        'association': Associations.fasciaAss,
        'intention': Intentions.tongueInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Ligament') {
      data = {
        'explanation': Explanations.ligament,
        'decoding': DecodingData.ligamentDec,
        'association': Associations.fasciaAss,
        'intention': Intentions.tongueInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Cervical Disc') {
      data = {
        'explanation': Explanations.cervicalDisc,
        'decoding': DecodingData.cervicalDec,
        'association': Associations.cervicalAss,
        'intention': Intentions.cervicalInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Lower Thoracic Disc') {
      data = {
        'explanation': Explanations.lowerDisc,
        'decoding': DecodingData.lowerDiscDec,
        'association': Associations.cervicalAss,
        'intention': Intentions.lowerDiscInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Upper Thoracic Disc') {
      data = {
        'explanation': Explanations.upperDisc,
        'decoding': DecodingData.upperDec,
        'association': Associations.cervicalAss,
        'intention': Intentions.lowerDiscInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Lumbar Disc') {
      data = {
        'explanation': Explanations.upperDisc,
        'decoding': DecodingData.lumbarDec,
        'association': Associations.cervicalAss,
        'intention': Intentions.lowerDiscInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Tibia') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Femur') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Patella') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Febula') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Meniscus') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Ilium') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Isohium') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Pubis') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Tarsal Bone') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Distal Phalange') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Proximal Phalange') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Medial Phalange') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Metatarsal Bone') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Distal Phalange Bone') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Metacarpal Bone') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Medial Phalange') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Proximal Phalange Bone') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Hamate') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Scaphoid') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Capitate') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Lunate') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Trapezoid') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Triquetrum') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Trapezium') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Pisiform') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Clavicle Bone') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Ulna Bone') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Scapula Bone') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Radius Bone') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Sacrum') {
      data = {
        'explanation': Explanations.sacrum,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Coccyx') {
      data = {
        'explanation': Explanations.sacrum,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'C1 (Atlas)') {
      data = {
        'explanation': Explanations.sacrum,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'C7') {
      data = {
        'explanation': Explanations.c7,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'L1') {
      data = {
        'explanation': Explanations.l1,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'L2') {
      data = {
        'explanation': Explanations.l2,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'L3') {
      data = {
        'explanation': Explanations.l3,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'L4') {
      data = {
        'explanation': Explanations.l4,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'L5') {
      data = {
        'explanation': Explanations.l5,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'T1') {
      data = {
        'explanation': Explanations.t1,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'T2') {
      data = {
        'explanation': Explanations.t2,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'T3') {
      data = {
        'explanation': Explanations.t3,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'T4') {
      data = {
        'explanation': Explanations.t4,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'T5') {
      data = {
        'explanation': Explanations.t5,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'T6') {
      data = {
        'explanation': Explanations.t6,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'T7') {
      data = {
        'explanation': Explanations.t7,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'T8') {
      data = {
        'explanation': Explanations.t8,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'T9') {
      data = {
        'explanation': Explanations.t9,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'T10') {
      data = {
        'explanation': Explanations.t10,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'T11') {
      data = {
        'explanation': Explanations.t11,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'T12') {
      data = {
        'explanation': Explanations.t12,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'C2 (Axis)') {
      data = {
        'explanation': Explanations.sacrum,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'C6') {
      data = {
        'explanation': Explanations.c6,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'C3') {
      data = {
        'explanation': Explanations.c3,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'C5') {
      data = {
        'explanation': Explanations.c5,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'C5') {
      data = {
        'explanation': Explanations.c5,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'C4') {
      data = {
        'explanation': Explanations.c4,
        'decoding': DecodingData.sacrumDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == '8th Rib') {
      data = {
        'explanation': Explanations.eightRib,
        'decoding': DecodingData.eightRib,
        'association': Associations.eightRibAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == '9th Rib') {
      data = {
        'explanation': Explanations.eightRib,
        'decoding': DecodingData.eightRib,
        'association': Associations.eightRibAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == '10th Rib') {
      data = {
        'explanation': Explanations.eightRib,
        'decoding': DecodingData.eightRib,
        'association': Associations.eightRibAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == '11th Rib') {
      data = {
        'explanation': Explanations.eightRib,
        'decoding': DecodingData.eightRib,
        'association': Associations.eightRibAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == '12th Rib') {
      data = {
        'explanation': Explanations.eightRib,
        'decoding': DecodingData.eightRib,
        'association': Associations.eightRibAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == '13th Rib') {
      data = {
        'explanation': Explanations.eightRib,
        'decoding': DecodingData.eightRib,
        'association': Associations.eightRibAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == '4th Rib') {
      data = {
        'explanation': Explanations.eightRib,
        'decoding': DecodingData.eightRib,
        'association': Associations.eightRibAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == '7th Rib') {
      data = {
        'explanation': Explanations.eightRib,
        'decoding': DecodingData.eightRib,
        'association': Associations.eightRibAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == '1st Rib') {
      data = {
        'explanation': Explanations.eightRib,
        'decoding': DecodingData.eightRib,
        'association': Associations.eightRibAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == '6th Rib') {
      data = {
        'explanation': Explanations.eightRib,
        'decoding': DecodingData.eightRib,
        'association': Associations.eightRibAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == '2nd Rib') {
      data = {
        'explanation': Explanations.eightRib,
        'decoding': DecodingData.eightRib,
        'association': Associations.eightRibAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == '5th Rib') {
      data = {
        'explanation': Explanations.eightRib,
        'decoding': DecodingData.eightRib,
        'association': Associations.eightRibAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Fascial distortion') {
      data = {
        'explanation': Explanations.fascialDistortion,
        'decoding': DecodingData.eightRib,
        'association': Associations.eightRibAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == '3rd Rib') {
      data = {
        'explanation': Explanations.eightRib,
        'decoding': DecodingData.eightRib,
        'association': Associations.eightRibAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Xiphoid Process') {
      data = {
        'explanation': Explanations.vomer,
        'decoding': DecodingData.xiphoidProcessDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Manubrium') {
      data = {
        'explanation': Explanations.vomer,
        'decoding': DecodingData.xiphoidProcessDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Sternum') {
      data = {
        'explanation': Explanations.vomer,
        'decoding': DecodingData.xiphoidProcessDec,
        'association': Associations.sacrumAss,
        'intention': Intentions.sacrumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Humerus Bone') {
      data = {
        'explanation': Explanations.tibia,
        'decoding': DecodingData.tibiaDec,
        'association': Associations.tibiaAss,
        'intention': Intentions.tibiaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Lead Filling') {
      data = {
        'explanation': Explanations.lead,
        'decoding': DecodingData.lead,
        'association': Associations.leadAss,
        'intention': Intentions.leadInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Aluminum') {
      data = {
        'explanation': Explanations.aluminium,
        'decoding': DecodingData.lead,
        'association': Associations.leadAss,
        'intention': Intentions.leadInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Arsenic Product') {
      data = {
        'explanation': Explanations.arsenic,
        'decoding': DecodingData.lead,
        'association': Associations.leadAss,
        'intention': Intentions.leadInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Poisonous Plant') {
      data = {
        'explanation': Explanations.poisonousPlant,
        'decoding': DecodingData.poisonousDec,
        'association': Associations.poisonousAss,
        'intention': Intentions.mercuryInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Venom') {
      data = {
        'explanation': Explanations.venom,
        'decoding': DecodingData.venomDec,
        'association': Associations.venomAss,
        'intention': Intentions.venomInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Stress Hormone') {
      data = {
        'explanation': Explanations.stress,
        'decoding': DecodingData.stressDec,
        'association': Associations.stressAss,
        'intention': Intentions.stressInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Free Radical') {
      data = {
        'explanation': Explanations.free,
        'decoding': DecodingData.freeDec,
        'association': Associations.stressAss,
        'intention': Intentions.freeRadialInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Metabolic Waste') {
      data = {
        'explanation': Explanations.metabolic,
        'decoding': DecodingData.metabolicDec,
        'association': Associations.stressAss,
        'intention': Intentions.freeRadialInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Nutrient Toxicity') {
      data = {
        'explanation': Explanations.nutrient,
        'decoding': DecodingData.metabolicDec,
        'association': Associations.stressAss,
        'intention': Intentions.nutrientToxicInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Toxic Sound') {
      data = {
        'explanation': Explanations.toxic,
        'decoding': DecodingData.metabolicDec,
        'association': Associations.stressAss,
        'intention': Intentions.toxicInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Cold') {
      data = {
        'explanation': Explanations.cold,
        'decoding': DecodingData.coldDec,
        'association': Associations.coldAss,
        'intention': Intentions.coldInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Dampness') {
      data = {
        'explanation': Explanations.cold,
        'decoding': DecodingData.coldDec,
        'association': Associations.coldAss,
        'intention': Intentions.coldInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Dryness') {
      data = {
        'explanation': Explanations.dryness,
        'decoding': DecodingData.coldDec,
        'association': Associations.coldAss,
        'intention': Intentions.coldInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Summer Heat') {
      data = {
        'explanation': Explanations.summer,
        'decoding': DecodingData.coldDec,
        'association': Associations.coldAss,
        'intention': Intentions.coldInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Heat') {
      data = {
        'explanation': Explanations.heat,
        'decoding': DecodingData.coldDec,
        'association': Associations.coldAss,
        'intention': Intentions.coldInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Wind') {
      data = {
        'explanation': Explanations.wind,
        'decoding': DecodingData.coldDec,
        'association': Associations.coldAss,
        'intention': Intentions.coldInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Flavor Enhancer') {
      data = {
        'explanation': Explanations.flavor,
        'decoding': DecodingData.flavorDec,
        'association': Associations.flavorAss,
        'intention': Intentions.flavorInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Preservative') {
      data = {
        'explanation': Explanations.flavor,
        'decoding': DecodingData.flavorDec,
        'association': Associations.flavorAss,
        'intention': Intentions.flavorInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Processing Agent') {
      data = {
        'explanation': Explanations.flavor,
        'decoding': DecodingData.flavorDec,
        'association': Associations.flavorAss,
        'intention': Intentions.flavorInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'GMO Food') {
      data = {
        'explanation': Explanations.flavor,
        'decoding': DecodingData.flavorDec,
        'association': Associations.flavorAss,
        'intention': Intentions.flavorInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Nutritional Additive') {
      data = {
        'explanation': Explanations.flavor,
        'decoding': DecodingData.flavorDec,
        'association': Associations.flavorAss,
        'intention': Intentions.flavorInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Artificial Sweetener') {
      data = {
        'explanation': Explanations.artificial,
        'decoding': DecodingData.artificialDec,
        'association': Associations.flavorAss,
        'intention': Intentions.artificialInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Sugars') {
      data = {
        'explanation': Explanations.sugars,
        'decoding': DecodingData.artificialDec,
        'association': Associations.flavorAss,
        'intention': Intentions.artificialInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Natural Sweetener') {
      data = {
        'explanation': Explanations.natural,
        'decoding': DecodingData.artificialDec,
        'association': Associations.flavorAss,
        'intention': Intentions.artificialInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Sugar Alcohols') {
      data = {
        'explanation': Explanations.sugarAlcohols,
        'decoding': DecodingData.artificialDec,
        'association': Associations.flavorAss,
        'intention': Intentions.artificialInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Food Coloring') {
      data = {
        'explanation': Explanations.flavor,
        'decoding': DecodingData.flavorDec,
        'association': Associations.flavorAss,
        'intention': Intentions.flavorInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Flavor Enhancer') {
      data = {
        'explanation': Explanations.flavor,
        'decoding': DecodingData.flavorDec,
        'association': Associations.flavorAss,
        'intention': Intentions.flavorInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Microbial Poison') {
      data = {
        'explanation': Explanations.microbial,
        'decoding': DecodingData.microbialDec,
        'association': Associations.poisonousAss,
        'intention': Intentions.mercuryInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Microbiome') {
      data = {
        'explanation': Explanations.mirobiomeExp,
        'decoding': DecodingData.microbiomeDec,
        'association': Associations.microbiomeAss,
        'intention': Intentions.microbiomeInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Hip Muscle') {
      data = {
        'explanation': Explanations.hip,
        'decoding': DecodingData.hipDec,
        'association': Associations.hipAss,
        'intention': Intentions.hipInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Thigh Muscle') {
      data = {
        'explanation': Explanations.hip,
        'decoding': DecodingData.hipDec,
        'association': Associations.hipAss,
        'intention': Intentions.hipInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Foot Muscle') {
      data = {
        'explanation': Explanations.footExp,
        'decoding': DecodingData.hipDec,
        'association': Associations.hipAss,
        'intention': Intentions.hipInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Leg Muscle') {
      data = {
        'explanation': Explanations.legExp,
        'decoding': DecodingData.hipDec,
        'association': Associations.hipAss,
        'intention': Intentions.hipInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Other Heavy Metal') {
      data = {
        'explanation': Explanations.otherMetal,
        'decoding': DecodingData.otherDec,
        'association': Associations.leadAss,
        'intention': Intentions.leadInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == '"Dirty" Electricity') {
      data = {
        'explanation': Explanations.dirtyElectricity,
        'decoding': DecodingData.otherDec,
        'association': Associations.leadAss,
        'intention': Intentions.leadInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Magnetic Field') {
      data = {
        'explanation': Explanations.magnetic,
        'decoding': DecodingData.otherDec,
        'association': Associations.leadAss,
        'intention': Intentions.leadInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == "'Dirty' Electricity") {
      data = {
        'explanation': Explanations.dirtyElectricity,
        'decoding': DecodingData.otherDec,
        'association': Associations.leadAss,
        'intention': Intentions.leadInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Electric Field') {
      data = {
        'explanation': Explanations.electricField,
        'decoding': DecodingData.otherDec,
        'association': Associations.leadAss,
        'intention': Intentions.leadInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'X-Ray') {
      data = {
        'explanation': Explanations.xRay,
        'decoding': DecodingData.otherDec,
        'association': Associations.leadAss,
        'intention': Intentions.leadInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Radioactivity') {
      data = {
        'explanation': Explanations.radioActivity,
        'decoding': DecodingData.otherDec,
        'association': Associations.leadAss,
        'intention': Intentions.artificialInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Medication') {
      data = {
        'explanation': Explanations.medication,
        'decoding': DecodingData.medicationDec,
        'association': Associations.leadAss,
        'intention': Intentions.artificialInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Vaccination') {
      data = {
        'explanation': Explanations.vaccination,
        'decoding': DecodingData.otherDec,
        'association': Associations.leadAss,
        'intention': Intentions.leadInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'OTC Medicine') {
      data = {
        'explanation': Explanations.medication,
        'decoding': DecodingData.otherDec,
        'association': Associations.leadAss,
        'intention': Intentions.leadInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Depressant') {
      data = {
        'explanation': Explanations.depressant,
        'decoding': DecodingData.otherDec,
        'association': Associations.leadAss,
        'intention': Intentions.leadInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Stimulant') {
      data = {
        'explanation': Explanations.stimulant,
        'decoding': DecodingData.otherDec,
        'association': Associations.leadAss,
        'intention': Intentions.leadInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Hallucinogen') {
      data = {
        'explanation': Explanations.hallucinogen,
        'decoding': DecodingData.otherDec,
        'association': Associations.leadAss,
        'intention': Intentions.leadInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Cosmetic') {
      data = {
        'explanation': Explanations.cosmetic,
        'decoding': DecodingData.cleaningDec,
        'association': Associations.leadAss,
        'intention': Intentions.leadInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Building Material') {
      data = {
        'explanation': Explanations.building,
        'decoding': DecodingData.cleaningDec,
        'association': Associations.leadAss,
        'intention': Intentions.leadInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Cleaning Product') {
      data = {
        'explanation': Explanations.cleaning,
        'decoding': DecodingData.cleaningDec,
        'association': Associations.leadAss,
        'intention': Intentions.leadInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Carpet & Furnishing') {
      data = {
        'explanation': Explanations.carpet,
        'decoding': DecodingData.cleaningDec,
        'association': Associations.leadAss,
        'intention': Intentions.leadInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Agriculture') {
      data = {
        'explanation': Explanations.agricultural,
        'decoding': DecodingData.cleaningDec,
        'association': Associations.leadAss,
        'intention': Intentions.leadInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Magnetic Field') {
      data = {
        'explanation': Explanations.magnetic,
        'decoding': DecodingData.otherDec,
        'association': Associations.leadAss,
        'intention': Intentions.leadInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Nutrient') {
      data = {
        'explanation': Explanations.nutrientExp,
        'decoding': DecodingData.nutrientDec,
        'association': Associations.nutrientAss,
        'intention': Intentions.nutrientInt,
        'Chart': Images.nutrientChart,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Sleep') {
      data = {
        'explanation': Explanations.sleepExp,
        'decoding': DecodingData.sleepDec,
        'association': Associations.leadAss,
        'intention': Intentions.leadInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Herb & Spice') {
      data = {
        'explanation': Explanations.herbSpice,
        'decoding': DecodingData.herbSpiceDec,
        'association': Associations.leadAss,
        'intention': Intentions.herbSpiceInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Essential Oil') {
      data = {
        'explanation': Explanations.essentialOil,
        'decoding': DecodingData.herbSpiceDec,
        'association': Associations.leadAss,
        'intention': Intentions.herbSpiceInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Nutrient') {
      data = {
        'explanation': Explanations.nutrientExp,
        'decoding': DecodingData.nutrientDec,
        'association': Associations.nutrientAss,
        'intention': Intentions.nutrientInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Food') {
      data = {
        'explanation': Explanations.food,
        'decoding': DecodingData.nutrientDec,
        'association': Associations.nutrientAss,
        'intention': Intentions.nutrientInt,
        'Chart': Images.foodChart
      };
    } else if (widget.parentScreen == 'Superfood') {
      data = {
        'explanation': Explanations.superFood,
        'decoding': DecodingData.herbSpiceDec,
        'association': Associations.leadAss,
        'intention': Intentions.superfoodInt,
        'Chart': Images.superFoodChart
      };
    } else if (widget.parentScreen == 'Protein') {
      data = {
        'explanation': Explanations.protein,
        'decoding': DecodingData.herbSpiceDec,
        'association': Associations.proteinAss,
        'intention': Intentions.proteinInt,
        'Chart': Images.healthyProteinChart,
      };
    } else if (widget.parentScreen == 'Adjunctive Therapy') {
      data = {
        'explanation': Explanations.adjunctiveTherapy,
        'decoding': DecodingData.adjunctiveDec,
        'association': Associations.proteinAss,
        'intention': Intentions.adjunctiveInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Energy Medicine') {
      data = {
        'explanation': Explanations.energyMed,
        'decoding': DecodingData.energyDec,
        'association': Associations.proteinAss,
        'intention': Intentions.energyInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Stress Processing') {
      data = {
        'explanation': Explanations.stressProcessing,
        'decoding': DecodingData.stresssDec,
        'association': Associations.stressAss,
        'intention': Intentions.stresssInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Spiritual Nutrition' ||
        widget.parentScreen == 'Spirtual Nutrition') {
      data = {
        'explanation': Explanations.spiritualNutrition,
        'decoding': DecodingData.spirtualDec,
        'association': Associations.stressAss,
        'intention': Intentions.stressInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Creativity') {
      data = {
        'explanation': Explanations.creativity,
        'decoding': DecodingData.creativityDec,
        'association': Associations.stressAss,
        'intention': Intentions.stressInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Need for Movement') {
      data = {
        'explanation': Explanations.needMovement,
        'decoding': DecodingData.needMovement,
        'association': Associations.stressAss,
        'intention': Intentions.needInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Body Work') {
      data = {
        'explanation': Explanations.bodyWork,
        'decoding': DecodingData.bodyWorkDec,
        'association': Associations.stressAss,
        'intention': Intentions.bodyWorkInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == "Detoxification") {
      data = {
        'explanation': Explanations.detoxification,
        'decoding': DecodingData.needMovement,
        'association': Associations.stressAss,
        'intention': Intentions.needInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Distortion') {
      data = {
        'explanation': Explanations.detoxification,
        'decoding': DecodingData.distortionDec,
        'association': Associations.stressAss,
        'intention': Intentions.needInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Deficiency') {
      data = {
        'explanation': Explanations.detoxification,
        'decoding': DecodingData.distortionDec,
        'association': Associations.stressAss,
        'intention': Intentions.deficiencyInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Color Deficiency') {
      data = {
        'explanation': Explanations.colorDeficiency,
        'decoding': DecodingData.colorDeficiencyDec,
        'association': Associations.colorDeficiencyAss,
        'intention': Intentions.colorDeficiencyInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Color Excess') {
      data = {
        'explanation': Explanations.colorDeficiency,
        'decoding': DecodingData.colorEfficiency,
        'association': Associations.colorEfficiencyAss,
        'intention': Intentions.deficiencyInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Water Deficiency') {
      data = {
        'explanation': Explanations.waterDeficiency,
        'decoding': DecodingData.waterAbsDec,
        'association': Associations.waterAbsAss,
        'intention': Intentions.waterAbsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Water Quality') {
      data = {
        'explanation': Explanations.waterQuality,
        'decoding': DecodingData.colorEfficiency,
        'association': Associations.colorEfficiencyAss,
        'intention': Intentions.deficiencyInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Water Absorption') {
      data = {
        'explanation': Explanations.waterAbsorption,
        'decoding': DecodingData.waterAbsDec,
        'association': Associations.waterAbsAss,
        'intention': Intentions.waterAbsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Water Utilization') {
      data = {
        'explanation': Explanations.waterUtilization,
        'decoding': DecodingData.waterUtiDec,
        'association': Associations.waterUtiAss,
        'intention': Intentions.waterUtiInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Electrolyte Deficiency') {
      data = {
        'explanation': Explanations.electrolyteDeficiency,
        'decoding': DecodingData.electrolyteDec,
        'association': Associations.electrolyteAss,
        'intention': Intentions.electrolyteInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Electrolyte Utilization') {
      data = {
        'explanation': Explanations.electrolyteUtilization,
        'decoding': DecodingData.electrolyteUtiDec,
        'association': Associations.electrolyteUtiAss,
        'intention': Intentions.electrolyteUtiInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen ==
        'Emotional Reverberation (formerly Resonance)') {
      data = {
        'explanation': Explanations.emotionalReverberation,
        'decoding': DecodingData.emotionalReverberation,
        'association': Associations.emotionalReverBeration,
        'intention': Intentions.emotionalReverberation,
        'Chart': Images.emotionalReverberation
      };
    } else if (widget.parentScreen == 'Sickness Memory') {
      data = {
        'explanation': Explanations.sicknessMemory,
        'decoding': DecodingData.sicknessMemoryDec,
        'association': Associations.sicknessMemory,
        'intention': Intentions.sicknessMemoryInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Miasm') {
      data = {
        'explanation': Explanations.sicknessMemory,
        'decoding': DecodingData.sicknessMemoryDec,
        'association': Associations.sicknessMemory,
        'intention': Intentions.sicknessMemoryInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Mold') {
      data = {
        'explanation': Explanations.moldExp,
        'decoding': DecodingData.moldDec,
        'association': Associations.moldAss,
        'intention': Intentions.moldInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Parasite') {
      data = {
        'explanation': Explanations.parasiteExp,
        'decoding': DecodingData.parasiteDec,
        'association': Associations.parasiteAss,
        'intention': Intentions.parasiteInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Virus') {
      data = {
        'explanation': Explanations.virusExp,
        'decoding': DecodingData.visrusDec,
        'association': Associations.virusAss,
        'intention': Intentions.virusInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Fungus') {
      data = {
        'explanation': Explanations.fungusExp,
        'decoding': DecodingData.fungusDec,
        'association': Associations.fungusAss,
        'intention': Intentions.fungusInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Prion') {
      data = {
        'explanation': Explanations.prionExp,
        'decoding': DecodingData.prionDec,
        'association': Associations.prionAss,
        'intention': Intentions.prionInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Bacteria') {
      data = {
        'explanation': Explanations.bacteria,
        'decoding': DecodingData.bacteriaDec,
        'association': Associations.bacteriaAss,
        'intention': Intentions.bacteriaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Biofilm') {
      data = {
        'explanation': Explanations.biofilm,
        'decoding': DecodingData.biofilmDec,
        'association': Associations.biofilmAss,
        'intention': Intentions.biofilmInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Spirit Fetus') {
      data = {
        'explanation': Explanations.biofilm,
        'decoding': DecodingData.biofilmDec,
        'association': Associations.biofilmAss,
        'intention': Intentions.biofilmInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Fetus') {
      data = {
        'explanation': Explanations.fetus,
        'decoding': DecodingData.fetusDec,
        'association': Associations.fetusAss,
        'intention': Intentions.fetusInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Amniotic fluid') {
      data = {
        'explanation': Explanations.amnioticFluid,
        'decoding': DecodingData.amnioticDec,
        'association': Associations.amnioticAss,
        'intention': Intentions.amnioticInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Placenta') {
      data = {
        'explanation': Explanations.placenta,
        'decoding': DecodingData.placentaDec,
        'association': Associations.placentaAss,
        'intention': Intentions.placentaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Umbilical Cord') {
      data = {
        'explanation': Explanations.umbilical,
        'decoding': DecodingData.umbilicalDec,
        'association': Associations.umbilicalAss,
        'intention': Intentions.umbilicalInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Spirit Out of Body') {
      data = {
        'explanation': Explanations.spirit,
        'decoding': DecodingData.spiritDec,
        'association': Associations.spiritAss,
        'intention': Intentions.spiritInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Physical Disconnection') {
      data = {
        'explanation': Explanations.physicalExp,
        'decoding': DecodingData.physicalDec,
        'association': Associations.physicalAss,
        'intention': Intentions.physicalInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Spirit/Physical Disconnection') {
      data = {
        'explanation': Explanations.physicalExp,
        'decoding': DecodingData.physicalDec,
        'association': Associations.physicalAss,
        'intention': Intentions.physicalInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Spirit Break') {
      data = {
        'explanation': Explanations.spiritBreakExp,
        'decoding': DecodingData.spiritBreakDec,
        'association': Associations.spiritBreakAss,
        'intention': Intentions.spiritBreakInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Diurnal Cycle') {
      data = {
        'explanation': Explanations.spiritBreakExp,
        'decoding': DecodingData.spiritBreakDec,
        'association': Associations.spiritBreakAss,
        'intention': Intentions.spiritBreakInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Circadian Rhythm') {
      data = {
        'explanation': Explanations.circadianCycleExp,
        'decoding': DecodingData.circadianDec,
        'association': Associations.circadianCycleAss,
        'intention': Intentions.circadianCycleInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Spirit Body') {
      data = {
        'explanation': Explanations.spiritBodyExp,
        'decoding': DecodingData.spiritBodyDec,
        'association': Associations.spiritBodyAss,
        'intention': Intentions.spiritBodyInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Aura') {
      data = {
        'explanation': Explanations.auraExp,
        'decoding': DecodingData.auraDec,
        'association': Associations.auraAss,
        'intention': Intentions.auraInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Stomach Meridian') {
      data = {
        'explanation': Explanations.stomachMeridian,
        'decoding': DecodingData.stomachMeridianDec,
        'association': Associations.stomachMeridianAss,
        'intention': Intentions.stomachMeridianInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Lung Meridian') {
      data = {
        'explanation': Explanations.lungMeridian,
        'decoding': DecodingData.lungMeridianDec,
        'association': Associations.lungMeridianAss,
        'intention': Intentions.lungMeridianInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Bladder Meridian') {
      data = {
        'explanation': Explanations.bladderMeridian,
        'decoding': DecodingData.bladderMeridianDec,
        'association': Associations.bladderMeridianAss,
        'intention': Intentions.bladderMeridianInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Heart Meridian') {
      data = {
        'explanation': Explanations.heartMeridian,
        'decoding': DecodingData.heartMeridianDec,
        'association': Associations.heartMeridianAss,
        'intention': Intentions.heartMeridianInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Gallbladder Meridian') {
      data = {
        'explanation': Explanations.heartMeridian,
        'decoding': DecodingData.heartMeridianDec,
        'association': Associations.heartMeridianAss,
        'intention': Intentions.heartMeridianInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Pericardium Meridian') {
      data = {
        'explanation': Explanations.pericardiumMeridian,
        'decoding': DecodingData.pericardiumMeridianDec,
        'association': Associations.pericardiumMeridianAss,
        'intention': Intentions.pericardiumMeridianInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Liver Meridian') {
      data = {
        'explanation': Explanations.liverMeridian,
        'decoding': DecodingData.liverMeridianDec,
        'association': Associations.liverMeridianAss,
        'intention': Intentions.liverMeridianInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Triple Warmer Meridian') {
      data = {
        'explanation': Explanations.tripleMeridian,
        'decoding': DecodingData.tripleMeridianDec,
        'association': Associations.tripleMeridianAss,
        'intention': Intentions.tripleMeridian,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Kidney Meridian') {
      data = {
        'explanation': Explanations.kidneyMeridian,
        'decoding': DecodingData.kidneyMeridianDec,
        'association': Associations.kidneyMeridianAss,
        'intention': Intentions.kidneyMeridianInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Small Intestine Meridian') {
      data = {
        'explanation': Explanations.smallIntestineMeridian,
        'decoding': DecodingData.smallIntestineMeridianDec,
        'association': Associations.smallIntestineMeridianAss,
        'intention': Intentions.smallIntestineMeridianInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Spleen Meridian') {
      data = {
        'explanation': Explanations.spleenMeridian,
        'decoding': DecodingData.spleenMeridianDec,
        'association': Associations.spleenMeridianAss,
        'intention': Intentions.spleenInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Large Intestine Meridian') {
      data = {
        'explanation': Explanations.largeMeridian,
        'decoding': DecodingData.largeMeridianDec,
        'association': Associations.largeMeridianAss,
        'intention': Intentions.largeMeridianInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Yang Heel Meridian') {
      data = {
        'explanation': Explanations.yangMeridian,
        'decoding': DecodingData.yangHeelDec,
        'association': Associations.yangHeelAss,
        'intention': Intentions.yangHeelInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Conception Meridian') {
      data = {
        'explanation': Explanations.conceptionMeridianExtra,
        'decoding': DecodingData.conceptionDec,
        'association': Associations.yangHeelAss,
        'intention': Intentions.yangHeelInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Yin Heel Meridian') {
      data = {
        'explanation': Explanations.yinHeelMeridian,
        'decoding': DecodingData.yinHeelDec,
        'association': Associations.yangHeelAss,
        'intention': Intentions.yangHeelInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Penetrating Meridian') {
      data = {
        'explanation': Explanations.penetratingMeridian,
        'decoding': DecodingData.penetratingDec,
        'association': Associations.yangHeelAss,
        'intention': Intentions.yangHeelInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Governing Meridian') {
      data = {
        'explanation': Explanations.governingMeridian,
        'decoding': DecodingData.governingDec,
        'association': Associations.yangHeelAss,
        'intention': Intentions.yangHeelInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Yang Linking Meridian') {
      data = {
        'explanation': Explanations.yangLinking,
        'decoding': DecodingData.yangLinkingDec,
        'association': Associations.yangHeelAss,
        'intention': Intentions.yangHeelInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Popliteal Artery') {
      data = {
        'explanation': Explanations.popliteal,
        'decoding': DecodingData.popliteal,
        'association': Associations.poplitealAss,
        'intention': Intentions.poplitealInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Anterior Tibial Artery') {
      data = {
        'explanation': Explanations.popliteal,
        'decoding': DecodingData.popliteal,
        'association': Associations.poplitealAss,
        'intention': Intentions.anteriorInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Great Saphenous Vein') {
      data = {
        'explanation': Explanations.popliteal,
        'decoding': DecodingData.popliteal,
        'association': Associations.poplitealAss,
        'intention': Intentions.greatSaphenousInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Transverse Abdominis') {
      data = {
        'explanation': Explanations.transverseAbdominis,
        'decoding': DecodingData.transverseAbdominalDec,
        'association': Associations.transverseAss,
        'intention': Intentions.transverseAbdominalInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Transverse Fascia') {
      data = {
        'explanation': Explanations.transverseFascia,
        'decoding': DecodingData.transverseAbdominalDec,
        'association': Associations.transverseAss,
        'intention': Intentions.transverseAbdominalInt,
      };
    } else if (widget.parentScreen == 'Rectus Abdominis') {
      data = {
        'explanation': Explanations.rectus,
        'decoding': DecodingData.transverseAbdominalDec,
        'association': Associations.transverseAss,
        'intention': Intentions.transverseAbdominalInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Inguinal Ligament') {
      data = {
        'explanation': Explanations.inguinal,
        'decoding': DecodingData.transverseAbdominalDec,
        'association': Associations.transverseAss,
        'intention': Intentions.transverseAbdominalInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Pyramidalis') {
      data = {
        'explanation': Explanations.pyramidilis,
        'decoding': DecodingData.transverseAbdominalDec,
        'association': Associations.transverseAss,
        'intention': Intentions.transverseAbdominalInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'External Oblique') {
      data = {
        'explanation': Explanations.externalObliqye,
        'decoding': DecodingData.transverseAbdominalDec,
        'association': Associations.transverseAss,
        'intention': Intentions.transverseAbdominalInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Internal Oblique') {
      data = {
        'explanation': Explanations.internalOblique,
        'decoding': DecodingData.transverseAbdominalDec,
        'association': Associations.transverseAss,
        'intention': Intentions.transverseAbdominalInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Shoulder Muscle') {
      data = {
        'explanation': Explanations.shoulderMuscleExp,
        'decoding': DecodingData.shoulderDec,
        'association': Associations.shoulderAss,
        'intention': Intentions.shoulderInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Hand Muscle') {
      data = {
        'explanation': Explanations.handExp,
        'decoding': DecodingData.shoulderDec,
        'association': Associations.shoulderAss,
        'intention': Intentions.shoulderInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Forearm Muscle') {
      data = {
        'explanation': Explanations.foreArmExp,
        'decoding': DecodingData.shoulderDec,
        'association': Associations.shoulderAss,
        'intention': Intentions.shoulderInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Upper Arm Muscle') {
      data = {
        'explanation': Explanations.upperArmMuscle,
        'decoding': DecodingData.shoulderDec,
        'association': Associations.shoulderAss,
        'intention': Intentions.shoulderInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Anterior Neck Muscle') {
      data = {
        'explanation': Explanations.upperArmMuscle,
        'decoding': DecodingData.shoulderDec,
        'association': Associations.shoulderAss,
        'intention': Intentions.shoulderInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Posterior Neck Muscle') {
      data = {
        'explanation': Explanations.upperArmMuscle,
        'decoding': DecodingData.shoulderDec,
        'association': Associations.shoulderAss,
        'intention': Intentions.shoulderInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Deep') {
      data = {
        'explanation': Explanations.deep,
        'decoding': DecodingData.shoulderDec,
        'association': Associations.shoulderAss,
        'intention': Intentions.shoulderInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Superficial') {
      data = {
        'explanation': Explanations.superficial,
        'decoding': DecodingData.shoulderDec,
        'association': Associations.shoulderAss,
        'intention': Intentions.shoulderInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Superficial Head Muscle') {
      data = {
        'explanation': Explanations.superficialHead,
        'decoding': DecodingData.shoulderDec,
        'association': Associations.shoulderAss,
        'intention': Intentions.shoulderInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Deep Head Muscle') {
      data = {
        'explanation': Explanations.deepHead,
        'decoding': DecodingData.shoulderDec,
        'association': Associations.shoulderAss,
        'intention': Intentions.shoulderInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Serratus Anterior') {
      data = {
        'explanation': Explanations.serratusAnterior,
        'decoding': DecodingData.shoulderDec,
        'association': Associations.shoulderAss,
        'intention': Intentions.shoulderInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Diaphragm') {
      data = {
        'explanation': Explanations.diaphragm,
        'decoding': DecodingData.diaphragmDec,
        'association': Associations.shoulderAss,
        'intention': Intentions.shoulderInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Intercostal Muscle') {
      data = {
        'explanation': Explanations.serratusAnterior,
        'decoding': DecodingData.shoulderDec,
        'association': Associations.shoulderAss,
        'intention': Intentions.shoulderInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Pectoralis Minor') {
      data = {
        'explanation': Explanations.pectoralisMinor,
        'decoding': DecodingData.shoulderDec,
        'association': Associations.shoulderAss,
        'intention': Intentions.shoulderInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Serratus Posterior') {
      data = {
        'explanation': Explanations.serratusPosterior,
        'decoding': DecodingData.shoulderDec,
        'association': Associations.shoulderAss,
        'intention': Intentions.shoulderInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Pectoralis Major') {
      data = {
        'explanation': Explanations.pectoralisMajor,
        'decoding': DecodingData.shoulderDec,
        'association': Associations.shoulderAss,
        'intention': Intentions.shoulderInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Lymph Node') {
      data = {
        'explanation': Explanations.lymph,
        'decoding': DecodingData.shoulderDec,
        'association': Associations.shoulderAss,
        'intention': Intentions.lymphInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Bone Marrow') {
      data = {
        'explanation': Explanations.boneMarrow,
        'decoding': DecodingData.boneMarrowDec,
        'association': Associations.shoulderAss,
        'intention': Intentions.boneMarrowInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Tonsil or Adenoid') {
      data = {
        'explanation': Explanations.tonsil,
        'decoding': DecodingData.tonsilDec,
        'association': Associations.shoulderAss,
        'intention': Intentions.tonsilInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Peyers Patch') {
      data = {
        'explanation': Explanations.peyers,
        'decoding': DecodingData.peyersDec,
        'association': Associations.shoulderAss,
        'intention': Intentions.peyersInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Appendix') {
      data = {
        'explanation': Explanations.appendix,
        'decoding': DecodingData.peyersDec,
        'association': Associations.shoulderAss,
        'intention': Intentions.appendixInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Alveoli') {
      data = {
        'explanation': Explanations.alveoli,
        'decoding': DecodingData.alveoliDec,
        'association': Associations.alveoliAss,
        'intention': Intentions.alveoliInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Lung') {
      data = {
        'explanation': Explanations.lung,
        'decoding': DecodingData.alveoliDec,
        'association': Associations.alveoliAss,
        'intention': Intentions.lungInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Bronchiole') {
      data = {
        'explanation': Explanations.bronchiole,
        'decoding': DecodingData.alveoliDec,
        'association': Associations.alveoliAss,
        'intention': Intentions.bronchioleInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Nose') {
      data = {
        'explanation': Explanations.nose,
        'decoding': DecodingData.alveoliDec,
        'association': Associations.alveoliAss,
        'intention': Intentions.noseInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Bronchial Tube') {
      data = {
        'explanation': Explanations.bronchialTube,
        'decoding': DecodingData.alveoliDec,
        'association': Associations.alveoliAss,
        'intention': Intentions.bronchiaTubeInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Trachea') {
      data = {
        'explanation': Explanations.trachea,
        'decoding': DecodingData.tracheaDec,
        'association': Associations.alveoliAss,
        'intention': Intentions.tracheaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Larynx') {
      data = {
        'explanation': Explanations.larynx,
        'decoding': DecodingData.larynxDec,
        'association': Associations.alveoliAss,
        'intention': Intentions.larynxInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Pharynx') {
      data = {
        'explanation': Explanations.pharynx,
        'decoding': DecodingData.pharynxDec,
        'association': Associations.alveoliAss,
        'intention': Intentions.pharynxInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Nasal Cavity') {
      data = {
        'explanation': Explanations.nasal,
        'decoding': DecodingData.nasalDec,
        'association': Associations.alveoliAss,
        'intention': Intentions.nasalint,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Posterior Tibial Artery') {
      data = {
        'explanation': Explanations.popliteal,
        'decoding': DecodingData.popliteal,
        'association': Associations.poplitealAss,
        'intention': Intentions.posteriorInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Femoral Artery') {
      data = {
        'explanation': Explanations.popliteal,
        'decoding': DecodingData.popliteal,
        'association': Associations.poplitealAss,
        'intention': Intentions.femoralInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Peroneal Vein') {
      data = {
        'explanation': Explanations.popliteal,
        'decoding': DecodingData.popliteal,
        'association': Associations.poplitealAss,
        'intention': Intentions.peronealInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Basilar Vein') {
      data = {
        'explanation': Explanations.popliteal,
        'decoding': DecodingData.popliteal,
        'association': Associations.poplitealAss,
        'intention': Intentions.poplitealInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Brachial Vein') {
      data = {
        'explanation': Explanations.popliteal,
        'decoding': DecodingData.popliteal,
        'association': Associations.poplitealAss,
        'intention': Intentions.poplitealInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Radial Artery') {
      data = {
        'explanation': Explanations.popliteal,
        'decoding': DecodingData.popliteal,
        'association': Associations.poplitealAss,
        'intention': Intentions.poplitealInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Cranial Nerves') {
      data = {
        'explanation': Explanations.cranialNerves,
        'decoding': DecodingData.cranialNervesDec,
        'association': Associations.cranialNervesAss,
        'intention': Intentions.cranialNervesInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Cerebellum') {
      data = {
        'explanation': Explanations.cerebellum,
        'decoding': DecodingData.cerebellumDec,
        'association': Associations.cerebellumAss,
        'intention': Intentions.cerebellumInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Vestibular System') {
      data = {
        'explanation': Explanations.cerebellum,
        'decoding': DecodingData.cerebellumDec,
        'association': Associations.cerebellumAss,
        'intention': Intentions.vestibularInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Medulla') {
      data = {
        'explanation': Explanations.medulla,
        'decoding': DecodingData.cerebellumDec,
        'association': Associations.cerebellumAss,
        'intention': Intentions.medullaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Pons') {
      data = {
        'explanation': Explanations.cerebellum,
        'decoding': DecodingData.cerebellumDec,
        'association': Associations.cerebellumAss,
        'intention': Intentions.ponsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Midbrain') {
      data = {
        'explanation': Explanations.cerebellum,
        'decoding': DecodingData.cerebellumDec,
        'association': Associations.cerebellumAss,
        'intention': Intentions.midBrainInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Cropus Callosum') {
      data = {
        'explanation': Explanations.corpus,
        'decoding': DecodingData.cerebellumDec,
        'association': Associations.cerebellumAss,
        'intention': Intentions.corpusInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Frontal Lobe') {
      data = {
        'explanation': Explanations.frontal,
        'decoding': DecodingData.cerebellumDec,
        'association': Associations.cerebellumAss,
        'intention': Intentions.frontalInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Temporal Lobe') {
      data = {
        'explanation': Explanations.temporal,
        'decoding': DecodingData.testesDec,
        'association': Associations.cerebellumAss,
        'intention': Intentions.temporalInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Parietal Lobe') {
      data = {
        'explanation': Explanations.parietal,
        'decoding': DecodingData.testesDec,
        'association': Associations.cerebellumAss,
        'intention': Intentions.parietalInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Occipital Lobe') {
      data = {
        'explanation': Explanations.occipital,
        'decoding': DecodingData.cerebellumDec,
        'association': Associations.cerebellumAss,
        'intention': Intentions.occipitalInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Cerebrospinal Fluid') {
      data = {
        'explanation': Explanations.cerebellum,
        'decoding': DecodingData.cerebellumDec,
        'association': Associations.cerebellumAss,
        'intention': Intentions.cerebroInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Skin') {
      data = {
        'explanation': Explanations.skin,
        'decoding': DecodingData.skinDec,
        'association': Associations.skinAss,
        'intention': Intentions.skinInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Yin Linking Meridian') {
      data = {
        'explanation': Explanations.yinLinking,
        'decoding': DecodingData.yinLinkingDec,
        'association': Associations.yangHeelAss,
        'intention': Intentions.yangHeelInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Girdle Meridian') {
      data = {
        'explanation': Explanations.girdle,
        'decoding': DecodingData.girdleDec,
        'association': Associations.yangHeelAss,
        'intention': Intentions.yangHeelInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Nail') {
      data = {
        'explanation': Explanations.skin,
        'decoding': DecodingData.skinDec,
        'association': Associations.skinAss,
        'intention': Intentions.skinInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Hair') {
      data = {
        'explanation': Explanations.hair,
        'decoding': DecodingData.hairDec,
        'association': Associations.hairAss,
        'intention': Intentions.hairInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Uterus (Female only)') {
      data = {
        'explanation': Explanations.uterus,
        'decoding': DecodingData.uterusDec,
        'association': Associations.uterusAss,
        'intention': Intentions.uterusInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Bladder') {
      data = {
        'explanation': Explanations.bladder,
        'decoding': DecodingData.bladderDec,
        'association': Associations.bladderAss,
        'intention': Intentions.bladderInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Stomach') {
      data = {
        'explanation': Explanations.stomach,
        'decoding': DecodingData.stomachDec,
        'association': Associations.stomachAss,
        'intention': Intentions.stomachInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Gallbladder') {
      data = {
        'explanation': Explanations.gallBladder,
        'decoding': DecodingData.gallBladder,
        'association': Associations.gallbladderAss,
        'intention': Intentions.gallBladderInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Spleen') {
      data = {
        'explanation': Explanations.spleen,
        'decoding': DecodingData.spleen,
        'association': Associations.spleenAss,
        'intention': Intentions.spleenInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Heart') {
      data = {
        'explanation': Explanations.heart,
        'decoding': DecodingData.heartDec,
        'association': Associations.heartAss,
        'intention': Intentions.heartInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Lungs') {
      data = {
        'explanation': Explanations.lungs,
        'decoding': DecodingData.lungsDec,
        'association': Associations.lungsAss,
        'intention': Intentions.lungsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Kidneys') {
      data = {
        'explanation': Explanations.kidneys,
        'decoding': DecodingData.kidneysDec,
        'association': Associations.kidneysAss,
        'intention': Intentions.kidneysInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Liver') {
      data = {
        'explanation': Explanations.liver,
        'decoding': DecodingData.liverDec,
        'association': Associations.liverAss,
        'intention': Intentions.liverInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Interstitium') {
      data = {
        'explanation': Explanations.interstitium,
        'decoding': DecodingData.interstitium,
        'association': Associations.interstitium,
        'intention': Intentions.interstitium,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Testes' ||
        widget.parentScreen == 'Teste') {
      data = {
        'explanation': Explanations.testes,
        'decoding': DecodingData.testesDec,
        'association': Associations.testesAss,
        'intention': Intentions.testesInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Prostate') {
      data = {
        'explanation': Explanations.prostate,
        'decoding': DecodingData.prostateDec,
        'association': Associations.prostateAss,
        'intention': Intentions.prostateInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Seminal Vesicles') {
      data = {
        'explanation': Explanations.seminalVesicle,
        'decoding': DecodingData.seminalVesicle,
        'association': Associations.seminalVesicles,
        'intention': Intentions.seminalVesicles,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Epididymis') {
      data = {
        'explanation': Explanations.epididymis,
        'decoding': DecodingData.epididymisDec,
        'association': Associations.epididymis,
        'intention': Intentions.epididymisInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Bulbo-Urethral Gland') {
      data = {
        'explanation': Explanations.bulbo,
        'decoding': DecodingData.bulboDec,
        'association': Associations.bulboAss,
        'intention': Intentions.bulboInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Vas Deferense') {
      data = {
        'explanation': Explanations.vasDeferense,
        'decoding': DecodingData.vasDeferense,
        'association': Associations.vasAss,
        'intention': Intentions.vasInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Hypothalamus') {
      data = {
        'explanation': Explanations.hypothalamus,
        'decoding': DecodingData.hypothalamus,
        'association': Associations.hypothalamus,
        'intention': Intentions.hypothalamusInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Pituitary') {
      data = {
        'explanation': Explanations.pituitary,
        'decoding': DecodingData.pituitaryDec,
        'association': Associations.pituitaryAss,
        'intention': Intentions.pituitaryInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Pineal') {
      data = {
        'explanation': Explanations.pineal,
        'decoding': DecodingData.pinealDec,
        'association': Associations.pinealAss,
        'intention': Intentions.pinealInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Amygdala') {
      data = {
        'explanation': Explanations.amygdala,
        'decoding': DecodingData.amygdalaDec,
        'association': Associations.amygdalaAss,
        'intention': Intentions.amygdalaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Thalamus') {
      data = {
        'explanation': Explanations.thalamus,
        'decoding': DecodingData.thalamusDec,
        'association': Associations.thalamusAss,
        'intention': Intentions.thalamusInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Ovaries') {
      data = {
        'explanation': Explanations.overies,
        'decoding': DecodingData.vasDeferense,
        'association': Associations.overiesAss,
        'intention': Intentions.ovariesInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Placenta (Pregnancy Only)') {
      data = {
        'explanation': Explanations.placenta,
        'decoding': DecodingData.placentaDec,
        'association': Associations.placentaAss,
        'intention': Intentions.placentaInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Mammary Glands') {
      data = {
        'explanation': Explanations.mammary,
        'decoding': DecodingData.mammaryDec,
        'association': Associations.mammaryAss,
        'intention': Intentions.mammaryInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Thymus') {
      data = {
        'explanation': Explanations.thymus,
        'decoding': DecodingData.thymusDec,
        'association': Associations.thymusAss,
        'intention': Intentions.thymusInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Adrenals') {
      data = {
        'explanation': Explanations.adrenals,
        'decoding': DecodingData.adrenalsDec,
        'association': Associations.adrenalsAss,
        'intention': Intentions.adrenalsInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Adrenal') {
      data = {
        'explanation': Explanations.adrenals,
        'decoding': DecodingData.adrenalsDec,
        'association': Associations.adrenalsAss,
        'intention': Intentions.adrenalInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Thyroid') {
      data = {
        'explanation': Explanations.thyroid,
        'decoding': DecodingData.thyroidDec,
        'association': Associations.thyroidAss,
        'intention': Intentions.thyroidInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Pancreas') {
      data = {
        'explanation': Explanations.pancrease,
        'decoding': DecodingData.pancreaseDec,
        'association': Associations.pancreaseAss,
        'intention': Intentions.pancreaseInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Parathyroid') {
      data = {
        'explanation': Explanations.parathyroid,
        'decoding': DecodingData.parathyroidDec,
        'association': Associations.parathyroidAss,
        'intention': Intentions.parathyroidInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Parathyroid Gland') {
      data = {
        'explanation': Explanations.parathyroid,
        'decoding': DecodingData.parathyroidDec,
        'association': Associations.parathyroidAss,
        'intention': Intentions.parathyroiddInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Adipose Tissue') {
      data = {
        'explanation': Explanations.adipose,
        'decoding': DecodingData.adiposeDec,
        'association': Associations.adiposeAss,
        'intention': Intentions.adiposeInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Sleep') {
      data = {
        'explanation': Explanations.sleep,
        'decoding': DecodingData.sleepDec,
        'association': Associations.sleepAss,
        'intention': Intentions.sleepInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Herb & Spice') {
      data = {
        'explanation': Explanations.herb,
        'decoding': DecodingData.herbDec,
        'association': Associations.herbAss,
        'intention': Intentions.herbInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Essential Oil') {
      data = {
        'explanation': Explanations.essential,
        'decoding': DecodingData.essentialDec,
        'association': Associations.essentialAss,
        'intention': Intentions.essentialInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Pineal Gland') {
      data = {
        'explanation': Explanations.pinealGland,
        'decoding': DecodingData.pinealGland,
        'association': Associations.pinealGland,
        'intention': Intentions.pinealInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Basal Ganglia') {
      data = {
        'explanation': Explanations.basal,
        'decoding': DecodingData.basal,
        'association': Associations.basalAss,
        'intention': Intentions.basalInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Limbic System') {
      data = {
        'explanation': Explanations.limbic,
        'decoding': DecodingData.limbic,
        'association': Associations.limbic,
        'intention': Intentions.limbicInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Crown') {
      data = {
        'explanation': Explanations.crown,
        'decoding': DecodingData.crownDec,
        'association': Associations.crownAss,
        'intention': Intentions.crownInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Solar Plexus') {
      data = {
        'explanation': Explanations.solar,
        'decoding': DecodingData.solarDec,
        'association': Associations.solarAss,
        'intention': Intentions.solarInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Brow') {
      data = {
        'explanation': Explanations.brow,
        'decoding': DecodingData.browDec,
        'association': Associations.browAss,
        'intention': Intentions.browInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Sacral') {
      data = {
        'explanation': Explanations.sacral,
        'decoding': DecodingData.sacralDec,
        'association': Associations.sacralAss,
        'intention': Intentions.sacralInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Throat') {
      data = {
        'explanation': Explanations.throat,
        'decoding': DecodingData.throatDec,
        'association': Associations.throatAss,
        'intention': Intentions.throatInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Root') {
      data = {
        'explanation': Explanations.root,
        'decoding': DecodingData.throatDec,
        'association': Associations.throatAss,
        'intention': Intentions.throatInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Heart') {
      data = {
        'explanation': Explanations.heart,
        'decoding': DecodingData.heartDec,
        'association': Associations.heartAss,
        'intention': Intentions.heartInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Small Intestine') {
      data = {
        'explanation': Explanations.smallIntestine,
        'decoding': DecodingData.heartDec,
        'association': Associations.heartAss,
        'intention': Intentions.smallIntestineInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Ileocecal Valve') {
      data = {
        'explanation': Explanations.Ileocal,
        'decoding': DecodingData.heartDec,
        'association': Associations.heartAss,
        'intention': Intentions.IleocecalInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Left Subclavian') {
      data = {
        'explanation': Explanations.leftSubclavian,
        'decoding': DecodingData.leftSubclavianDec,
        'association': Associations.leftSubclavianAss,
        'intention': Intentions.leftSubclavianInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Aortic Arch') {
      data = {
        'explanation': Explanations.aortic,
        'decoding': DecodingData.aorticDec,
        'association': Associations.aorticAss,
        'intention': Intentions.aorticInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Right Subclavian Artery') {
      data = {
        'explanation': Explanations.rightSubclavian,
        'decoding': DecodingData.rightSubclavian,
        'association': Associations.rightSubclavianAss,
        'intention': Intentions.rightSubclavianInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Mitral Valve') {
      data = {
        'explanation': Explanations.mitral,
        'decoding': DecodingData.mitralDec,
        'association': Associations.mitralAss,
        'intention': Intentions.mitralInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Intercostal Artery') {
      data = {
        'explanation': Explanations.mitral,
        'decoding': DecodingData.mitralDec,
        'association': Associations.mitralAss,
        'intention': Intentions.mitralInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Left Pulmonary Artery') {
      data = {
        'explanation': Explanations.mitral,
        'decoding': DecodingData.mitralDec,
        'association': Associations.mitralAss,
        'intention': Intentions.mitralInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Right Pulmonary Artery') {
      data = {
        'explanation': Explanations.mitral,
        'decoding': DecodingData.mitralDec,
        'association': Associations.mitralAss,
        'intention': Intentions.mitralInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Cornary Artery') {
      data = {
        'explanation': Explanations.mitral,
        'decoding': DecodingData.mitralDec,
        'association': Associations.mitralAss,
        'intention': Intentions.mitralInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Pulmonary Valve') {
      data = {
        'explanation': Explanations.mitral,
        'decoding': DecodingData.mitralDec,
        'association': Associations.mitralAss,
        'intention': Intentions.mitralInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Aortic Valve') {
      data = {
        'explanation': Explanations.mitral,
        'decoding': DecodingData.mitralDec,
        'association': Associations.mitralAss,
        'intention': Intentions.mitralInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Tricuspid Valve') {
      data = {
        'explanation': Explanations.mitral,
        'decoding': DecodingData.mitralDec,
        'association': Associations.mitralAss,
        'intention': Intentions.mitralInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Vertebral artery') {
      data = {
        'explanation': Explanations.mitral,
        'decoding': DecodingData.mitralDec,
        'association': Associations.mitralAss,
        'intention': Intentions.mitralInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Anterior Facial Artery') {
      data = {
        'explanation': Explanations.mitral,
        'decoding': DecodingData.mitralDec,
        'association': Associations.mitralAss,
        'intention': Intentions.mitralInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Carotid Artery') {
      data = {
        'explanation': Explanations.mitral,
        'decoding': DecodingData.mitralDec,
        'association': Associations.mitralAss,
        'intention': Intentions.mitralInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Internal Jugular Vein') {
      data = {
        'explanation': Explanations.mitral,
        'decoding': DecodingData.mitralDec,
        'association': Associations.mitralAss,
        'intention': Intentions.mitralInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'External Jugular Vein') {
      data = {
        'explanation': Explanations.mitral,
        'decoding': DecodingData.mitralDec,
        'association': Associations.mitralAss,
        'intention': Intentions.mitralInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Inferior Sagittal Sinus') {
      data = {
        'explanation': Explanations.mitral,
        'decoding': DecodingData.mitralDec,
        'association': Associations.mitralAss,
        'intention': Intentions.mitralInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Superior Sagittal Sinus') {
      data = {
        'explanation': Explanations.mitral,
        'decoding': DecodingData.mitralDec,
        'association': Associations.mitralAss,
        'intention': Intentions.mitralInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Straight Sinus') {
      data = {
        'explanation': Explanations.mitral,
        'decoding': DecodingData.mitralDec,
        'association': Associations.mitralAss,
        'intention': Intentions.mitralInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'urethra') {
      data = {
        'explanation': Explanations.urethra,
        'decoding': DecodingData.urethra,
        'association': Associations.urethraAss,
        'intention': Intentions.urethraInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Ureter') {
      data = {
        'explanation': Explanations.ureter,
        'decoding': DecodingData.urethra,
        'association': Associations.urethraAss,
        'intention': Intentions.urethraInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Bladder') {
      data = {
        'explanation': Explanations.mitral,
        'decoding': DecodingData.mitralDec,
        'association': Associations.mitralAss,
        'intention': Intentions.mitralInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Kidney') {
      data = {
        'explanation': Explanations.mitral,
        'decoding': DecodingData.mitralDec,
        'association': Associations.mitralAss,
        'intention': Intentions.kidneyInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Colon') {
      data = {
        'explanation': Explanations.colon,
        'decoding': DecodingData.heartDec,
        'association': Associations.heartAss,
        'intention': Intentions.colonInt,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Cardiac Sphincter') {
      data = {
        'explanation': Explanations.cardiacSphincter,
        'decoding': DecodingData.cardiacSphincter,
        'association': Associations.cardianSphincter,
        'intention': Intentions.cardiacSphincter,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Esophagus') {
      data = {
        'explanation': Explanations.esophagus,
        'decoding': DecodingData.cardiacSphincter,
        'association': Associations.cardianSphincter,
        'intention': Intentions.cardiacSphincter,
        'Chart': Images.white,
      };
    } else if (widget.parentScreen == 'Pyloric Sphincter') {
      data = {
        'explanation': Explanations.pyloricSphincter,
        'decoding': DecodingData.pyloricSphincter,
        'association': Associations.pyloricSphincter,
        'intention': Intentions.cardiacSphincter,
        'Chart': Images.white,
      };
    }
  }
}
