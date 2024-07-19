import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../resources/images.dart';
import '../../utils/routes/rotes_named.dart';
import '../home.dart';

class BeforeTextScreen extends StatefulWidget {
  final String parentScreen;

  const BeforeTextScreen({super.key, required this.parentScreen});

  @override
  State<BeforeTextScreen> createState() => _BeforeTextScreenState();
}

class _BeforeTextScreenState extends State<BeforeTextScreen> {
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      if (selectedIndex == 0 ||
          selectedIndex == 1 ||
          selectedIndex == 2 ||
          selectedIndex == 3) {
        Navigator.pushReplacementNamed(context, 'HomeScreen');
      }
    });
  }

  List<Map<String, String>> data = [
    {'imageUrl': '${Images.energy}', 'text': 'third'},
    // Add more items here
  ];

  @override
  void initState() {
    setScreen();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('before Text Screen');
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Colors.white10,
      appBar: AppBar(
        centerTitle: true, // Center the app bar title
        //   automaticallyImplyLeading: false, // Remove the back button
        title: Text(widget.parentScreen), // Add an app bar
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white10,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: AlignedGridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              // crossAxisSpacing:1,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, data[index]['screen']!,
                        arguments: data[index]['text']);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20.0), // Adjust corner radius as needed
                      ),
                      surfaceTintColor: Colors.white,
                      color: Colors.white,
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            // Display image
                            const SizedBox(
                              height: 15,
                            ),

                            Stack(//textScreen
                                children: [
                              Image.asset(
                                data[index]['imageUrl']!,
                                fit: BoxFit.cover, // Adjust image fit as needed
                                height: height * 0.16, // Adjust image height
                              ),
                              data[index]['screen'] == 'textScreen'
                                  ? Positioned(
                                      right: 20,
                                      bottom: 0,
                                      child: ClipOval(
                                          child: Container(
                                              color: Colors.white,
                                              child: const Padding(
                                                padding: EdgeInsets.all(6.0),
                                                child: Icon(
                                                  Icons.copy,
                                                  size: 15,
                                                ),
                                              ))))
                                  : const SizedBox.shrink()
                            ]),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                textAlign: TextAlign.center,
                                data[index]['text']!,
                                style: const TextStyle(fontSize: 12.0),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:
                Icon(Icons.emoji_emotions_outlined), // Set icon color to white
            label: 'Emotion Code',
            backgroundColor:
                Colors.white, // Set background color to white (optional)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monitor_heart_outlined), // Set icon color to white
            label: 'Body Code',
            backgroundColor:
                Colors.white, // Set background color to white (optional)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_tree_outlined), // Set icon color to white
            label: 'Belief Code',
            backgroundColor:
                Colors.white, // Set background color to white (optional)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings), // Set icon color to white
            label: 'Settings',
            backgroundColor:
                Colors.white, // Set background color to white (optional)
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.purple, // Set selected item color to purple
        onTap: onItemTapped,
        unselectedItemColor:
            Colors.grey, // Set unselected item color to white (optional)
      ),
    );
  }

  void setScreen() {
    if (widget.parentScreen == "Post Traumatic") {
      data = [
        {
          'imageUrl': Images.physicalTrauma,
          'text': 'Physical Trauma',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.recoveryInterference,
          'text': 'Recovery Interference',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.physicalEmotionalShock,
          'text': 'Physical-Emotional Shock',
          'screen': RoutesName.textScreen
        },

        // Add more items here
      ];
    } else if (widget.parentScreen == "System or Micromanaging") {
      data = [
        {
          'imageUrl': Images.integumentary,
          'text': "Integumentary System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.circulatory,
          'text': "Circulatory System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.urinary,
          'text': "Urinary System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.digestive,
          'text': "Digestive System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.skeletal,
          'text': "Skeletal System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.endocrine,
          'text': "Endocrine System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.muscular,
          'text': "Muscular System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.immune,
          'text': "Immune/Lymphatic System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.respiratory,
          'text': "Respiratory System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.microbiome,
          'text': "Microbiome",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.reproductive,
          'text': "Reproductive System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.nervous,
          'text': "Nervous System",
          'screen': RoutesName.thirdScreen
        },
      ];
    } else if (widget.parentScreen == 'Connective Tissue') {
      data = [
        {
          'imageUrl': Images.tendon,
          'text': 'Tendon',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.fascia,
          'text': 'Fascia',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.ligament,
          'text': 'Ligament',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.disc,
          'text': 'Disc',
          'screen': RoutesName.thirdScreen
        },
      ];
    } else if (widget.parentScreen == 'Skeleton') {
      data = [
        {
          'imageUrl': Images.appendicular,
          'text': 'Appendicular Skeleton',
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.axial,
          'text': 'Axial Skeleton',
          'screen': RoutesName.thirdScreen
        },
      ];
    } else if (widget.parentScreen == "Allergy or Intolerance") {
      data = [
        {
          'imageUrl': Images.physicalIntolerance,
          'text': 'Physical Intolerance',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.idealAllergy,
          'text': 'Idea Allergy',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.idealIntro,
          'text': 'Idea Intolerance',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.physicalAllergy,
          'text': 'Physical Allergy',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Offensive") {
      data = [
        {
          'imageUrl': Images.curse,
          'text': 'Curse',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.cording,
          'text': 'Cording',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.entity,
          'text': 'Entity',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.postHypoSugges,
          'text': 'Post-Hypnotic Suggestions',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.saboteur,
          'text': 'Saboteur',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Lower Limb') {
      data = [
        {
          'imageUrl': Images.lowerLimbAppend,
          'text': 'Leg',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.pelvis,
          'text': 'Pelvis',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.foot,
          'text': 'Foot',
          'screen': RoutesName.beforeTextScreen
        }
      ];
    } else if (widget.parentScreen == 'Leg') {
      data = [
        {
          'imageUrl': Images.tibia,
          'text': 'Tibia',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.femur,
          'text': 'Femur',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.patella,
          'text': 'Patella',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.patella,
          'text': 'Febula',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.meniscus,
          'text': 'Meniscus',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Pelvis') {
      data = [
        {
          'imageUrl': Images.ilium,
          'text': 'Ilium',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.isohium,
          'text': 'Isohium',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.pubis,
          'text': 'Pubis',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Foot') {
      data = [
        {
          'imageUrl': Images.tarsalBone,
          'text': 'Tarsal Bone',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.distalBone,
          'text': 'Distal Phalange',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.proximalBone,
          'text': 'Proximal Phalange',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.medialBone,
          'text': 'Medial Phalange',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.metatarsalBone,
          'text': 'Metatarsal Bone',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Upper Limb') {
      data = [
        {
          'imageUrl': Images.wristBone,
          'text': 'Wrist or Hand Bone',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.clavicleBone,
          'text': 'Clavicle Bone',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.ulnaBone,
          'text': 'Ulna Bone',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.scapulaBone,
          'text': 'Scapula Bone',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.radiusBone,
          'text': 'Radius Bone',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.humerusBone,
          'text': 'Humerus Bone',
          'screen': RoutesName.textScreen
        }
      ];
    } else if (widget.parentScreen == 'Wrist or Hand Bone') {
      data = [
        {
          'imageUrl': Images.handBone,
          'text': 'Hand Bone',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.wristBone,
          'text': 'Wrist Bone',
          'screen': RoutesName.beforeTextScreen
        }
      ];
    } else if (widget.parentScreen == 'Hand Bone') {
      data = [
        {
          'imageUrl': Images.distal,
          'text': 'Distal Phalange Bone',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.metacarpalBone,
          'text': 'Metacarpal Bone',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.medial,
          'text': 'Medial Phalange',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.proximal,
          'text': 'Proximal Phalange Bone',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Lumbar Vertebrae') {
      data = [
        {'imageUrl': Images.l1, 'text': 'L1', 'screen': RoutesName.textScreen},
        {'imageUrl': Images.l5, 'text': 'L5', 'screen': RoutesName.textScreen},
        {'imageUrl': Images.l2, 'text': 'L2', 'screen': RoutesName.textScreen},
        {'imageUrl': Images.l4, 'text': 'L4', 'screen': RoutesName.textScreen},
        {'imageUrl': Images.l3, 'text': 'L3', 'screen': RoutesName.textScreen},
      ];
    } else if (widget.parentScreen == 'Thoracic Vertebrae 1-6') {
      data = [
        {'imageUrl': Images.t1, 'text': 'T1', 'screen': RoutesName.textScreen},
        {'imageUrl': Images.t2, 'text': 'T2', 'screen': RoutesName.textScreen},
        {'imageUrl': Images.t3, 'text': 'T3', 'screen': RoutesName.textScreen},
        {'imageUrl': Images.t4, 'text': 'T4', 'screen': RoutesName.textScreen},
        {'imageUrl': Images.t5, 'text': 'T5', 'screen': RoutesName.textScreen},
        {'imageUrl': Images.t6, 'text': 'T6', 'screen': RoutesName.textScreen},
      ];
    } else if (widget.parentScreen == 'Thoracic Vertebrae 7-12') {
      data = [
        {'imageUrl': Images.t7, 'text': 'T7', 'screen': RoutesName.textScreen},
        {'imageUrl': Images.t8, 'text': 'T8', 'screen': RoutesName.textScreen},
        {'imageUrl': Images.t9, 'text': 'T9', 'screen': RoutesName.textScreen},
        {
          'imageUrl': Images.t10,
          'text': 'T10',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.t11,
          'text': 'T11',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.t12,
          'text': 'T12',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Wrist Bone') {
      data = [
        {
          'imageUrl': Images.hamate,
          'text': 'Hamate',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.scaphoid,
          'text': 'Scaphoid',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.capitate,
          'text': 'Capitate',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.lunate,
          'text': 'Lunate',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.trapezoid,
          'text': 'Trapezoid',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.triquetrum,
          'text': 'Triquetrum',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.trapezium,
          'text': 'Trapezium',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.pisiform,
          'text': 'Pisiform',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Sacrum and Coccyx') {
      data = [
        {
          'imageUrl': Images.sacrum,
          'text': 'Sacrum',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.coccyx,
          'text': 'Coccyx',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Cervicle Vertebrae') {
      data = [
        {
          'imageUrl': Images.c1,
          'text': 'C1 (Atlas)',
          'screen': RoutesName.textScreen
        },
        {'imageUrl': Images.c7, 'text': 'C7', 'screen': RoutesName.textScreen},
        {
          'imageUrl': Images.c2,
          'text': 'C2 (Axis)',
          'screen': RoutesName.textScreen
        },
        {'imageUrl': Images.c6, 'text': 'C6', 'screen': RoutesName.textScreen},
        {'imageUrl': Images.c3, 'text': 'C3', 'screen': RoutesName.textScreen},
        {'imageUrl': Images.c5, 'text': 'C5', 'screen': RoutesName.textScreen},
        {'imageUrl': Images.c4, 'text': 'C4', 'screen': RoutesName.textScreen},
      ];
    } else if (widget.parentScreen == "Trapped Emotion") {
      data = [
        {
          'imageUrl': Images.prenatalEmotion,
          'text': 'Prenatal Trapped Emotion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.commonEmotion,
          'text': 'Common Trapped Emotion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.preconceptionEmotion,
          'text': 'Preconception Trapped Emotion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.sharedEmotion,
          'text': 'Shared Trapped Emotion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.inheritedEmotion,
          'text': 'Inherited Trapped Emotion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.absorbedEmotion,
          'text': 'Absorb Trapped Emotion',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Compound (old:psychic Trauma)") {
      data = [
        {
          'imageUrl': Images.prenatalEmotion,
          'text': 'Prenatal Emotional Compound',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.commonEmotion,
          'text': 'Common Emotional Compound',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.preconceptionEmotion,
          'text': 'Preconception Emotional Compound',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.sharedEmotion,
          'text': 'Shared Emotional Compound',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.inheritedEmotion,
          'text': 'Inherited Emotional Compound',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.absorbedEmotion,
          'text': 'Absorb Emotional Compound',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Heart-Wall Emotion") {
      data = [
        {
          'imageUrl': Images.prenatalEmotion,
          'text': 'Prenatal Heart-Wall Emotion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.commonEmotion,
          'text': 'Common Heart-Wall Emotion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.preconceptionEmotion,
          'text': 'Preconception Heart-Wall Emotion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.sharedEmotion,
          'text': 'Shared Heart-Wall Emotion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.inheritedEmotion,
          'text': 'Inherited Heart-Wall Emotion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.absorbedEmotion,
          'text': 'Absorb Heart-Wall Emotion',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Mental") {
      data = [
        {
          'imageUrl': Images.willTo,
          'text': 'Will to...',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.memoryField,
          'text': 'Memory Field',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.noWillTo,
          'text': 'No Will to...',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.programming,
          'text': 'Programming',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.broadcastToMee,
          'text': 'Broadcast Message',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Disconnection") {
      data = [
        {
          'imageUrl': Images.pregnancyRelated,
          'text': 'Pregnancy-Related',
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.spiritOutOfBody,
          'text': 'Spirit Out of Body',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.physicalDisconnection,
          'text': 'Physical Disconnection',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.spiritPhysicalDisconnection,
          'text': 'Spirit/Physical Disconnection',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.spiritBreak,
          'text': 'Spirit Break',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Programming") {
      data = [
        {
          'imageUrl': Images.despairAnchor,
          'text': 'Despair Anchor',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.image,
          'text': 'Image',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.beliefCodeProgramming,
          'text': 'Belief Code',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Reverberation") {
      data = [
        {
          'imageUrl': Images.seekingHEartEn,
          'text': 'Seeking Hear Energy',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.organComm,
          'text': 'Organ Communication',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.currentSym,
          'text': 'Current Symptom',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.emotionalReverb,
          'text': 'Emotional Reverberation (formerly Resonance)',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.sicknessMemory,
          'text': 'Sickness Memory',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.miasm,
          'text': 'Miasm',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Physical Pathogen") {
      data = [
        {
          'imageUrl': Images.mold,
          'text': 'Mold',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.parasite,
          'text': 'Parasite',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.virus,
          'text': 'Virus',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.fungus,
          'text': 'Fungus',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.prion,
          'text': 'Prion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.bacteria,
          'text': 'Bacteria',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.biofilm,
          'text': 'Biofilm',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Energy of Pathogen") {
      data = [
        {
          'imageUrl': Images.mold,
          'text': 'Mold',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.parasite,
          'text': 'Parasite',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.virus,
          'text': 'Virus',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.fungus,
          'text': 'Fungus',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.prion,
          'text': 'Prion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.bacteria,
          'text': 'Bacteria',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.biofilm,
          'text': 'Biofilm',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Mother's Brain") {
      data = [
        {
          'imageUrl': Images.spiritFetus,
          'text': 'Spirit Fetus',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.physicalFetus,
          'text': 'Physical Fetus',
          'screen': RoutesName.beforeTextScreen
        },
      ];
    } else if (widget.parentScreen == "Mother's Spirit") {
      data = [
        {
          'imageUrl': Images.spiritFetus,
          'text': 'Spirit Fetus',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.physicalFetus,
          'text': 'Physical Fetus',
          'screen': RoutesName.beforeTextScreen
        },
      ];
    } else if (widget.parentScreen == "Mother's Body") {
      data = [
        {
          'imageUrl': Images.spiritFetus,
          'text': 'Spirit Fetus',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.physicalFetus,
          'text': 'Physical Fetus',
          'screen': RoutesName.beforeTextScreen
        },
      ];
    } else if (widget.parentScreen == "Physical Fetus") {
      data = [
        {
          'imageUrl': Images.spiritFetus,
          'text': "Fetus",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.amnioticFluid,
          'text': "Amniotic fluid",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.spiritFetus,
          'text': "Placenta",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.spiritFetus,
          'text': "Umbilical Cord",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Organ") {
      data = [
        {
          'imageUrl': Images.uterus,
          'text': "Uterus (Female only)",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.bladder,
          'text': "Bladder",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.stomach,
          'text': "Stomach",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.gallBladder,
          'text': "Gallbladder",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.spleen,
          'text': "Spleen",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.heartOrgan,
          'text': "Heart",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.lungs,
          'text': "Lungs",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.kidneys,
          'text': "Kidneys",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.liver,
          'text': "Liver",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.intestines,
          'text': "Intestines",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.brain,
          'text': "Brain",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.gallBladder,
          'text': "Gallbladder",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'System') {
      data = [
        {
          'imageUrl': Images.integumentary,
          'text': "Integumentary System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.circulatory,
          'text': "Circulatory System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.urinary,
          'text': "Urinary System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.digestive,
          'text': "Digestive System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.skeletal,
          'text': "Skeletal System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.endocrine,
          'text': "Endocrine System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.muscular,
          'text': "Muscular System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.immune,
          'text': "Immune/Lymphatic System",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.respiratory,
          'text': "Respiratory System",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.microbiome,
          'text': "Microbiome",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.reproductive,
          'text': "Reproductive System",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.nervous,
          'text': "Nervous System",
          'screen': RoutesName.beforeTextScreen
        },
      ];
    } else if (widget.parentScreen == 'Lower Limb Muscle') {
      data = [
        {
          'imageUrl': Images.hipMuscle,
          'text': "Hip Muscle",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.thighMuscle,
          'text': "Thigh Muscle",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.footMuscle,
          'text': "Foot Muscle",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.legMuscle,
          'text': "Leg Muscle",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Abdominal Muscle') {
      data = [
        {
          'imageUrl': Images.transverseAbdominis,
          'text': "Transverse Abdominis",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.transverseFascia,
          'text': "Transverse fascia",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.rectusAbdominis,
          'text': "Rectus Abdominis",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.inguinalLigament,
          'text': "Inguinal Ligament",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.pyramidalis,
          'text': "Pyramidalis",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.externalOblique,
          'text': "External Oblique",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.internalOblique,
          'text': "Internal Oblique",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Upper Limb Muscle') {
      data = [
        {
          'imageUrl': Images.shoulderMuscle,
          'text': "Shoulder Muscle",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.handMuscle,
          'text': "Hand Muscle",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.foreArmMuscle,
          'text': "Forearm Muscle",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.upperArmMuscle,
          'text': "Upper Arm Muscle",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Neck Muscle') {
      data = [
        {
          'imageUrl': Images.neckMuscle,
          'text': "Anterior Neck Muscle",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.posteriorNeck,
          'text': "Posterior Neck Muscle",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Back Muscle') {
      data = [
        {
          'imageUrl': Images.deepMuscle,
          'text': "Deep",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.superficial,
          'text': "Superficial",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Head Muscle') {
      data = [
        {
          'imageUrl': Images.superficialHead,
          'text': "Superficial Head Muscle",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.deepHead,
          'text': "Deep Head Muscle",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Thoracic Muscle') {
      data = [
        {
          'imageUrl': Images.serratusAnterior,
          'text': "Serratus Anterior",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.diaphragm,
          'text': "Diaphragm",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.intercostalMuscle,
          'text': "Intercostal Muscle",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.pectoralisMinor,
          'text': "Pectoralis Minor",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.serratusPosterior,
          'text': "Serratus Posterior",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.pectoralisMajor,
          'text': "Pectoralis Major",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Immune/Lymphatic System') {
      data = [
        {
          'imageUrl': Images.lymph,
          'text': "Lymph Node",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.boneMarrow,
          'text': "Bone Marrow",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.thymus,
          'text': "Thymus",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.liver,
          'text': "Liver",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.tongue,
          'text': "Tonsil or Adenoid",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.spleen,
          'text': "Spleen",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.peyers,
          'text': "Peyers Patch",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.appendix,
          'text': "Appendix",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Respiratory System') {
      data = [
        {
          'imageUrl': Images.alveoli,
          'text': "Alveoli",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.lungs,
          'text': "Lung",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.bronchiole,
          'text': "Bronchiole",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.nose,
          'text': "Nose",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.bronchialTube,
          'text': "Bronchial Tube",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.trachea,
          'text': "Trachea",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.larynx,
          'text': "Larynx",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.pharynx,
          'text': "Pharynx",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.nasalCavity,
          'text': "Nasal Cavity",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Reproductive System') {
      data = [
        {
          'imageUrl': Images.maleGlands,
          'text': "Male",
          'screen': RoutesName.thirdScreen,
        },
        {
          'imageUrl': Images.femaleGlands,
          'text': "Female",
          'screen': RoutesName.thirdScreen,
        },
      ];
    } else if (widget.parentScreen == 'Nervous System') {
      data = [
        {
          'imageUrl': Images.centralNervousSystem,
          'text': "Central Nervous System",
          'screen': RoutesName.thirdScreen,
        },
        {
          'imageUrl': Images.peripheralNervousSystem,
          'text': "Peripheral Nervous System",
          'screen': RoutesName.thirdScreen,
        },
      ];
    } else if (widget.parentScreen == "Deep Structures") {
      data = [
        {
          'imageUrl': Images.hypothalamusBlue,
          'text': "Hypothalamus",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.pinealBlue,
          'text': "Pineal Gland",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.basal,
          'text': "Basal Ganglia",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.thalamusBlue,
          'text': "Thalamus",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.limbic,
          'text': "Limbic System",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.pituitaryBlue,
          'text': "Pituitary",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.amygdalaBlue,
          'text': "Amygdala",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Cerebrum") {
      data = [
        {
          'imageUrl': Images.corpus,
          'text': "Cropus Callosum",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.frontal,
          'text': "Frontal Lobe",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.temporal,
          'text': "Temporal Lobe",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.parietal,
          'text': "Parietal Lobe",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.occipital,
          'text': "Occipital Lobe",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Brain Stem") {
      data = [
        {
          'imageUrl': Images.medulla,
          'text': "Medulla",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.pons,
          'text': "Pons",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.midbrain,
          'text': "Midbrain",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Gland") {
      data = [
        {
          'imageUrl': Images.maleGlands,
          'text': "Male Glands",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.brainGlands,
          'text': "Brain Glands",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.femaleGlands,
          'text': "Female Glands",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.others,
          'text': "Other",
          'screen': RoutesName.thirdScreen
        },
      ];
    } else if (widget.parentScreen == "Body Cycle or Rhythm") {
      data = [
        {
          'imageUrl': Images.diurnalCycle,
          'text': "Diurnal Cycle",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.circadianRhythm,
          'text': "Circadian Rhythm",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Energy Body") {
      data = [
        {
          'imageUrl': Images.spiritBody,
          'text': "Spirit Body",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.chakra,
          'text': "Chakra",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.aura,
          'text': "Aura",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.meridian,
          'text': "Meridian",
          'screen': RoutesName.beforeTextScreen
        },
      ];
    } else if (widget.parentScreen == "Dental Toxin") {
      data = [
        {
          'imageUrl': Images.teethForReference,
          'text': "Teeth (for reference)",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.cavitation,
          'text': "Cavitation",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.amalgam,
          'text': "Amalgam Filling",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.rootCanal,
          'text': "Root Canal",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.dentalProduct,
          'text': "Dental Product",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.cavity,
          'text': "Cavity",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Heavy Metal") {
      data = [
        {
          'imageUrl': Images.mercury,
          'text': "Mercury",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.cadmium,
          'text': "Cadmium",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.lead,
          'text': "Lead Filling",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.aluminium,
          'text': "Aluminum",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.arsenic,
          'text': "Arsenic Product",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.otherHeavyMetal,
          'text': "Other Heavy Metal",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Biological Poison") {
      data = [
        {
          'imageUrl': Images.poisonousPlant,
          'text': "Poisonous Plant",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.venom,
          'text': "Venom",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.microbialPoison,
          'text': "Microbial Poison",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Pernicious Influence') {
      data = [
        {
          'imageUrl': Images.cold,
          'text': "Cold",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.dryness,
          'text': "Dryness",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.summerHeat,
          'text': "Summer Heat",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.heat,
          'text': "Heat",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.wind,
          'text': "Wind",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.dampness,
          'text': "Dampness",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Cervical Vertebrae') {
      data = [
        {
          'imageUrl': Images.c1,
          'text': "C1 (Atlas)",
          'screen': RoutesName.textScreen
        },
        {'imageUrl': Images.c7, 'text': "C7", 'screen': RoutesName.textScreen},
        {
          'imageUrl': Images.c2,
          'text': "C2 (Axis)",
          'screen': RoutesName.textScreen
        },
        {'imageUrl': Images.c6, 'text': "C6", 'screen': RoutesName.textScreen},
        {'imageUrl': Images.c3, 'text': "C3", 'screen': RoutesName.textScreen},
        {'imageUrl': Images.c5, 'text': "C5", 'screen': RoutesName.textScreen},
        {'imageUrl': Images.c4, 'text': "C4", 'screen': RoutesName.textScreen},
      ];
    } else if (widget.parentScreen == 'Vertebral-Column') {
      data = [
        {
          'imageUrl': Images.sacrumAndCoccyx,
          'text': "Sacrum and Coccyx",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.cervicleVertebrae,
          'text': "Cervical Vertebrae",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.lumbarVertebrae,
          'text': "Lumbar Vertebrae",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.thoracicVertebrae16,
          'text': "Thoracic Vertebrae 1-6",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.thoracicVertebrae712,
          'text': "Thoracic Vertebrae 7-12",
          'screen': RoutesName.beforeTextScreen
        },
      ];
    } else if (widget.parentScreen == 'Common Misalignment') {
      data = [
        {
          'imageUrl': Images.skull,
          'text': "Skull",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.uterus,
          'text': "Uterus",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.vertebralColumn,
          'text': "Vertebral Column",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.stomach,
          'text': "Stomach",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.kidney,
          'text': "Kidney",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.fascia,
          'text': "Fascial distortion",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Soft Tissues') {
      data = [
        {
          'imageUrl': Images.organ,
          'text': "Organ",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.gland,
          'text': "Gland",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.connectiveTissue,
          'text': "Connective Tissue",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.fascia,
          'text': "Fascia",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Excess") {
      data = [
        {
          'imageUrl': Images.perniciousInfluence,
          'text': "Pernicious Influence",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.stressHormone,
          'text': "Stress Hormone",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.freePadical,
          'text': "Free Radical",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.metabolicWaste,
          'text': "Metabolic Waste",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.nutrientToxicity,
          'text': "Nutrient Toxicity",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.toxicSound,
          'text': "Toxic Sound",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Sweetener') {
      data = [
        {
          'imageUrl': Images.artificialSweetener,
          'text': "Artificial Sweetener",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.sugars,
          'text': "Sugars",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.naturalSweetener,
          'text': "Natural Sweetener",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.sugarAlcohols,
          'text': "Sugar Alcohols",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Food Toxin") {
      data = [
        {
          'imageUrl': Images.flavorEnhancer,
          'text': "Flavor Enhancer",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.preservative,
          'text': "Preservative",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.processingAgent,
          'text': "Processing Agent",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.gmoFood,
          'text': "GMO Food",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.sweetener,
          'text': "Sweetener",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.nutritionAdditive,
          'text': "Nutritional Additive",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.foodColoring,
          'text': "Food Coloring",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Nutrition') {
      data = [
        {
          'imageUrl': Images.nutrition,
          'text': 'Nutrient',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.food,
          'text': "Food",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.superFood,
          'text': "SuperFood",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.protein,
          'text': 'Protein',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Hydration') {
      data = [
        {
          'imageUrl': Images.waterDeficiency,
          'text': 'Water Deficiency',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.waterQuality,
          'text': 'Water Quality',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.waterAbsorption,
          'text': 'Water Absorption',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.waterUtilization,
          'text': 'Water Utilization',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.electrolyteDeficiency,
          'text': 'Electrolyte Deficiency',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.electrolyteUtilization,
          'text': 'Electrolyte Utilization',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Color Imbalance') {
      data = [
        {
          'imageUrl': Images.colorDeficiency,
          'text': 'Color Deficiency',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.colorExcess,
          'text': 'Color Excess',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Magnetic Field') {
      data = [
        {
          'imageUrl': Images.distortion,
          'text': 'Distortion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.deficiency,
          'text': 'Deficiency',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Electromagnetic Radiation") {
      data = [
        {
          'imageUrl': Images.dirtyElectricity,
          'text': "'Dirty' Electricity",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.magneticField,
          'text': "Magnetic Field",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.electricalField,
          'text': "Electric Field",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.radioFrequency,
          'text': "Radio Frequency",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.xRay,
          'text': "X-Ray",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.radioActivity,
          'text': "Radioactivity",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Drug") {
      data = [
        {
          'imageUrl': Images.drug,
          'text': "Pharmaceutical",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.recredential,
          'text': "Recreational",
          'screen': RoutesName.thirdScreen
        },
      ];
    } else if (widget.parentScreen == "Environmental") {
      data = [
        {
          'imageUrl': Images.cosmetic,
          'text': "Cosmetic",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.buildingMaterial,
          'text': "Building Material",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.cleaningProduct,
          'text': "Cleaning Product",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.carpetFurnishing,
          'text': "Carpet & Furnishing",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.toxin,
          'text': "Pollution",
          'screen': RoutesName.secondScreen
        },
        {
          'imageUrl': Images.agricultural,
          'text': "Agriculture",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Outside Need') {
      data = [
        {
          'imageUrl': Images.mentalOrEmotionalFitness,
          'text': 'Mental or Emotional Fitness',
          'screen': RoutesName.beforeTextScreen,
        },
        {
          'imageUrl': Images.adjunctiveTherapy,
          'text': 'Adjunctive Therapy',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.physicalNeed,
          'text': 'Physical Need',
          'screen': RoutesName.beforeTextScreen,
        },
        {
          'imageUrl': Images.energyMedicine,
          'text': 'Energy Medicine',
          'screen': RoutesName.textScreen,
        },
      ];
    } else if (widget.parentScreen == 'Mental or Emotional Fitness') {
      data = [
        {
          'imageUrl': Images.stressProcessing,
          'text': 'Stress Processing',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.spirtualNutrition,
          'text': 'Spirtual Nutrition',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.creativity,
          'text': 'Creativity',
          'screen': RoutesName.textScreen,
        },
      ];
    } else if (widget.parentScreen == 'Physical Need') {
      data = [
        {
          'imageUrl': Images.needForMovement,
          'text': 'Need for Movement',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.bodyWork,
          'text': 'Body Work',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.detoxification,
          'text': 'Detoxification',
          'screen': RoutesName.textScreen,
        },
      ];
    } else if (widget.parentScreen == 'Upper Teeth') {
      data = [
        {
          'imageUrl': Images.leftUpperTeeth,
          'text': 'Left Upper Teeth',
          'screen': RoutesName.beforeTextScreen,
        },
        {
          'imageUrl': Images.rightUpperTeeth,
          'text': 'Right Upper Teeth',
          'screen': RoutesName.beforeTextScreen
        },
      ];
    } else if (widget.parentScreen == 'Lower Teeth') {
      data = [
        {
          'imageUrl': Images.leftLowerTeeth,
          'text': 'Left Lower Teeth',
          'screen': RoutesName.beforeTextScreen,
        },
        {
          'imageUrl': Images.rightLowerTeeth,
          'text': 'Right Lower Teeth',
          'screen': RoutesName.beforeTextScreen
        },
      ];
    } else if (widget.parentScreen == 'Left Lower Teeth') {
      data = [
        {
          'imageUrl': Images.thirdMolar,
          'text': '3rd Molar (Wisdom)',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.firstBiscupid,
          'text': '1st Biscupid',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.secondMolar,
          'text': '2nd Molar',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.canine,
          'text': 'Canine',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.firstMolar,
          'text': '1st Molar',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.lateralIncisor,
          'text': 'Lateral Incisor',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.secondBiscupid,
          'text': '2ndBiscupid',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.centralIncisor,
          'text': 'Central Incisor',
          'screen': RoutesName.textScreen,
        }
      ];
    } else if (widget.parentScreen == 'Right Lower Teeth') {
      data = [
        {
          'imageUrl': Images.thirdMolar,
          'text': '3rd Molar (Wisdom)',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.firstBiscupid,
          'text': '1st Biscupid',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.secondMolar,
          'text': '2nd Molar',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.canine,
          'text': 'Canine',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.firstMolar,
          'text': '1st Molar',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.lateralIncisor,
          'text': 'Lateral Incisor',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.secondBiscupid,
          'text': '2ndBiscupid',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.centralIncisor,
          'text': 'Central Incisor',
          'screen': RoutesName.textScreen,
        }
      ];
    } else if (widget.parentScreen == 'Left Lower Teeth') {
      data = [
        {
          'imageUrl': Images.thirdMolar,
          'text': '3rd Molar (Wisdom)',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.firstBiscupid,
          'text': '1st Biscupid',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.secondMolar,
          'text': '2nd Molar',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.canine,
          'text': 'Canine',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.firstMolar,
          'text': '1st Molar',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.lateralIncisor,
          'text': 'Lateral Incisor',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.secondBiscupid,
          'text': '2ndBiscupid',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.centralIncisor,
          'text': 'Central Incisor',
          'screen': RoutesName.textScreen,
        }
      ];
    } else if (widget.parentScreen == 'Left Upper Teeth') {
      data = [
        {
          'imageUrl': Images.thirdMolar,
          'text': '3rd Molar (Wisdom)',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.firstBiscupid,
          'text': '1st Biscupid',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.secondMolar,
          'text': '2nd Molar',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.canine,
          'text': 'Canine',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.firstMolar,
          'text': '1st Molar',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.lateralIncisor,
          'text': 'Lateral Incisor',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.secondBiscupid,
          'text': '2ndBiscupid',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.centralIncisor,
          'text': 'Central Incisor',
          'screen': RoutesName.textScreen,
        }
      ];
    } else if (widget.parentScreen == 'Chakra') {
      data = [
        {
          'imageUrl': Images.crown,
          'text': 'Crown',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.solarPlexus,
          'text': 'Solar Plexus',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.brow,
          'text': 'Brow',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.sacral,
          'text': 'Sacral',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.throat,
          'text': 'Throat',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.root,
          'text': 'Root',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.heart,
          'text': 'Heart',
          'screen': RoutesName.textScreen
        }
      ];
    } else if (widget.parentScreen == 'Right Upper Teeth') {
      data = [
        {
          'imageUrl': Images.upperTeeth,
          'text': '2nd Molar',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.upperTeeth,
          'text': 'Canine',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.upperTeeth,
          'text': '1st Molar',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.upperTeeth,
          'text': 'Lateral Incisor',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.upperTeeth,
          'text': '2nd Bicuspid',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.upperTeeth,
          'text': 'Central Incisor',
          'screen': RoutesName.textScreen,
        }
      ];
    } else if (widget.parentScreen == 'Meridian') {
      data = [
        {
          'imageUrl': Images.meridian,
          'text': 'Main Meridian',
          'screen': RoutesName.beforeTextScreen,
        },
        {
          'imageUrl': Images.extraMeridian,
          'text': 'Extraordinary Meridian',
          'screen': RoutesName.beforeTextScreen,
        }
      ];
    } else if (widget.parentScreen == 'Main Meridian') {
      {
        data = [
          {
            'imageUrl': Images.stomachMeridian,
            'text': 'Stomach Meridian',
            'screen': RoutesName.textScreen,
          },
          {
            'imageUrl': Images.lung,
            'text': 'Lung Meridian',
            'screen': RoutesName.textScreen,
          },
          {
            'imageUrl': Images.bladderMeridian,
            'text': 'Bladder Meridian',
            'screen': RoutesName.textScreen,
          },
          {
            'imageUrl': Images.heartMeridian,
            'text': 'Heart Meridian',
            'screen': RoutesName.textScreen,
          },
          {
            'imageUrl': Images.gallbladder,
            'text': 'Gallbladder Meridian',
            'screen': RoutesName.textScreen,
          },
          {
            'imageUrl': Images.pericardium,
            'text': 'Pericardium Meridian',
            'screen': RoutesName.textScreen,
          },
          {
            'imageUrl': Images.liverMeridian,
            'text': 'Liver Meridian',
            'screen': RoutesName.textScreen,
          },
          {
            'imageUrl': Images.triple,
            'text': 'Triple Warmer Meridian',
            'screen': RoutesName.textScreen,
          },
          {
            'imageUrl': Images.kidney,
            'text': 'Kidney Meridian',
            'screen': RoutesName.textScreen,
          },
          {
            'imageUrl': Images.small,
            'text': 'Small Intestine Meridian',
            'screen': RoutesName.textScreen,
          },
          {
            'imageUrl': Images.spleenMeridian,
            'text': 'Spleen Meridian',
            'screen': RoutesName.textScreen,
          },
          {
            'imageUrl': Images.extraMeridian,
            'text': 'Large Intestine Meridian',
            'screen': RoutesName.textScreen,
          }
        ];
      }
    } else if (widget.parentScreen == 'Extraordinary Meridian') {
      data = [
        {
          'imageUrl': Images.yang,
          'text': 'Yang Heel Meridian',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.yang,
          'text': 'Conception Meridian',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.yang,
          'text': 'Yin Heel Meridian',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.yang,
          'text': 'Governing Meridian',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.yang,
          'text': 'Yang Linking Meridian',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.yang,
          'text': 'Penetrating Meridian',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.yang,
          'text': 'Yin Linking Meridian',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.yang,
          'text': 'Girdle Meridian',
          'screen': RoutesName.textScreen,
        }
      ];
    } else if (widget.parentScreen == 'Lower Limb Vessel') {
      data = [
        {
          'imageUrl': Images.popliteal,
          'text': 'Popliteal Artery',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.anterior,
          'text': 'Anterior Tibial Artery',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.greatVein,
          'text': 'Great Saphenous Vein',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.posterior,
          'text': 'Posterior Tibial Artery',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.femoral,
          'text': 'Femoral Artery',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.peroneal,
          'text': 'Peroneal Vein',
          'screen': RoutesName.textScreen,
        }
      ];
    } else if (widget.parentScreen == 'Upper Limb Vessel') {
      data = [
        {
          'imageUrl': Images.basilar,
          'text': 'Basilar Vein',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.brachial,
          'text': 'Brachial Vein',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.radial,
          'text': 'Radial Artery',
          'screen': RoutesName.textScreen,
        }
      ];
    } else if (widget.parentScreen == 'Abdominal Vessel') {
      data = [
        {
          'imageUrl': Images.basilar,
          'text': 'Basilar Vein',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.brachial,
          'text': 'Brachial Vein',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.radial,
          'text': 'Radial Artery',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.basilar,
          'text': 'Basilar Vein',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.brachial,
          'text': 'Brachial Vein',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.radial,
          'text': 'Radial Artery',
          'screen': RoutesName.textScreen,
        }
      ];
    } else if (widget.parentScreen == 'Thoracic Circulation') {
      data = [
        {
          'imageUrl': Images.leftSubclavian,
          'text': 'Left Subclavian',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.aortic,
          'text': 'Aortic Arch',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.rightSubclavian,
          'text': 'Right Subclavian Artery',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.heartCirculation,
          'text': 'Heart Circulation',
          'screen': RoutesName.thirdScreen,
        },
        {
          'imageUrl': Images.intercostal,
          'text': 'Intercostal Artery',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.leftPulmonary,
          'text': 'Left Pulmonary Artery',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.rightPulmonary,
          'text': 'Right Pulmonary Artery',
          'screen': RoutesName.textScreen,
        },
      ];
    } else if (widget.parentScreen == 'Head or Neck Vessel') {
      data = [
        {
          'imageUrl': Images.faceVessel,
          'text': 'Face or Neck Vessel',
          'screen': RoutesName.thirdScreen,
        },
        {
          'imageUrl': Images.skullInterior,
          'text': 'Skull Interior Vessel',
          'screen': RoutesName.thirdScreen,
        },
      ];
    } else if (widget.parentScreen == 'Stomach Sphincter') {
      data = [
        {
          'imageUrl': Images.cardiacSphincter,
          'text': 'Cardiac Sphincter',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.pyloricSphincter,
          'text': 'Pyloric Sphincter',
          'screen': RoutesName.textScreen,
        },
      ];
    }
  }
}
