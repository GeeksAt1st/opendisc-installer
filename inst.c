# include <stdio.h>
# include <stdlib.h>
# include <conio.h>
# include <unistd.h>

# define FILE_SUM 12
# define LENGTH 512

void init ( void );
void run ( void );
void interactive ( void );
void wrong ( void );


char **files;


int main ( void )
{
    puts ( "OpenDisc һ����װ���� by Geeks@һ�У���ݸ�е�һ��ѧ��Ϣ�����磩\n��������������ǿ��ͬ�����ɡ��汾�� 0.0.0.1\n" );
    
    init();
    
    while ( 1 )
    {
        puts ( "\n\
�����������㰲װ�˹��̵��������������\n\
\n\
  * ���� �س� �����Ͽ�ʼ��װ��\n\
  * ���� i(I) �������Զ��尲װģʽ��\n\
  * ���� e(E) ��ֱ�ӹر��˳�������\n\
" );
    
        printf ( "��������ѡ�" );
        switch ( getch () )
        {
            case '\r':
                run();
            case 'i':
            case 'I':
                interactive();
                return 0;
            case 'e':
            case 'E':
                return 0;
            default:
                wrong();
                break;
        }
    }
    
    return 0;
}

void init ( void )
{
    int tmp = 0;
    files = ( char ** ) calloc ( FILE_SUM, sizeof ( char * ) );
    for ( tmp = 0; tmp < FILE_SUM; tmp++ )
        files[tmp] = ( char * ) calloc ( LENGTH, sizeof ( char ) );
    
    system ( "title OpenDisc ver 1.0-win32" );
    
    files[0] = "LibreOffice_4.3.0_Win_x86.msi",
    files[1] = "scribus-1.4.4-windows.exe",
    files[2] = "Firefox-full-latest.exe",
    files[3] = "Inkscape-0.48.5-1-win32.exe",
    files[4] = "gimp-2.8.10-setup.exe",
    files[5] = "blender-2.71-windows32.exe",
    files[6] = "audacity-win-2.0.5.exe",
    files[7] = "vlc-2.1.5-win32.exe",
    files[8] = "VirtualBox-4.3.14-95030-Win.exe",
    files[9] = "peazip-5.4.1.WINDOWS.exe",
    files[10] = "FileZilla_3.9.0.3_win32-setup.exe",
    files[11] = "npp.6.6.8.Installer.exe";
    

    for ( tmp = 0; tmp < FILE_SUM; tmp++ )
    {
        switch ( access ( files[tmp], X_OK ) )
        {
            case 0:
                break;
            case -1:
            default:
                printf ( "\n  *** ʧ�ܣ��Ҳ��� %s ��û��Ȩ��ִ��\n      �����˲���Ԥ�ϵĴ��󡣰���������˳���", files[tmp] );
                system ( "pause > nul" );
                exit ( 1 );
        }
    }
    
    puts ( "У���ļ���ȷ�� ..." );
    if ( system ( "src\\md5sum.exe -c src\\checksum" ) != 0 )
        exit ( 1 );
    
}

void run ( void )
{
    int  tmp = 0;
    for ( tmp = 0; tmp < FILE_SUM; tmp++ )
    {
        printf ( "\n��ʼ��װ %s ...", files[tmp] );
        system ( files[tmp] );
        /*puts ( "���������������һ����װ ..." );
        system ( "pause > nul" );*/
    }
    
    puts ( "��װ������������ˡ�����������˳���" );
    system ( "pause > nul" );
    exit ( 0 );
}

void interactive ( void )
{
    int tmp = 0;
    puts ( "\n\n============================== �������ķָ��� ==============================\n\n��ӭʹ���Զ��尲װģʽ���ڴ�ģʽ������ԣ�\n  * ���� y(Y) ��ȷ����װ��\n  * ���� n(N) ��������װ��\n  * ���� e(E) ���ж�������̡�" );
    for ( tmp = 0; tmp < FILE_SUM; tmp++ )
    {
        printf ( "\n��װ %s ��[y, n, e] ", files[tmp] );
        switch ( getch () )
        {
            case 'y':
            case 'Y':
                printf ( "\n��ʼ��װ %s ...", files[tmp] );
                system ( files[tmp] );
                break;
            case 'n':
            case 'N':
                break;
            case 'e':
            case 'E':
                puts ( "\n��װ����ֹ������������˳�������" );
                system ( "pause > nul" );
                exit ( 255 );
            default:
                /* Roll back */
                tmp--;
                break;
        }
    }
}

void wrong ( void )
{
    puts ( "���������" );
}