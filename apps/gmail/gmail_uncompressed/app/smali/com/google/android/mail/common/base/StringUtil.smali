.class public final Lcom/google/android/mail/common/base/StringUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final abH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final cpA:Lcom/google/android/mail/common/base/a;

.field private static final cpB:Ljava/util/regex/Pattern;

.field private static final cpC:Lcom/google/android/mail/common/base/j;

.field private static final cpD:Lcom/google/android/mail/common/base/a;

.field private static final cpE:Lcom/google/android/mail/common/base/a;

.field private static final cpF:Ljava/util/regex/Pattern;

.field private static final cpG:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character$UnicodeBlock;",
            ">;"
        }
    .end annotation
.end field

.field private static final cpH:[C

.field private static final cpI:[C

.field private static final cpJ:Ljava/util/regex/Pattern;

.field private static final cpK:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final cpL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final cpv:Lcom/google/android/mail/common/base/Splitter;

.field private static final cpw:Lcom/google/android/mail/common/base/Splitter;

.field private static final cpx:Lcom/google/android/mail/common/base/j;

.field private static final cpy:Lcom/google/android/mail/common/base/j;

.field static final cpz:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x3e

    const/16 v4, 0x3c

    const/4 v3, 0x0

    .line 396
    invoke-static {}, Lcom/google/android/mail/common/base/Splitter;->Wa()Lcom/google/android/mail/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mail/common/base/Splitter;->Wb()Lcom/google/android/mail/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpv:Lcom/google/android/mail/common/base/Splitter;

    .line 450
    sget-object v0, Lcom/google/android/mail/common/base/j;->coK:Lcom/google/android/mail/common/base/j;

    invoke-static {v0}, Lcom/google/android/mail/common/base/Splitter;->c(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mail/common/base/Splitter;->Wb()Lcom/google/android/mail/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpw:Lcom/google/android/mail/common/base/Splitter;

    .line 721
    const-string v0, "\u0091\u0092\u2018\u2019"

    invoke-static {v0}, Lcom/google/android/mail/common/base/j;->x(Ljava/lang/CharSequence;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpx:Lcom/google/android/mail/common/base/j;

    .line 723
    const-string v0, "\u0093\u0094\u201c\u201d"

    invoke-static {v0}, Lcom/google/android/mail/common/base/j;->x(Ljava/lang/CharSequence;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpy:Lcom/google/android/mail/common/base/j;

    .line 997
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xfc

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 999
    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&nbsp"

    const/16 v2, 0xa0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&iexcl"

    const/16 v2, 0xa1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&cent"

    const/16 v2, 0xa2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&pound"

    const/16 v2, 0xa3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&curren"

    const/16 v2, 0xa4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&yen"

    const/16 v2, 0xa5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&brvbar"

    const/16 v2, 0xa6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&sect"

    const/16 v2, 0xa7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&uml"

    const/16 v2, 0xa8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&copy"

    const/16 v2, 0xa9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&ordf"

    const/16 v2, 0xaa

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&laquo"

    const/16 v2, 0xab

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&not"

    const/16 v2, 0xac

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&shy"

    const/16 v2, 0xad

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&reg"

    const/16 v2, 0xae

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&macr"

    const/16 v2, 0xaf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&deg"

    const/16 v2, 0xb0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&plusmn"

    const/16 v2, 0xb1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&sup2"

    const/16 v2, 0xb2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&sup3"

    const/16 v2, 0xb3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&acute"

    const/16 v2, 0xb4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&micro"

    const/16 v2, 0xb5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&para"

    const/16 v2, 0xb6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&middot"

    const/16 v2, 0xb7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&cedil"

    const/16 v2, 0xb8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&sup1"

    const/16 v2, 0xb9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&ordm"

    const/16 v2, 0xba

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&raquo"

    const/16 v2, 0xbb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&frac14"

    const/16 v2, 0xbc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&frac12"

    const/16 v2, 0xbd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&frac34"

    const/16 v2, 0xbe

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&iquest"

    const/16 v2, 0xbf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Agrave"

    const/16 v2, 0xc0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Aacute"

    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Acirc"

    const/16 v2, 0xc2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Atilde"

    const/16 v2, 0xc3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Auml"

    const/16 v2, 0xc4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Aring"

    const/16 v2, 0xc5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&AElig"

    const/16 v2, 0xc6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Ccedil"

    const/16 v2, 0xc7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Egrave"

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Eacute"

    const/16 v2, 0xc9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Ecirc"

    const/16 v2, 0xca

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Euml"

    const/16 v2, 0xcb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Igrave"

    const/16 v2, 0xcc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Iacute"

    const/16 v2, 0xcd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Icirc"

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Iuml"

    const/16 v2, 0xcf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&ETH"

    const/16 v2, 0xd0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Ntilde"

    const/16 v2, 0xd1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Ograve"

    const/16 v2, 0xd2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Oacute"

    const/16 v2, 0xd3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Ocirc"

    const/16 v2, 0xd4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Otilde"

    const/16 v2, 0xd5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Ouml"

    const/16 v2, 0xd6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&times"

    const/16 v2, 0xd7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Oslash"

    const/16 v2, 0xd8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Ugrave"

    const/16 v2, 0xd9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Uacute"

    const/16 v2, 0xda

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Ucirc"

    const/16 v2, 0xdb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Uuml"

    const/16 v2, 0xdc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Yacute"

    const/16 v2, 0xdd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&THORN"

    const/16 v2, 0xde

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&szlig"

    const/16 v2, 0xdf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&agrave"

    const/16 v2, 0xe0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&aacute"

    const/16 v2, 0xe1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&acirc"

    const/16 v2, 0xe2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&atilde"

    const/16 v2, 0xe3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&auml"

    const/16 v2, 0xe4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&aring"

    const/16 v2, 0xe5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&aelig"

    const/16 v2, 0xe6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&ccedil"

    const/16 v2, 0xe7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&egrave"

    const/16 v2, 0xe8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&eacute"

    const/16 v2, 0xe9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&ecirc"

    const/16 v2, 0xea

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&euml"

    const/16 v2, 0xeb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&igrave"

    const/16 v2, 0xec

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&iacute"

    const/16 v2, 0xed

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&icirc"

    const/16 v2, 0xee

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&iuml"

    const/16 v2, 0xef

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&eth"

    const/16 v2, 0xf0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&ntilde"

    const/16 v2, 0xf1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&ograve"

    const/16 v2, 0xf2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&oacute"

    const/16 v2, 0xf3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&ocirc"

    const/16 v2, 0xf4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&otilde"

    const/16 v2, 0xf5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&ouml"

    const/16 v2, 0xf6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&divide"

    const/16 v2, 0xf7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&oslash"

    const/16 v2, 0xf8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&ugrave"

    const/16 v2, 0xf9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&uacute"

    const/16 v2, 0xfa

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&ucirc"

    const/16 v2, 0xfb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&uuml"

    const/16 v2, 0xfc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&yacute"

    const/16 v2, 0xfd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&thorn"

    const/16 v2, 0xfe

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&yuml"

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&fnof"

    const/16 v2, 0x192

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Alpha"

    const/16 v2, 0x391

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Beta"

    const/16 v2, 0x392

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Gamma"

    const/16 v2, 0x393

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Delta"

    const/16 v2, 0x394

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Epsilon"

    const/16 v2, 0x395

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Zeta"

    const/16 v2, 0x396

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Eta"

    const/16 v2, 0x397

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Theta"

    const/16 v2, 0x398

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Iota"

    const/16 v2, 0x399

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Kappa"

    const/16 v2, 0x39a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1106
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Lambda"

    const/16 v2, 0x39b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Mu"

    const/16 v2, 0x39c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Nu"

    const/16 v2, 0x39d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Xi"

    const/16 v2, 0x39e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Omicron"

    const/16 v2, 0x39f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Pi"

    const/16 v2, 0x3a0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Rho"

    const/16 v2, 0x3a1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Sigma"

    const/16 v2, 0x3a3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Tau"

    const/16 v2, 0x3a4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Upsilon"

    const/16 v2, 0x3a5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Phi"

    const/16 v2, 0x3a6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Chi"

    const/16 v2, 0x3a7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Psi"

    const/16 v2, 0x3a8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Omega"

    const/16 v2, 0x3a9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&alpha"

    const/16 v2, 0x3b1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&beta"

    const/16 v2, 0x3b2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&gamma"

    const/16 v2, 0x3b3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&delta"

    const/16 v2, 0x3b4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&epsilon"

    const/16 v2, 0x3b5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&zeta"

    const/16 v2, 0x3b6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&eta"

    const/16 v2, 0x3b7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&theta"

    const/16 v2, 0x3b8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&iota"

    const/16 v2, 0x3b9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&kappa"

    const/16 v2, 0x3ba

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&lambda"

    const/16 v2, 0x3bb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&mu"

    const/16 v2, 0x3bc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&nu"

    const/16 v2, 0x3bd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&xi"

    const/16 v2, 0x3be

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&omicron"

    const/16 v2, 0x3bf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&pi"

    const/16 v2, 0x3c0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&rho"

    const/16 v2, 0x3c1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&sigmaf"

    const/16 v2, 0x3c2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&sigma"

    const/16 v2, 0x3c3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&tau"

    const/16 v2, 0x3c4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&upsilon"

    const/16 v2, 0x3c5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&phi"

    const/16 v2, 0x3c6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&chi"

    const/16 v2, 0x3c7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&psi"

    const/16 v2, 0x3c8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&omega"

    const/16 v2, 0x3c9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&thetasym"

    const/16 v2, 0x3d1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&upsih"

    const/16 v2, 0x3d2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&piv"

    const/16 v2, 0x3d6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&bull"

    const/16 v2, 0x2022

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&hellip"

    const/16 v2, 0x2026

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&prime"

    const/16 v2, 0x2032

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Prime"

    const/16 v2, 0x2033

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&oline"

    const/16 v2, 0x203e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&frasl"

    const/16 v2, 0x2044

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&weierp"

    const/16 v2, 0x2118

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&image"

    const/16 v2, 0x2111

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&real"

    const/16 v2, 0x211c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&trade"

    const/16 v2, 0x2122

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&alefsym"

    const/16 v2, 0x2135

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&larr"

    const/16 v2, 0x2190

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&uarr"

    const/16 v2, 0x2191

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&rarr"

    const/16 v2, 0x2192

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&darr"

    const/16 v2, 0x2193

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&harr"

    const/16 v2, 0x2194

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&crarr"

    const/16 v2, 0x21b5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&lArr"

    const/16 v2, 0x21d0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&uArr"

    const/16 v2, 0x21d1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&rArr"

    const/16 v2, 0x21d2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&dArr"

    const/16 v2, 0x21d3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&hArr"

    const/16 v2, 0x21d4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&forall"

    const/16 v2, 0x2200

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&part"

    const/16 v2, 0x2202

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&exist"

    const/16 v2, 0x2203

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&empty"

    const/16 v2, 0x2205

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&nabla"

    const/16 v2, 0x2207

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&isin"

    const/16 v2, 0x2208

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&notin"

    const/16 v2, 0x2209

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&ni"

    const/16 v2, 0x220b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&prod"

    const/16 v2, 0x220f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&sum"

    const/16 v2, 0x2211

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&minus"

    const/16 v2, 0x2212

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&lowast"

    const/16 v2, 0x2217

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&radic"

    const/16 v2, 0x221a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&prop"

    const/16 v2, 0x221d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&infin"

    const/16 v2, 0x221e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&ang"

    const/16 v2, 0x2220

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&and"

    const/16 v2, 0x2227

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&or"

    const/16 v2, 0x2228

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&cap"

    const/16 v2, 0x2229

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&cup"

    const/16 v2, 0x222a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&int"

    const/16 v2, 0x222b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&there4"

    const/16 v2, 0x2234

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&sim"

    const/16 v2, 0x223c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&cong"

    const/16 v2, 0x2245

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&asymp"

    const/16 v2, 0x2248

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&ne"

    const/16 v2, 0x2260

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&equiv"

    const/16 v2, 0x2261

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&le"

    const/16 v2, 0x2264

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&ge"

    const/16 v2, 0x2265

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&sub"

    const/16 v2, 0x2282

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&sup"

    const/16 v2, 0x2283

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&nsub"

    const/16 v2, 0x2284

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&sube"

    const/16 v2, 0x2286

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&supe"

    const/16 v2, 0x2287

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&oplus"

    const/16 v2, 0x2295

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&otimes"

    const/16 v2, 0x2297

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&perp"

    const/16 v2, 0x22a5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&sdot"

    const/16 v2, 0x22c5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&lceil"

    const/16 v2, 0x2308

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&rceil"

    const/16 v2, 0x2309

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&lfloor"

    const/16 v2, 0x230a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&rfloor"

    const/16 v2, 0x230b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&lang"

    const/16 v2, 0x2329

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&rang"

    const/16 v2, 0x232a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&loz"

    const/16 v2, 0x25ca

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&spades"

    const/16 v2, 0x2660

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&clubs"

    const/16 v2, 0x2663

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&hearts"

    const/16 v2, 0x2665

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&diams"

    const/16 v2, 0x2666

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&quot"

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&amp"

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&lt"

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&gt"

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&OElig"

    const/16 v2, 0x152

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&oelig"

    const/16 v2, 0x153

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Scaron"

    const/16 v2, 0x160

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&scaron"

    const/16 v2, 0x161

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Yuml"

    const/16 v2, 0x178

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&circ"

    const/16 v2, 0x2c6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&tilde"

    const/16 v2, 0x2dc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&ensp"

    const/16 v2, 0x2002

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&emsp"

    const/16 v2, 0x2003

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&thinsp"

    const/16 v2, 0x2009

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&zwnj"

    const/16 v2, 0x200c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&zwj"

    const/16 v2, 0x200d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&lrm"

    const/16 v2, 0x200e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&rlm"

    const/16 v2, 0x200f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&ndash"

    const/16 v2, 0x2013

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&mdash"

    const/16 v2, 0x2014

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&lsquo"

    const/16 v2, 0x2018

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&rsquo"

    const/16 v2, 0x2019

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&sbquo"

    const/16 v2, 0x201a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&ldquo"

    const/16 v2, 0x201c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&rdquo"

    const/16 v2, 0x201d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&bdquo"

    const/16 v2, 0x201e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&dagger"

    const/16 v2, 0x2020

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&Dagger"

    const/16 v2, 0x2021

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&permil"

    const/16 v2, 0x2030

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&lsaquo"

    const/16 v2, 0x2039

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&rsaquo"

    const/16 v2, 0x203a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    const-string v1, "&euro"

    const/16 v2, 0x20ac

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 1254
    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpz:Ljava/util/Set;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1255
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpz:Ljava/util/Set;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1256
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpz:Ljava/util/Set;

    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1257
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpz:Ljava/util/Set;

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1258
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpz:Ljava/util/Set;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1259
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpz:Ljava/util/Set;

    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1260
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpz:Ljava/util/Set;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1261
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpz:Ljava/util/Set;

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1262
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpz:Ljava/util/Set;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1263
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpz:Ljava/util/Set;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1264
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpz:Ljava/util/Set;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1265
    sget-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpz:Ljava/util/Set;

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1412
    new-instance v0, Lcom/google/android/mail/common/base/b;

    invoke-direct {v0}, Lcom/google/android/mail/common/base/b;-><init>()V

    const-string v1, "&lt;"

    invoke-virtual {v0, v4, v1}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const-string v1, "&gt;"

    invoke-virtual {v0, v5, v1}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mail/common/base/b;->VS()Lcom/google/android/mail/common/base/a;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpA:Lcom/google/android/mail/common/base/a;

    .line 1418
    const-string v0, "</?[a-zA-Z][^>]*>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpB:Ljava/util/regex/Pattern;

    .line 1756
    const-string v0, "\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\u0008\u000b\u000c\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f\ufffe\uffff"

    invoke-static {v0}, Lcom/google/android/mail/common/base/j;->x(Ljava/lang/CharSequence;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpC:Lcom/google/android/mail/common/base/j;

    .line 1811
    new-instance v0, Lcom/google/android/mail/common/base/b;

    invoke-direct {v0}, Lcom/google/android/mail/common/base/b;-><init>()V

    const-string v1, "\\n"

    invoke-virtual {v0, v6, v1}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const-string v1, "\\r"

    invoke-virtual {v0, v7, v1}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x9

    const-string v2, "\\t"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x22

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x26

    const-string v2, "&amp;"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const-string v1, "&lt;"

    invoke-virtual {v0, v4, v1}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const-string v1, "&gt;"

    invoke-virtual {v0, v5, v1}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x27

    const-string v2, "\\\'"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mail/common/base/b;->VS()Lcom/google/android/mail/common/base/a;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpD:Lcom/google/android/mail/common/base/a;

    .line 1838
    new-instance v0, Lcom/google/android/mail/common/base/b;

    invoke-direct {v0}, Lcom/google/android/mail/common/base/b;-><init>()V

    const/16 v1, 0x28

    const-string v2, "\\("

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x29

    const-string v2, "\\)"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x7c

    const-string v2, "\\|"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x2a

    const-string v2, "\\*"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x2b

    const-string v2, "\\+"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x3f

    const-string v2, "\\?"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x2e

    const-string v2, "\\."

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x7b

    const-string v2, "\\{"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x7d

    const-string v2, "\\}"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x5b

    const-string v2, "\\["

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x5d

    const-string v2, "\\]"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x24

    const-string v2, "\\$"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x5e

    const-string v2, "\\^"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mail/common/base/b;->VS()Lcom/google/android/mail/common/base/a;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpE:Lcom/google/android/mail/common/base/a;

    .line 2352
    const-string v0, "&#?[a-zA-Z0-9]{1,8};"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpF:Ljava/util/regex/Pattern;

    .line 2404
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2405
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2406
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2407
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KANGXI_RADICALS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2408
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2409
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2410
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2411
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2412
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2413
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KANBUN:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2414
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO_EXTENDED:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2415
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2416
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->ENCLOSED_CJK_LETTERS_AND_MONTHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2417
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2418
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2419
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2420
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2421
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2422
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2423
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2424
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2425
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2426
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpG:Ljava/util/Set;

    .line 2681
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 2684
    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpH:[C

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpI:[C

    .line 2740
    const-string v0, "(.*)\\{(\\d+),(\\d+)\\}(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpJ:Ljava/util/regex/Pattern;

    .line 3162
    new-instance v0, Lcom/google/android/mail/common/base/J;

    invoke-direct {v0, v3}, Lcom/google/android/mail/common/base/J;-><init>(B)V

    const/16 v1, 0xad

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/J;->eW(I)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    const/16 v1, 0x600

    const/16 v2, 0x603

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/J;->ae(II)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    const/16 v1, 0x6dd

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/J;->eW(I)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    const/16 v1, 0x70f

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/J;->eW(I)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    const/16 v1, 0x17b4

    const/16 v2, 0x17b5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/J;->ae(II)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    const/16 v1, 0x200b

    const/16 v2, 0x200f

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/J;->ae(II)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    const/16 v1, 0x202a

    const/16 v2, 0x202e

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/J;->ae(II)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    const/16 v1, 0x2060

    const/16 v2, 0x2064

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/J;->ae(II)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    const/16 v1, 0x206a

    const/16 v2, 0x206f

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/J;->ae(II)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    const v1, 0xfeff

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/J;->eW(I)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    const v1, 0xfff9

    const v2, 0xfffb

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/J;->ae(II)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    const v1, 0x1d173

    const v2, 0x1d17a

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/J;->ae(II)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    const v1, 0xe0001

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/J;->eW(I)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    const v1, 0xe0020

    const v2, 0xe007f

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/J;->ae(II)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/mail/common/base/J;->eW(I)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/mail/common/base/J;->eW(I)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/android/mail/common/base/J;->eW(I)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    const/16 v1, 0x2028

    const/16 v2, 0x2029

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/J;->ae(II)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/J;->eW(I)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    const-string v1, "\'"

    invoke-static {v1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/J;->eW(I)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    const-string v1, "\""

    invoke-static {v1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/J;->eW(I)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    const-string v1, "&"

    invoke-static {v1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/J;->eW(I)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    const-string v1, "<"

    invoke-static {v1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/J;->eW(I)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    const-string v1, ">"

    invoke-static {v1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/J;->eW(I)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    const-string v1, "="

    invoke-static {v1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/J;->eW(I)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    const-string v1, "\\"

    invoke-static {v1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/J;->eW(I)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/mail/common/base/J;->cpM:Ljava/util/Set;

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpK:Ljava/util/Set;

    .line 3194
    new-instance v0, Lcom/google/android/mail/common/base/J;

    invoke-direct {v0, v3}, Lcom/google/android/mail/common/base/J;-><init>(B)V

    const-string v1, "\""

    invoke-static {v1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/J;->eW(I)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    const-string v1, "\\"

    invoke-static {v1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/J;->eW(I)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v3, v1}, Lcom/google/android/mail/common/base/J;->ae(II)Lcom/google/android/mail/common/base/J;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/mail/common/base/J;->cpM:Ljava/util/Set;

    sput-object v0, Lcom/google/android/mail/common/base/StringUtil;->cpL:Ljava/util/Set;

    return-void

    .line 2681
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static final gH(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1282
    invoke-static {p0}, Lcom/google/android/mail/common/base/StringUtil;->gI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static gI(Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    .prologue
    .line 1303
    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1304
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1408
    :goto_0
    return-object p0

    .line 1310
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 1311
    array-length v1, v8

    new-array v9, v1, [C

    .line 1312
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v8, v1, v9, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v0

    move v2, v0

    .line 1317
    :goto_1
    array-length v0, v8

    if-ge v1, v0, :cond_f

    .line 1318
    aget-char v0, v8, v1

    const/16 v3, 0x26

    if-eq v0, v3, :cond_1

    .line 1319
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    aget-char v1, v8, v1

    aput-char v1, v9, v2

    move v1, v0

    move v2, v3

    .line 1320
    goto :goto_1

    .line 1324
    :cond_1
    add-int/lit8 v3, v1, 0x1

    .line 1325
    const/4 v0, 0x0

    .line 1326
    array-length v4, v8

    if-ge v3, v4, :cond_2

    aget-char v4, v8, v3

    const/16 v5, 0x23

    if-ne v4, v5, :cond_2

    .line 1327
    add-int/lit8 v3, v3, 0x1

    .line 1328
    const/4 v0, 0x1

    .line 1332
    :cond_2
    const/4 v4, 0x0

    .line 1333
    array-length v5, v8

    if-ge v3, v5, :cond_13

    aget-char v5, v8, v3

    const/16 v6, 0x78

    if-eq v5, v6, :cond_3

    aget-char v5, v8, v3

    const/16 v6, 0x58

    if-ne v5, v6, :cond_13

    .line 1334
    :cond_3
    add-int/lit8 v4, v3, 0x1

    .line 1335
    const/4 v3, 0x1

    .line 1339
    :goto_2
    array-length v5, v8

    if-ge v4, v5, :cond_7

    .line 1340
    aget-char v5, v8, v4

    .line 1341
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    .line 1342
    if-eqz v0, :cond_5

    .line 1344
    if-nez v3, :cond_4

    if-eqz v6, :cond_7

    .line 1345
    :cond_4
    if-eqz v3, :cond_5

    if-nez v6, :cond_5

    sget-object v7, Lcom/google/android/mail/common/base/StringUtil;->cpz:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1349
    :cond_5
    if-nez v6, :cond_6

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1354
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1358
    :cond_7
    const/4 v5, 0x0

    .line 1359
    array-length v0, v8

    if-ge v4, v0, :cond_11

    aget-char v0, v8, v4

    const/16 v6, 0x3b

    if-ne v0, v6, :cond_11

    .line 1362
    add-int/lit8 v0, v1, 0x2

    array-length v6, v8

    if-ge v0, v6, :cond_e

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x23

    if-ne v0, v6, :cond_e

    .line 1364
    const-wide/16 v6, 0x0

    .line 1365
    add-int/lit8 v0, v1, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1366
    if-eqz v3, :cond_c

    .line 1367
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x3

    sub-int v6, v4, v1

    add-int/lit8 v6, v6, -0x3

    invoke-direct {v0, v8, v3, v6}, Ljava/lang/String;-><init>([CII)V

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 1375
    :cond_8
    :goto_3
    const-wide/16 v10, 0x0

    cmp-long v0, v6, v10

    if-lez v0, :cond_9

    const-wide/32 v10, 0xd800

    cmp-long v0, v6, v10

    if-ltz v0, :cond_a

    :cond_9
    const-wide/32 v10, 0xdfff

    cmp-long v0, v6, v10

    if-lez v0, :cond_d

    const-wide/32 v10, 0xfffe

    cmp-long v0, v6, v10

    if-gez v0, :cond_d

    .line 1376
    :cond_a
    add-int/lit8 v0, v2, 0x1

    long-to-int v3, v6

    int-to-char v3, v3

    :try_start_1
    aput-char v3, v9, v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1377
    const/4 v5, 0x1

    move v2, v0

    .line 1396
    :cond_b
    :goto_4
    array-length v0, v8

    if-ge v4, v0, :cond_11

    aget-char v0, v8, v4

    const/16 v3, 0x3b

    if-ne v0, v3, :cond_11

    .line 1397
    add-int/lit8 v4, v4, 0x1

    move v0, v4

    .line 1401
    :goto_5
    if-nez v5, :cond_10

    .line 1403
    sub-int v3, v0, v1

    invoke-static {v8, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1404
    sub-int v1, v0, v1

    add-int/2addr v1, v2

    :goto_6
    move v2, v1

    move v1, v0

    .line 1407
    goto/16 :goto_1

    .line 1369
    :cond_c
    :try_start_2
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1370
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x2

    sub-int v6, v4, v1

    add-int/lit8 v6, v6, -0x2

    invoke-direct {v0, v8, v3, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v6

    goto :goto_3

    .line 1378
    :cond_d
    const-wide/32 v10, 0x10000

    cmp-long v0, v6, v10

    if-ltz v0, :cond_12

    const-wide/32 v10, 0x110000

    cmp-long v0, v6, v10

    if-gez v0, :cond_12

    .line 1380
    add-int/lit8 v0, v2, 0x1

    const-wide/32 v10, 0x10000

    sub-long v10, v6, v10

    const-wide/16 v12, 0x400

    :try_start_3
    div-long/2addr v10, v12

    const-wide/32 v12, 0xd800

    add-long/2addr v10, v12

    long-to-int v3, v10

    int-to-char v3, v3

    aput-char v3, v9, v2
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1381
    add-int/lit8 v2, v0, 0x1

    const-wide/32 v10, 0x10000

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x400

    :try_start_4
    rem-long/2addr v6, v10

    const-wide/32 v10, 0xdc00

    add-long/2addr v6, v10

    long-to-int v3, v6

    int-to-char v3, v3

    aput-char v3, v9, v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1382
    const/4 v0, 0x1

    :goto_7
    move v5, v0

    .line 1386
    goto :goto_4

    .line 1388
    :cond_e
    new-instance v0, Ljava/lang/String;

    sub-int v3, v4, v1

    invoke-direct {v0, v8, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 1389
    sget-object v3, Lcom/google/android/mail/common/base/StringUtil;->abH:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 1390
    if-eqz v0, :cond_b

    .line 1391
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    aput-char v0, v9, v2

    .line 1392
    const/4 v5, 0x1

    move v2, v3

    goto :goto_4

    .line 1408
    :cond_f
    new-instance p0, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v9, v0, v2}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0

    .line 1386
    :catch_0
    move-exception v0

    goto/16 :goto_4

    :catch_1
    move-exception v2

    move v2, v0

    goto/16 :goto_4

    :cond_10
    move v1, v2

    goto :goto_6

    :cond_11
    move v0, v4

    goto/16 :goto_5

    :cond_12
    move v0, v5

    goto :goto_7

    :cond_13
    move v14, v4

    move v4, v3

    move v3, v14

    goto/16 :goto_2
.end method
