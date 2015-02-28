.class public final Lcom/android/mail/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static axl:Ljava/util/Map;

.field private static final mW:Ljava/lang/String;


# instance fields
.field private final axj:Ljava/util/Map;

.field private final axk:Ljava/util/Map;
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

.field private final kr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/f/b;->mW:Ljava/lang/String;

    .line 181
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/mail/f/b;->axl:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mail/f/b;-><init>(B)V

    .line 83
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/f/b;->axj:Ljava/util/Map;

    .line 78
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/f/b;->axk:Ljava/util/Map;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/f/b;->kr:Z

    .line 87
    return-void
.end method

.method public static td()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public static te()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public static tf()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public static tg()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public static th()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method
