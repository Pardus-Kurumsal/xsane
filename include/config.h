/* include/config.h.  Generated from config.h.in by configure.  */
#ifndef SANE_CONFIG_H
#define SANE_CONFIG_H

/* Define if on AIX 3.
   System headers sometimes define this.
   We just want to avoid a redefinition error message.  */
#ifndef _ALL_SOURCE
#define _ALL_SOURCE 1
#endif

/* Define if using alloca.c.  */
/* #undef C_ALLOCA */

/* Define to empty if the keyword does not work.  */
/* #undef const */

/* Define to one of _getb67, GETB67, getb67 for Cray-2 and Cray-YMP systems.
   This function is required for alloca.c support on those systems.  */
/* #undef CRAY_STACKSEG_END */

/* Define if you have alloca, as a function or macro.  */
#define HAVE_ALLOCA 1

/* Define if you have <alloca.h> and it should be used (not on Ultrix).  */
#define HAVE_ALLOCA_H 1

/* Define if you have a working `mmap' system call.  */
#define HAVE_MMAP 1

/* Define as __inline if that's what the C compiler calls it.  */
/* #undef inline */

/* Define if on MINIX.  */
/* #undef _MINIX */

/* Define to `long' if <sys/types.h> doesn't define.  */
/* #undef off_t */

/* Define if the system does not provide POSIX.1 features except
   with this defined.  */
/* #undef _POSIX_1_SOURCE */

/* Define if you need to in order for stat and other things to work.  */
/* #undef _POSIX_SOURCE */

/* Define to `unsigned' if <sys/types.h> doesn't define.  */
/* #undef size_t */

/* Define to `unsigned char' if <sys/types.h> doesn't define.  */
/* #undef u_char */

/* Define to `unsigned int' if <sys/types.h> doesn't define.  */
/* #undef u_int */

/* Define to `unsigned long' if <sys/types.h> doesn't define.  */
/* #undef u_long */

/* Define to `long' if <sys/types.h> doesn't define.  */
/* #undef ssize_t */

/* Define to `int' if <sys/types.h> doesn't define.  */
/* #undef pid_t */

/* Define scsireq_t as `struct scsireq' if necessary.  */
/* #undef scsireq_t */

/* Define to the return type of signal handlers. */
#define RETSIGTYPE void

/* If using the C implementation of alloca, define if you know the
   direction of stack growth for your system; otherwise it will be
   automatically deduced at run-time.
	STACK_DIRECTION > 0 => grows toward higher addresses
	STACK_DIRECTION < 0 => grows toward lower addresses
	STACK_DIRECTION = 0 => direction of growth unknown
 */
/* #undef STACK_DIRECTION */

/* Define if you have the ANSI C header files.  */
#define STDC_HEADERS 1

/* Define to 1 if NLS is requested.  */
#define ENABLE_NLS 1

/* Define as 1 if you have catgets and don't want to use GNU gettext.  */
/* #undef HAVE_CATGETS */

/* Define as 1 if you have gettext and don't want to use GNU gettext.  */
#define HAVE_GETTEXT 1

/* Define if your locale.h file contains LC_MESSAGES.  */
#define HAVE_LC_MESSAGES 1

/* Define to 1 if you have the stpcpy function.  */
#define HAVE_STPCPY 1

/* Define to the name of the distribution.  */
#define PACKAGE "xsane"

/* Define to the version of the distribution.  */
#define VERSION "0.999"

/* The concatenation of the strings PACKAGE, "-", and VERSION.  */
#define XSANE_PACKAGE_VERSION "xsane-0.999"

/* Define if you have the __argz_count function.  */
#define HAVE___ARGZ_COUNT 1

/* Define if you have the __argz_next function.  */
#define HAVE___ARGZ_NEXT 1

/* Define if you have the __argz_stringify function.  */
#define HAVE___ARGZ_STRINGIFY 1

/* Define if you have the atexit function. */
#define HAVE_ATEXIT 1

/* Define if you have the dcgettext function.  */
#define HAVE_DCGETTEXT 1

/* Define if you have the getcwd function.  */
#define HAVE_GETCWD 1

/* Define if you have the getpagesize function.  */
#define HAVE_GETPAGESIZE 1

/* Define if you have the lstat function.  */
#define HAVE_LSTAT 1

/* Define if you have the mkdir function.  */
#define HAVE_MKDIR 1

/* Define if you have the munmap function.  */
#define HAVE_MUNMAP 1

/* Define if you have the putenv function.  */
#define HAVE_PUTENV 1

/* Define if you have the scsireq_enter function.  */
/* #undef HAVE_SCSIREQ_ENTER */

/* Define if you have the sigprocmask function.  */
#define HAVE_SIGPROCMASK 1

/* Define if you have the setenv function.  */
#define HAVE_SETENV 1

/* Define if you have the setlocale function.  */
#define HAVE_SETLOCALE 1

/* Define if you have the snprintf function.  */
#define HAVE_SNPRINTF 1

/* Define if you have the stpcpy function.  */
#define HAVE_STPCPY 1

/* Define if you have the strcasecmp function.  */
#define HAVE_STRCASECMP 1

/* Define if you have the strchr function.  */
#define HAVE_STRCHR 1

/* Define if you have the strdup function.  */
#define HAVE_STRDUP 1

/* Define if you have the strncasecmp function.  */
#define HAVE_STRNCASECMP 1

/* Define if you have the strndup function.  */
#define HAVE_STRNDUP 1

/* Define if you have the strftime function.  */
#define HAVE_STRFTIME 1

/* Define if you have the strstr function.  */
#define HAVE_STRSTR 1

/* Define if you have the strsep function.  */
#define HAVE_STRSEP 1

/* Define if you have the strtod function.  */
#define HAVE_STRTOD 1

/* Define if you have the valloc function.  */
/* #undef HAVE_VALLOC */

/* Ignore HAVE_USLEEP under Apollo Domain because the usleep()
   implementation in the Sys5.3 environment is broken.  */
#ifndef apollo
  /* Define if you have the usleep function.  */
# define HAVE_USLEEP 1
#endif

/* Define if you have the <argz.h> header file.  */
#define HAVE_ARGZ_H 1

/* Define if you have the <fcntl.h> header file.  */
#define HAVE_FCNTL_H 1

/* Define if you have the <libintl.h> header file.  */
/* #undef HAVE_LIBINTL_H */

/* Define if you have the <libc.h> header file.  */
/* #undef HAVE_LIBC_H */

/* Define if you have the <limits.h> header file.  */
#define HAVE_LIMITS_H 1

/* Define if you have the <locale.h> header file.  */
#define HAVE_LOCALE_H 1

/* Define if you have the <malloc.h> header file.  */
#define HAVE_MALLOC_H 1

/* Define if you have the <nl_types.h> header file.  */
#define HAVE_NL_TYPES_H 1

/* Define if you have the <string.h> header file.  */
#define HAVE_STRING_H 1

/* Define if you have the <sys/select.h> header file. */
/* #undef HAVE_SYS_SELECT_H */

/* Define if you have the <sys/time.h> header file. */
#define HAVE_SYS_TIME_H 1

/* Define if you have the <sys/io.h> header file. */
/* #undef HAVE_SYS_IO_H */

/* Define if you have the <asm/io.h> header file. */
/* #undef HAVE_ASM_IO_H */

/* Define if you have the <scsi.h> header file. */
/* #undef HAVE_SCSI_H */

/* Define if you have the <scsi/sg.h> header file. */
/* #undef HAVE_SCSI_SG_H */

/* Define if you have the "/usr/src/linux/include/scsi/sg.h" header file. */
/* #undef HAVE__USR_SRC_LINUX_INCLUDE_SCSI_SG_H */

/* Define if you have the <sys/dsreq.h> header file. */
/* #undef HAVE_SYS_DSREQ_H */

/* Define if you have the <windows.h> header file.  */
/* #undef HAVE_WINDOWS_H */

/* Define if you have the <os2.h> header file.  */
/* #undef HAVE_OS2_H */

/* Define if you have sys/types.h. OS/2 wants them before select.h, etc. */
#define HAVE_SYS_TYPES_H 1

/* Define if you have the <unistd.h> header file.  */
#define HAVE_UNISTD_H 1

/* Define if you have the <values.h> header file.  */
#define HAVE_VALUES_H 1

/* Define if you have the i library (-li).  */
/* #undef HAVE_LIBI */

/* Define if you have the intl library (-lintl).  */
/* #undef HAVE_LIBINTL */

/* Define if you have the m library (-lm).  */
#define HAVE_LIBM 1

/* Define if you have the <dlfcn.h> header file.  */
/* #undef HAVE_DLFCN_H */

/* Define if you have GIMP installed - no matter what version.  */
#define HAVE_ANY_GIMP 1

/* Define if you have GIMP-2.0 installed.  */
#define HAVE_GIMP_2 1

/* Define if you have the GIMPfeatures header file.  */
/* #undef HAVE_LIBGIMP_GIMPFEATURES_H */

/* Define if you have libjpeg.  */
#define HAVE_LIBJPEG 1

/* Define if you have libz.  */
#define HAVE_LIBZ 1

/* Define if you have libpng.  */
#define HAVE_LIBPNG 1

/* Define if you have libtiff.  */
#define HAVE_LIBTIFF 1

/* Define if you have liblcms.  */
#define HAVE_LIBLCMS 1

#ifndef HAVE_STRNCASECMP
  /* OS/2 needs this */
# define strncasecmp(a, b, c) strnicmp(a, b, c)
#endif

#if defined (__sun) && defined (__GNUC__)
# define _POSIX_SOURCE
# define __EXTENSIONS__ 1
#endif

#endif /* SANE_CONFIG_H */
