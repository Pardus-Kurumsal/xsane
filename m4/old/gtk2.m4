######################################################################
# Configure paths for GTK+2
# Oliver Rauch 2002-06-17

dnl AM_PATH_GTK2_EXTENDED([MINIMUM-VERSION, [ACTION-IF-FOUND [, ACTION-IF-NOT-FOUND]]])
dnl Test for GTK+-2.0.x, and define GTK_CFLAGS and GTK_LIBS
dnl
AC_DEFUN(AM_PATH_GTK2_EXTENDED,
[
  AC_ARG_ENABLE(gtk2, [  --disable-gtk2          Do not use gtk+-2.0.x], USE_GTK2=$enableval, USE_GTK2=yes)

  if test $USE_GTK2 != no ; then
    min_gtk_version=ifelse([$1], ,2.0.0,$1)
    if `pkg-config --atleast-pkgconfig-version=0` ; then
      AC_MSG_CHECKING(for GTK - version >= $min_gtk_version)
      if `pkg-config gtk+-2.0 --atleast-version=$min_gtk_version` ; then
        GTK_CFLAGS=`pkg-config gtk+-2.0 --cflags`
        GTK_LIBS=`pkg-config gtk+-2.0 --libs`
        AC_MSG_RESULT(yes)
        ifelse([$2], , :, [$2])
      else
        AC_MSG_RESULT(no)
      ifelse([$3], , :, [$3])
      fi
    else
    AC_MSG_WARN(***************************************************************)
    AC_MSG_WARN(*** pgk-config is not avilable: test for gtk2 not possible ****)
    AC_MSG_WARN(***************************************************************)
    ifelse([$3], , :, [$3])
    fi
  else
    ifelse([$3], , :, [$3])
  fi


  AC_SUBST(GTK_CFLAGS)
  AC_SUBST(GTK_LIBS)
]
)
