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
    puts ( "OpenDisc 一键安装工具 by Geeks@一中（东莞市第一中学信息技术社）\n本程序很猥琐但很强大，同样自由。版本号 0.0.0.1\n" );
    
    init();
    
    while ( 1 )
    {
        puts ( "\n\
本程序将引导你安装此光盘的所有自由软件。\n\
\n\
  * 按下 回车 键马上开始安装；\n\
  * 按下 i(I) 键进入自定义安装模式；\n\
  * 按下 e(E) 或直接关闭退出本程序。\n\
" );
    
        printf ( "请键入你的选项：" );
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
                printf ( "\n  *** 失败：找不到 %s 或没有权限执行\n      发生了不可预料的错误。按下任意键退出。", files[tmp] );
                system ( "pause > nul" );
                exit ( 1 );
        }
    }
    
    puts ( "校验文件正确性 ..." );
    if ( system ( "src\\md5sum.exe -c src\\checksum" ) != 0 )
        exit ( 1 );
    
}

void run ( void )
{
    int  tmp = 0;
    for ( tmp = 0; tmp < FILE_SUM; tmp++ )
    {
        printf ( "\n开始安装 %s ...", files[tmp] );
        system ( files[tmp] );
        /*puts ( "按下任意键继续下一个安装 ..." );
        system ( "pause > nul" );*/
    }
    
    puts ( "安装看起来是完成了。按下任意键退出。" );
    system ( "pause > nul" );
    exit ( 0 );
}

void interactive ( void )
{
    int tmp = 0;
    puts ( "\n\n============================== 华丽丽的分割线 ==============================\n\n欢迎使用自定义安装模式！在此模式中你可以：\n  * 按下 y(Y) 来确定安装；\n  * 按下 n(N) 来跳过安装；\n  * 按下 e(E) 来中断这个过程。" );
    for ( tmp = 0; tmp < FILE_SUM; tmp++ )
    {
        printf ( "\n安装 %s 吗？[y, n, e] ", files[tmp] );
        switch ( getch () )
        {
            case 'y':
            case 'Y':
                printf ( "\n开始安装 %s ...", files[tmp] );
                system ( files[tmp] );
                break;
            case 'n':
            case 'N':
                break;
            case 'e':
            case 'E':
                puts ( "\n安装被终止。按下任意键退出本程序。" );
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
    puts ( "【输入错误】" );
}