#include <iostream>
#include <iomanip>
#include <fstream>
#include <string>

using namespace std;

int main(){
    string nomDuFichier;

    cout << "Entrer le nom du fichier à lire : ";
    cin >> nomDuFichier;

    // Création du flux en lecture sur le fichier
    ifstream leFichier(nomDuFichier.c_str());

    // c_str() transforme string en char*
    if(!leFichier .is_open())
        cerr << "Erreur lors de l'ouverture du fichier " << endl;

    else{
          string pays;
          int nbOr;
          int nbArgent;
          int nbBronze;

          cout << "+" << setfill('-') << setw(16) << "+" << setfill('-') << setw(5) << "+" << setfill('-') << setw(10) << "+" << setfill('-') << setw(10) << "+" << setfill(' ') << endl;
          do {

              leFichier >> pays >> nbOr >> nbArgent >> nbBronze;
              if(leFichier.good())//Si les valeurs ont bien été lues
              {
                  cout << "|" << pays << setfill(' ') << setw(10) << "|"<< nbOr << setfill(' ') << setw(10) <<  "|" << nbArgent << setfill(' ') << setw(10) << "|" << nbBronze << endl;
              }
          }while(!leFichier.eof());
          cout << "+" << setfill('-') << setw(30) << "+" << setfill('-') << setw(10) << "+" << setfill('-') << setw(10) << "+" << setfill('-') << setw(10) << "+" << setfill(' ') << endl;
    }
    return 0;
}
