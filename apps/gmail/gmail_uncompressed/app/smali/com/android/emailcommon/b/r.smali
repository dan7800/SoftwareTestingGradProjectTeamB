.class public final Lcom/android/emailcommon/b/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final abF:Ljava/lang/String;

.field static final abG:[Ljava/lang/String;

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


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xfc

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0xffff00

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/b/r;->abF:Ljava/lang/String;

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "script"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "style"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "applet"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "head"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/b/r;->abG:[Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 60
    sput-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&nbsp"

    const/16 v2, 0xa0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&iexcl"

    const/16 v2, 0xa1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&cent"

    const/16 v2, 0xa2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&pound"

    const/16 v2, 0xa3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&curren"

    const/16 v2, 0xa4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&yen"

    const/16 v2, 0xa5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&brvbar"

    const/16 v2, 0xa6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&sect"

    const/16 v2, 0xa7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&uml"

    const/16 v2, 0xa8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&copy"

    const/16 v2, 0xa9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&ordf"

    const/16 v2, 0xaa

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&laquo"

    const/16 v2, 0xab

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&not"

    const/16 v2, 0xac

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&shy"

    const/16 v2, 0xad

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&reg"

    const/16 v2, 0xae

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&macr"

    const/16 v2, 0xaf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&deg"

    const/16 v2, 0xb0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&plusmn"

    const/16 v2, 0xb1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&sup2"

    const/16 v2, 0xb2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&sup3"

    const/16 v2, 0xb3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&acute"

    const/16 v2, 0xb4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&micro"

    const/16 v2, 0xb5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&para"

    const/16 v2, 0xb6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&middot"

    const/16 v2, 0xb7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&cedil"

    const/16 v2, 0xb8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&sup1"

    const/16 v2, 0xb9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&ordm"

    const/16 v2, 0xba

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&raquo"

    const/16 v2, 0xbb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&frac14"

    const/16 v2, 0xbc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&frac12"

    const/16 v2, 0xbd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&frac34"

    const/16 v2, 0xbe

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&iquest"

    const/16 v2, 0xbf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Agrave"

    const/16 v2, 0xc0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Aacute"

    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Acirc"

    const/16 v2, 0xc2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Atilde"

    const/16 v2, 0xc3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Auml"

    const/16 v2, 0xc4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Aring"

    const/16 v2, 0xc5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&AElig"

    const/16 v2, 0xc6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Ccedil"

    const/16 v2, 0xc7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Egrave"

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Eacute"

    const/16 v2, 0xc9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Ecirc"

    const/16 v2, 0xca

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Euml"

    const/16 v2, 0xcb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Igrave"

    const/16 v2, 0xcc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Iacute"

    const/16 v2, 0xcd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Icirc"

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Iuml"

    const/16 v2, 0xcf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&ETH"

    const/16 v2, 0xd0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Ntilde"

    const/16 v2, 0xd1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Ograve"

    const/16 v2, 0xd2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Oacute"

    const/16 v2, 0xd3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Ocirc"

    const/16 v2, 0xd4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Otilde"

    const/16 v2, 0xd5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Ouml"

    const/16 v2, 0xd6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&times"

    const/16 v2, 0xd7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Oslash"

    const/16 v2, 0xd8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Ugrave"

    const/16 v2, 0xd9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Uacute"

    const/16 v2, 0xda

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Ucirc"

    const/16 v2, 0xdb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Uuml"

    const/16 v2, 0xdc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Yacute"

    const/16 v2, 0xdd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&THORN"

    const/16 v2, 0xde

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&szlig"

    const/16 v2, 0xdf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&agrave"

    const/16 v2, 0xe0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&aacute"

    const/16 v2, 0xe1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&acirc"

    const/16 v2, 0xe2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&atilde"

    const/16 v2, 0xe3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&auml"

    const/16 v2, 0xe4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&aring"

    const/16 v2, 0xe5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&aelig"

    const/16 v2, 0xe6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&ccedil"

    const/16 v2, 0xe7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&egrave"

    const/16 v2, 0xe8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&eacute"

    const/16 v2, 0xe9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&ecirc"

    const/16 v2, 0xea

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&euml"

    const/16 v2, 0xeb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&igrave"

    const/16 v2, 0xec

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&iacute"

    const/16 v2, 0xed

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&icirc"

    const/16 v2, 0xee

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&iuml"

    const/16 v2, 0xef

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&eth"

    const/16 v2, 0xf0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&ntilde"

    const/16 v2, 0xf1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&ograve"

    const/16 v2, 0xf2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&oacute"

    const/16 v2, 0xf3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&ocirc"

    const/16 v2, 0xf4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&otilde"

    const/16 v2, 0xf5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&ouml"

    const/16 v2, 0xf6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&divide"

    const/16 v2, 0xf7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&oslash"

    const/16 v2, 0xf8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&ugrave"

    const/16 v2, 0xf9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&uacute"

    const/16 v2, 0xfa

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&ucirc"

    const/16 v2, 0xfb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&uuml"

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&yacute"

    const/16 v2, 0xfd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&thorn"

    const/16 v2, 0xfe

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&yuml"

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&fnof"

    const/16 v2, 0x192

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Alpha"

    const/16 v2, 0x391

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Beta"

    const/16 v2, 0x392

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Gamma"

    const/16 v2, 0x393

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Delta"

    const/16 v2, 0x394

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Epsilon"

    const/16 v2, 0x395

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Zeta"

    const/16 v2, 0x396

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Eta"

    const/16 v2, 0x397

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Theta"

    const/16 v2, 0x398

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Iota"

    const/16 v2, 0x399

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Kappa"

    const/16 v2, 0x39a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Lambda"

    const/16 v2, 0x39b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Mu"

    const/16 v2, 0x39c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Nu"

    const/16 v2, 0x39d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Xi"

    const/16 v2, 0x39e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Omicron"

    const/16 v2, 0x39f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Pi"

    const/16 v2, 0x3a0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Rho"

    const/16 v2, 0x3a1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Sigma"

    const/16 v2, 0x3a3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Tau"

    const/16 v2, 0x3a4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Upsilon"

    const/16 v2, 0x3a5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Phi"

    const/16 v2, 0x3a6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Chi"

    const/16 v2, 0x3a7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Psi"

    const/16 v2, 0x3a8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Omega"

    const/16 v2, 0x3a9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&alpha"

    const/16 v2, 0x3b1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&beta"

    const/16 v2, 0x3b2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&gamma"

    const/16 v2, 0x3b3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&delta"

    const/16 v2, 0x3b4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&epsilon"

    const/16 v2, 0x3b5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&zeta"

    const/16 v2, 0x3b6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&eta"

    const/16 v2, 0x3b7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&theta"

    const/16 v2, 0x3b8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&iota"

    const/16 v2, 0x3b9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&kappa"

    const/16 v2, 0x3ba

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&lambda"

    const/16 v2, 0x3bb

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&mu"

    const/16 v2, 0x3bc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&nu"

    const/16 v2, 0x3bd

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&xi"

    const/16 v2, 0x3be

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&omicron"

    const/16 v2, 0x3bf

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&pi"

    const/16 v2, 0x3c0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&rho"

    const/16 v2, 0x3c1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&sigmaf"

    const/16 v2, 0x3c2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&sigma"

    const/16 v2, 0x3c3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&tau"

    const/16 v2, 0x3c4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&upsilon"

    const/16 v2, 0x3c5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&phi"

    const/16 v2, 0x3c6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&chi"

    const/16 v2, 0x3c7

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&psi"

    const/16 v2, 0x3c8

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&omega"

    const/16 v2, 0x3c9

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&thetasym"

    const/16 v2, 0x3d1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&upsih"

    const/16 v2, 0x3d2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&piv"

    const/16 v2, 0x3d6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&bull"

    const/16 v2, 0x2022

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&hellip"

    const/16 v2, 0x2026

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&prime"

    const/16 v2, 0x2032

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Prime"

    const/16 v2, 0x2033

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&oline"

    const/16 v2, 0x203e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&frasl"

    const/16 v2, 0x2044

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&weierp"

    const/16 v2, 0x2118

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&image"

    const/16 v2, 0x2111

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&real"

    const/16 v2, 0x211c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&trade"

    const/16 v2, 0x2122

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&alefsym"

    const/16 v2, 0x2135

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&larr"

    const/16 v2, 0x2190

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&uarr"

    const/16 v2, 0x2191

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&rarr"

    const/16 v2, 0x2192

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&darr"

    const/16 v2, 0x2193

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&harr"

    const/16 v2, 0x2194

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&crarr"

    const/16 v2, 0x21b5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&lArr"

    const/16 v2, 0x21d0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&uArr"

    const/16 v2, 0x21d1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&rArr"

    const/16 v2, 0x21d2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&dArr"

    const/16 v2, 0x21d3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&hArr"

    const/16 v2, 0x21d4

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&forall"

    const/16 v2, 0x2200

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&part"

    const/16 v2, 0x2202

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&exist"

    const/16 v2, 0x2203

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&empty"

    const/16 v2, 0x2205

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&nabla"

    const/16 v2, 0x2207

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&isin"

    const/16 v2, 0x2208

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&notin"

    const/16 v2, 0x2209

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&ni"

    const/16 v2, 0x220b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&prod"

    const/16 v2, 0x220f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&sum"

    const/16 v2, 0x2211

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&minus"

    const/16 v2, 0x2212

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&lowast"

    const/16 v2, 0x2217

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&radic"

    const/16 v2, 0x221a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&prop"

    const/16 v2, 0x221d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&infin"

    const/16 v2, 0x221e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&ang"

    const/16 v2, 0x2220

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&and"

    const/16 v2, 0x2227

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&or"

    const/16 v2, 0x2228

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&cap"

    const/16 v2, 0x2229

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&cup"

    const/16 v2, 0x222a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&int"

    const/16 v2, 0x222b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&there4"

    const/16 v2, 0x2234

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&sim"

    const/16 v2, 0x223c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&cong"

    const/16 v2, 0x2245

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&asymp"

    const/16 v2, 0x2248

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&ne"

    const/16 v2, 0x2260

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&equiv"

    const/16 v2, 0x2261

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&le"

    const/16 v2, 0x2264

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&ge"

    const/16 v2, 0x2265

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&sub"

    const/16 v2, 0x2282

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&sup"

    const/16 v2, 0x2283

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&nsub"

    const/16 v2, 0x2284

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&sube"

    const/16 v2, 0x2286

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&supe"

    const/16 v2, 0x2287

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&oplus"

    const/16 v2, 0x2295

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&otimes"

    const/16 v2, 0x2297

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&perp"

    const/16 v2, 0x22a5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&sdot"

    const/16 v2, 0x22c5

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&lceil"

    const/16 v2, 0x2308

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&rceil"

    const/16 v2, 0x2309

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&lfloor"

    const/16 v2, 0x230a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&rfloor"

    const/16 v2, 0x230b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&lang"

    const/16 v2, 0x2329

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&rang"

    const/16 v2, 0x232a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&loz"

    const/16 v2, 0x25ca

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&spades"

    const/16 v2, 0x2660

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&clubs"

    const/16 v2, 0x2663

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&hearts"

    const/16 v2, 0x2665

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&diams"

    const/16 v2, 0x2666

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&quot"

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&amp"

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&lt"

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&gt"

    const/16 v2, 0x3e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&OElig"

    const/16 v2, 0x152

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&oelig"

    const/16 v2, 0x153

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Scaron"

    const/16 v2, 0x160

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&scaron"

    const/16 v2, 0x161

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Yuml"

    const/16 v2, 0x178

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&circ"

    const/16 v2, 0x2c6

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&tilde"

    const/16 v2, 0x2dc

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&ensp"

    const/16 v2, 0x2002

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&emsp"

    const/16 v2, 0x2003

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&thinsp"

    const/16 v2, 0x2009

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&zwnj"

    const/16 v2, 0x200c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&zwj"

    const/16 v2, 0x200d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&lrm"

    const/16 v2, 0x200e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&rlm"

    const/16 v2, 0x200f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&ndash"

    const/16 v2, 0x2013

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&mdash"

    const/16 v2, 0x2014

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&lsquo"

    const/16 v2, 0x2018

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&rsquo"

    const/16 v2, 0x2019

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&sbquo"

    const/16 v2, 0x201a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&ldquo"

    const/16 v2, 0x201c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&rdquo"

    const/16 v2, 0x201d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&bdquo"

    const/16 v2, 0x201e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&dagger"

    const/16 v2, 0x2020

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&Dagger"

    const/16 v2, 0x2021

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&permil"

    const/16 v2, 0x2030

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&lsaquo"

    const/16 v2, 0x2039

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&rsaquo"

    const/16 v2, 0x203a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    const-string v1, "&euro"

    const/16 v2, 0x20ac

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    return-void
.end method

.method private static a(Ljava/lang/String;I[I)C
    .locals 10

    .prologue
    const/16 v1, 0x26

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 460
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 463
    aput v7, p2, v7

    .line 465
    add-int/lit8 v4, p1, 0xa

    .line 466
    const/4 v0, 0x0

    move v2, p1

    .line 468
    :goto_0
    if-ge v2, v3, :cond_5

    if-ge v2, v4, :cond_5

    .line 469
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3b

    if-ne v5, v6, :cond_0

    .line 470
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 474
    :goto_1
    if-nez v2, :cond_1

    move v0, v1

    .line 503
    :goto_2
    return v0

    .line 468
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 479
    :cond_1
    sget-object v0, Lcom/android/emailcommon/b/r;->abH:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 480
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 481
    if-eqz v0, :cond_2

    .line 482
    aput v3, p2, v7

    .line 483
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    goto :goto_2

    .line 484
    :cond_2
    if-le v3, v8, :cond_4

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x23

    if-ne v0, v4, :cond_4

    .line 486
    const/16 v0, 0x3f

    .line 489
    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x78

    if-ne v1, v4, :cond_3

    if-le v3, v9, :cond_3

    .line 490
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 494
    :goto_3
    int-to-char v0, v0

    .line 498
    :goto_4
    aput v3, p2, v7

    goto :goto_2

    .line 492
    :cond_3
    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_3

    :cond_4
    move v0, v1

    .line 503
    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method public static aC(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/emailcommon/b/r;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aD(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/emailcommon/b/r;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 18

    .prologue
    .line 366
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    .line 456
    :goto_0
    return-object v1

    .line 368
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v10

    .line 370
    const/16 v1, 0xc8

    new-array v11, v1, [C

    .line 375
    const/4 v1, 0x1

    new-array v12, v1, [I

    .line 376
    const/4 v6, 0x0

    .line 378
    const/16 v5, 0x20

    .line 380
    const/4 v1, 0x0

    .line 383
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v10, :cond_c

    const/16 v3, 0xc8

    if-ge v6, v3, :cond_c

    .line 384
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 385
    if-eqz p1, :cond_8

    if-nez v1, :cond_8

    const/16 v3, 0x3c

    if-ne v4, v3, :cond_8

    .line 387
    add-int/lit8 v3, v10, -0x1

    if-ge v2, v3, :cond_f

    .line 388
    add-int/lit8 v3, v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 389
    const/16 v7, 0x21

    if-eq v3, v7, :cond_1

    const/16 v7, 0x2d

    if-eq v3, v7, :cond_1

    const/16 v7, 0x2f

    if-eq v3, v7, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 390
    :cond_1
    const/4 v3, 0x1

    .line 392
    add-int/lit8 v1, v10, -0x8

    if-ge v2, v1, :cond_10

    .line 393
    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v7, v2, 0x6

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 394
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 395
    const/4 v1, 0x0

    .line 396
    sget-object v13, Lcom/android/emailcommon/b/r;->abG:[Ljava/lang/String;

    array-length v14, v13

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v14, :cond_11

    aget-object v15, v13, v8

    .line 397
    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 398
    const/4 v1, 0x1

    .line 399
    const/4 v8, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move/from16 v17, v1

    move-object v1, v7

    move/from16 v7, v17

    .line 403
    :goto_3
    if-eqz v7, :cond_10

    .line 405
    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v7, 0x0

    move v8, v7

    move v7, v2

    :goto_4
    if-ge v7, v13, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v14, 0x3e

    if-ne v9, v14, :cond_6

    const/16 v9, 0x2f

    if-ne v8, v9, :cond_7

    add-int/lit8 v1, v7, -0x1

    .line 406
    :goto_5
    if-ltz v1, :cond_c

    move v2, v3

    :goto_6
    move v3, v2

    move v2, v1

    .line 421
    :goto_7
    if-nez v3, :cond_b

    .line 423
    if-eqz p1, :cond_e

    const/16 v1, 0x26

    if-ne v4, v1, :cond_e

    .line 428
    move-object/from16 v0, p0

    invoke-static {v0, v2, v12}, Lcom/android/emailcommon/b/r;->a(Ljava/lang/String;I[I)C

    move-result v1

    .line 429
    const/4 v4, 0x0

    aget v4, v12, v4

    add-int/2addr v2, v4

    .line 432
    :goto_8
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0xa0

    if-ne v1, v4, :cond_9

    .line 435
    :cond_3
    const/16 v1, 0x20

    if-eq v5, v1, :cond_b

    .line 436
    const/16 v1, 0x20

    .line 444
    :cond_4
    add-int/lit8 v4, v6, 0x1

    aput-char v1, v11, v6

    move/from16 v17, v3

    move v3, v1

    move/from16 v1, v17

    .line 383
    :goto_9
    add-int/lit8 v2, v2, 0x1

    move v5, v3

    move v6, v4

    goto/16 :goto_1

    .line 396
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 405
    :cond_6
    add-int/lit8 v7, v7, 0x1

    move v8, v9

    goto :goto_4

    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_5

    .line 415
    :cond_8
    if-eqz p1, :cond_f

    if-eqz v1, :cond_f

    const/16 v3, 0x3e

    if-ne v4, v3, :cond_f

    .line 417
    const/4 v1, 0x0

    move v3, v5

    move v4, v6

    .line 418
    goto :goto_9

    .line 441
    :cond_9
    const/16 v4, 0x2d

    if-eq v1, v4, :cond_a

    const/16 v4, 0x3d

    if-ne v1, v4, :cond_4

    :cond_a
    if-ne v5, v1, :cond_4

    :cond_b
    move v1, v3

    move v4, v6

    move v3, v5

    goto :goto_9

    .line 453
    :cond_c
    if-lez v6, :cond_d

    const/16 v1, 0x20

    if-ne v5, v1, :cond_d

    .line 454
    add-int/lit8 v6, v6, -0x1

    .line 456
    :cond_d
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v11, v2, v6}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_0

    :cond_e
    move v1, v4

    goto :goto_8

    :cond_f
    move v3, v1

    goto :goto_7

    :cond_10
    move v1, v2

    move v2, v3

    goto :goto_6

    :cond_11
    move/from16 v17, v1

    move-object v1, v7

    move/from16 v7, v17

    goto/16 :goto_3

    :cond_12
    move/from16 v17, v2

    move v2, v1

    move/from16 v1, v17

    goto/16 :goto_6
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 723
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 725
    :cond_0
    :goto_0
    return v0

    .line 724
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 725
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
