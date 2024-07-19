import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../resources/images.dart';
import '../../utils/routes/rotes_named.dart';
import '../home.dart';

class ThirdScreen extends StatefulWidget {
  final String parentScreen;
  const ThirdScreen({super.key, required this.parentScreen});
  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
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
    print('parent screen ${widget.parentScreen}');
    setScreen();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('Third screen');
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
                      child: Column(
                        children: [
                          // Display image
                          SizedBox(
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
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              data[index]['text']!,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 14.0),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
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
    if (widget.parentScreen == "Emotional") {
      data = [
        {
          'imageUrl': Images.trappedEmotion,
          'text': 'Trapped Emotion',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.compound,
          'text': 'Compound (old:psychic Trauma)',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.heartWallEmotion,
          'text': 'Heart-Wall Emotion',
          'screen': RoutesName.beforeTextScreen
        },
      ];
    } else if (widget.parentScreen == "Pregnancy-Related") {
      data = [
        {
          'imageUrl': Images.motherBrain,
          'text': "Mother's Brain",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.motherSpirit,
          'text': "Mother's Spirit",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.motherBody,
          'text': "Mother's Body",
          'screen': RoutesName.beforeTextScreen
        },
      ];
    } else if (widget.parentScreen == 'Heart Circulation') {
      data = [
        {
          'imageUrl': Images.mitral,
          'text': "Mitral Valve",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.coronary,
          'text': "Cornary Artery",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.pulmonary,
          'text': "Pulmonary Valve",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.aorticValve,
          'text': "Aortic Valve",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.tricuspid,
          'text': "Tricuspid Valve",
          'screen': RoutesName.textScreen
        }
      ];
    } else if (widget.parentScreen == 'Face or Neck Vessel') {
      data = [
        {
          'imageUrl': Images.vertebralArtery,
          'text': "Vertebral artery",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.anteriorArtery,
          'text': "Anterior Facial Artery",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.carotidArtery,
          'text': "Carotid Artery",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.internalVein,
          'text': "Internal Jugular Vein",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.externalVein,
          'text': "External Jugular Vein",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Urinary System') {
      data = [
        {
          'imageUrl': Images.urethra,
          'text': "urethra",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.ureter,
          'text': "Ureter",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.bladder,
          'text': "Bladder",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.adrenals,
          'text': "Kidney",
          'screen': RoutesName.textScreen
        }
      ];
    } else if (widget.parentScreen == 'Digestive System') {
      data = [
        {
          'imageUrl': Images.tongue,
          'text': "Tongue",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.liver,
          'text': "Liver",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.stomachSphincter,
          'text': "Stomach Sphincter",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.colon,
          'text': "Colon",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.stomach,
          'text': "Stomach",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.esophagus,
          'text': "Esophagus",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.smallIntestine,
          'text': "Small Intestine",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.gallBladder,
          'text': "Gallbladder",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.pancrease,
          'text': "Pancreas",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.Ileocecal,
          'text': "Ileocecal Valve",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Skull Interior Vessel') {
      data = [
        {
          'imageUrl': Images.inferiorSagittal,
          'text': "Inferior Sagittal Sinus",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.superiorSagittal,
          'text': "Superior Sagittal Sinus",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.straightSinus,
          'text': "Straight Sinus",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Skeletal System') {
      data = [
        {
          'imageUrl': Images.connectiveTissue,
          'text': "Connective Tissue",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.skeleton,
          'text': "Skeleton",
          'screen': RoutesName.beforeTextScreen
        },
      ];
    } else if (widget.parentScreen == 'Endocrine System') {
      data = [
        {
          'imageUrl': Images.kidneys,
          'text': "Kidney",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.adrenals,
          'text': "Adrenal",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.parathyroid,
          'text': "Parathyroid Gland",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.hypothalamusBlue,
          'text': "Hypothalamus",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.pancrease,
          'text': "Pancreas",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.pinealBlue,
          'text': "Pineal Gland",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.thyroid,
          'text': "Thyroid",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.pituitaryBlue,
          'text': "Pituitary Gland",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.ovaries,
          'text': "Ovaries",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.placenta,
          'text': "Placenta (Pregnancy Only)",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.testes,
          'text': "Teste",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.amygdalaBlue,
          'text': "Amygdala",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Muscular System') {
      data = [
        {
          'imageUrl': Images.lowerLimbMuscle,
          'text': "Lower Limb Muscle",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.abdominalMuscle,
          'text': "Abdominal Muscle",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.upperLimbMuscle,
          'text': "Upper Limb Muscle",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.neckMuscle,
          'text': "Neck Muscle",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.backMuscle,
          'text': "Back Muscle",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.headMuscle,
          'text': "Head Muscle",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.thoracicMuscle,
          'text': "Thoracic Muscle",
          'screen': RoutesName.beforeTextScreen
        },
      ];
    } else if (widget.parentScreen == 'Disc') {
      data = [
        {
          'imageUrl': Images.cervicalDisc,
          'text': "Cervical Disc",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.lowerDisc,
          'text': "Lower Thoracic Disc",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.upperDisc,
          'text': "Upper Thoracic Disc",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.lumbarDisc,
          'text': "Lumbar Disc",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Appendicular Skeleton') {
      data = [
        {
          'imageUrl': Images.lowerLimbAppend,
          'text': "Lower Limb",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.upperLimbAppend,
          'text': "Upper Limb",
          'screen': RoutesName.beforeTextScreen
        },
      ];
    } else if (widget.parentScreen == 'Teeth') {
      data = [
        {
          'imageUrl': Images.upperTeeth,
          'text': "Upper Teeth",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.lowerTeeth,
          'text': "Lower Teeth",
          'screen': RoutesName.beforeTextScreen
        },
      ];
    } else if (widget.parentScreen == 'Axial Skeleton') {
      data = [
        {
          'imageUrl': Images.vertebralColumn,
          'text': "Vertebral-Column",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.teethForReference,
          'text': "Teeth",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.skull,
          'text': "Skull",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.thoracicCage,
          'text': "Thoracic Cage",
          'screen': RoutesName.thirdScreen
        }
      ];
    } else if (widget.parentScreen == 'Vertebral Column') {
      data = [
        {
          'imageUrl': Images.sacrumAndCoccyx,
          'text': "Sacrum and Coccyx",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.cervicleVertebrae,
          'text': "Cervicle Vertebrae",
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
        }
      ];
    } else if (widget.parentScreen == 'Facial Bone') {
      data = [
        {
          'imageUrl': Images.vomerBone,
          'text': "Vomer Bone",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.inferiorBone,
          'text': "Inferior Nasal Conchae",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.lacrimalBone,
          'text': "Lacrimal Bone",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.thoracicVertebrae712,
          'text': "Palatine Bone",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.hyoidBone,
          'text': "Hyoid Bone",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.zygomaticBone,
          'text': "Zygomatic Bone",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.mandibleBone,
          'text': "Mandible Bone",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.nasalBone,
          'text': "Nasal Bone",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.maxillaBone,
          'text': "Maxilla Bone",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Skull') {
      data = [
        {
          'imageUrl': Images.facialBone,
          'text': "Facial Bone",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.frontalBone,
          'text': "Frontal Bone",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.middleEarBone,
          'text': "Middle Ear Bone",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.parietalBone,
          'text': "Parietal Bone",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.ethmoidBone,
          'text': "Ethmoid bone",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.temporalBone,
          'text': "Temporal Bone",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.sphenoidBone,
          'text': "Sphenoid bone",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.occipitalBone,
          'text': "Occipital Bone",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'False Rib') {
      data = [
        {
          'imageUrl': Images.falseRib,
          'text': "9th Rib",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.falseRib,
          'text': "11th Rib",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.falseRib,
          'text': "9th Rib",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.falseRib,
          'text': "12th Rib",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.falseRib,
          'text': "10th Rib",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'True Rib') {
      data = [
        {
          'imageUrl': Images.falseRib,
          'text': "4th Rib",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.falseRib,
          'text': "7th Rib",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.falseRib,
          'text': "1st Rib",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.falseRib,
          'text': "6th Rib",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.falseRib,
          'text': "2nd Rib",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.falseRib,
          'text': "5th Rib",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.falseRib,
          'text': "3rd Rib",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Thoracic Cage') {
      data = [
        {
          'imageUrl': Images.falseRib,
          'text': "False Rib",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.trueRib,
          'text': "True Rib",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.manubrium,
          'text': "Manubrium",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.xiphoid,
          'text': "Xiphoid Process",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.sternum,
          'text': "Sternum",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Intestines") {
      data = [
        {
          'imageUrl': Images.smallIntestine,
          'text': "Small Intestine",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.Ileocecal,
          'text': "Ileocecal Valve",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.colon,
          'text': "Colon",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Brain") {
      data = [
        {
          'imageUrl': Images.deep,
          'text': "Deep Structures",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.cerebrum,
          'text': "Cerebrum",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.cranial,
          'text': "Cranial Nerves",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.cerebellum,
          'text': "Cerebellum",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.vestibular,
          'text': "Vestibular System",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.stem,
          'text': "Brain Stem",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.cerebrospinal,
          'text': "Cerebrospinal Fluid",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Pharmaceutical") {
      data = [
        {
          'imageUrl': Images.drug,
          'text': "Medication",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.vaccination,
          'text': "Vaccination",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.otcMedicine,
          'text': "OTC Medicine",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Recreational") {
      data = [
        {
          'imageUrl': Images.depressant,
          'text': "Depressant",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.stimulant,
          'text': "Stimulant",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.hallucinogen,
          'text': "Hallucinogen",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Pernicious Influence') {
      print('000000000');
    } else if (widget.parentScreen == 'Pollution') {
      print('1111111111');
      data = [
        {
          'imageUrl': Images.airPollution,
          'text': "Hallucinogen",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.waterPollution,
          'text': "Hallucinogen",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.plastics,
          'text': "Hallucinogen",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Teeth (for reference)') {
      data = [
        {
          'imageUrl': '${Images.upperTeeth}',
          'text': 'Upper Teeth',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': '${Images.lowerTeeth}',
          'text': 'Lower Teeth',
          'screen': RoutesName.beforeTextScreen
        }
      ];
    } else if (widget.parentScreen == 'Integumentary System') {
      data = [
        {
          'imageUrl': '${Images.skin}',
          'text': 'Skin',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': '${Images.nail}',
          'text': 'Nail',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': '${Images.hair}',
          'text': 'Hair',
          'screen': RoutesName.textScreen
        }
      ];
    } else if (widget.parentScreen == 'Circulatory System') {
      data = [
        {
          'imageUrl': '${Images.heartOrgan}',
          'text': 'Heart',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': '${Images.lowerLimb}',
          'text': 'Lower Limb Vessel',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': '${Images.upperLimb}',
          'text': 'Upper Limb Vessel',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': '${Images.abdominal}',
          'text': 'Abdominal Vessel',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': '${Images.thoracic}',
          'text': 'Thoracic Circulation',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': '${Images.headNeck}',
          'text': 'Head or Neck Vessel',
          'screen': RoutesName.beforeTextScreen
        },
      ];
    } else if (widget.parentScreen == 'Male Glands' ||
        widget.parentScreen == 'Male') {
      data = [
        {
          'imageUrl': Images.testes,
          'text': 'Testes',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.prostate,
          'text': 'Prostate',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.seminalVesivles,
          'text': 'Seminal Vesicles',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.epididymis,
          'text': 'Epididymis',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.bulboGland,
          'text': 'Bulbo-Urethral Gland',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.vasDeferense,
          'text': 'Vas Deferense',
          'screen': RoutesName.textScreen
        }
      ];
    } else if (widget.parentScreen == 'Brain Glands') {
      data = [
        {
          'imageUrl': Images.hypothalamus,
          'text': 'Hypothalamus',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.pituitary,
          'text': 'Pituitary',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.pineal,
          'text': 'Pineal',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.amygdala,
          'text': 'Amygdala',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.thalamus,
          'text': 'Thalamus',
          'screen': RoutesName.textScreen,
        },
      ];
    } else if (widget.parentScreen == 'Female Glands' ||
        widget.parentScreen == 'Female') {
      data = [
        {
          'imageUrl': Images.ovaries,
          'text': 'Ovaries',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.placenta,
          'text': 'Placenta (Pregnancy Only)',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.mammary,
          'text': 'Mammary Glands',
          'screen': RoutesName.textScreen,
        },
      ];
    } else if (widget.parentScreen == 'Central Nervous System') {
      data = [
        {
          'imageUrl': Images.brain,
          'text': 'Brain',
          'screen': RoutesName.thirdScreen,
        },
        {
          'imageUrl': Images.spinalCord,
          'text': 'Spinal Cord',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.eyes,
          'text': 'Eyes',
          'screen': RoutesName.textScreen,
        },
      ];
    } else if (widget.parentScreen == 'Peripheral Nervous System') {
      data = [
        {
          'imageUrl': Images.somaticNervousSystem,
          'text': 'Somatic Nervous System',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.autonomicNervousSystem,
          'text': 'Autonomic Nervous System',
          'screen': RoutesName.thirdScreen,
        },
      ];
    } else if (widget.parentScreen == 'Autonomic Nervous System') {
      data = [
        {
          'imageUrl': Images.sympathetic,
          'text': 'Sympathetic Nervous System',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.parasympathetic,
          'text': 'Parasympathetic Nervous System',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.enteric,
          'text': 'Enteric Nervous System',
          'screen': RoutesName.textScreen,
        },
      ];
    } else if (widget.parentScreen == 'Peripheral Nervous System') {
    } else if (widget.parentScreen == 'Other') {
      data = [
        {
          'imageUrl': Images.thymus,
          'text': 'Thymus',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.adrenals,
          'text': 'Adrenals',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.thyroid,
          'text': 'Thyroid',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.pancrease,
          'text': 'Pancrease',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.parathyroid,
          'text': 'Parathyroid',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.adipose,
          'text': 'Adipose Tissue',
          'screen': RoutesName.textScreen,
        },
      ];
    }
  }
}
