.class public final Lcom/google/android/gms/internal/ca;
.super Ljava/lang/Object;


# static fields
.field public static final bWn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static bWo:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<*>;"
        }
    .end annotation
.end field

.field public static final bWp:Landroid/os/Handler;

.field public static final bWq:[Ljava/lang/String;

.field public static final bWr:Ljava/util/regex/Pattern;

.field public static final bWs:Ljava/util/regex/Pattern;

.field public static final bWt:Ljava/security/SecureRandom;

.field private static final bWu:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final bWv:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final bWw:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final bWx:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final bWy:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final bWz:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/pn$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/pn$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ca;->bWn:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/bE;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bE;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ca;->bWo:Ljava/lang/Iterable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/ca;->bWp:Landroid/os/Handler;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/ca;->bWq:[Ljava/lang/String;

    const-string v0, "\\,"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ca;->bWr:Ljava/util/regex/Pattern;

    const-string v0, "[\u2028\u2029 \u00a0\u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\t\u000b\u000c\u001c\u001d\u001e\u001f\n\r]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ca;->bWs:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ca;->bWt:Ljava/security/SecureRandom;

    new-instance v0, Lcom/google/android/gms/internal/cb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ca;->bWu:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/cc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ca;->bWv:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/cd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ca;->bWw:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/ce;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ce;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ca;->bWx:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/cf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ca;->bWy:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/android/gms/internal/cg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ca;->bWz:Ljava/lang/ThreadLocal;

    return-void
.end method
