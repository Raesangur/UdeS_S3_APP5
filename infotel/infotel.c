#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char cmd[10000];
FILE *name_file;
int i, c;

void appel_problematique(char *usager) {
        char tmp_cmd[70];
	char usager_local[1024];

	strcpy(tmp_cmd,"/bin/bash -c \"cat /usr/local/share/tel_data|grep ");
	name_file = fopen(usager,"r");
	if (!name_file) {
	  printf("Erreur: fichier \"%s\" introuvable\n",usager);
	  exit(0);
	}

	c = fgetc(name_file);
	i = 0;
	while (c != EOF) {
	  if (c != '\n') {
	    usager_local[i] = c;
	  }
	  c = fgetc(name_file);
	  i++;
	}

	usager_local[i-1] = 0;
        tmp_cmd[70] = 0;
	strcpy(cmd,tmp_cmd);

	if (i >= 1024) {
		fclose(name_file);
		fprintf(stdout,"Fichier \"%s\" trop grand\n",usager_local);
		return;
	} else {
	  for (i = 0; i < 1024; i++) {
            if(!(((usager_local[i] >= 'a')
	        && (usager_local[i] <= 'z'))
		|| ((usager_local[i] >= 'A')
		&& (usager_local[i] <= 'Z'))
		|| ((usager_local[i] >= '0')
		&& (usager_local[i] <= '9'))
		|| (usager_local[i] == '_')
		|| (usager_local[i] == '-'))) {
	      usager_local[i] = 0;
	      i = 1024;
	    }
	  }
		fclose(name_file);
		strcat(cmd,usager_local);
                strcat(cmd,"; exit\"");
		system(cmd);
	}
	return;
}

int main (int argc, char **argv) {
	int i;

	fprintf(stdout, "\n", argv[1]);
	fflush(stdout);

	appel_problematique(argv[1]);

	exit(0);
}
