.class public final Lcom/google/android/gms/drive/a;
.super Ljava/lang/Object;


# static fields
.field public static final bBI:Lcom/google/android/gms/common/api/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/h",
            "<",
            "Lcom/google/android/gms/drive/internal/W;",
            ">;"
        }
    .end annotation
.end field

.field public static final bBK:Lcom/google/android/gms/common/api/a;

.field public static final bGo:Lcom/google/android/gms/common/api/v;

.field public static final bGp:Lcom/google/android/gms/common/api/v;

.field public static final bGq:Lcom/google/android/gms/common/api/v;

.field public static final bGr:Lcom/google/android/gms/common/api/v;

.field public static final bGs:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a",
            "<",
            "Lcom/google/android/gms/drive/e;",
            ">;"
        }
    .end annotation
.end field

.field public static final bGt:Lcom/google/android/gms/drive/f;

.field public static final bGu:Lcom/google/android/gms/drive/i;

.field public static final bGv:Lcom/google/android/gms/drive/l;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/common/api/h;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/a;->bBI:Lcom/google/android/gms/common/api/h;

    new-instance v0, Lcom/google/android/gms/common/api/v;

    const-string v1, "https://www.googleapis.com/auth/drive.file"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/a;->bGo:Lcom/google/android/gms/common/api/v;

    new-instance v0, Lcom/google/android/gms/common/api/v;

    const-string v1, "https://www.googleapis.com/auth/drive.appdata"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/a;->bGp:Lcom/google/android/gms/common/api/v;

    new-instance v0, Lcom/google/android/gms/common/api/v;

    const-string v1, "https://www.googleapis.com/auth/drive"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/a;->bGq:Lcom/google/android/gms/common/api/v;

    new-instance v0, Lcom/google/android/gms/common/api/v;

    const-string v1, "https://www.googleapis.com/auth/drive.apps"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/drive/a;->bGr:Lcom/google/android/gms/common/api/v;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    new-instance v1, Lcom/google/android/gms/drive/b;

    invoke-direct {v1}, Lcom/google/android/gms/drive/b;-><init>()V

    sget-object v2, Lcom/google/android/gms/drive/a;->bBI:Lcom/google/android/gms/common/api/h;

    new-array v3, v4, [Lcom/google/android/gms/common/api/v;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/h;[Lcom/google/android/gms/common/api/v;)V

    sput-object v0, Lcom/google/android/gms/drive/a;->bBK:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    new-instance v1, Lcom/google/android/gms/drive/c;

    invoke-direct {v1}, Lcom/google/android/gms/drive/c;-><init>()V

    sget-object v2, Lcom/google/android/gms/drive/a;->bBI:Lcom/google/android/gms/common/api/h;

    new-array v3, v4, [Lcom/google/android/gms/common/api/v;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/h;[Lcom/google/android/gms/common/api/v;)V

    sput-object v0, Lcom/google/android/gms/drive/a;->bGs:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/drive/internal/U;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/U;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/a;->bGt:Lcom/google/android/gms/drive/f;

    new-instance v0, Lcom/google/android/gms/drive/internal/Y;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/Y;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/a;->bGu:Lcom/google/android/gms/drive/i;

    new-instance v0, Lcom/google/android/gms/drive/internal/af;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/af;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/a;->bGv:Lcom/google/android/gms/drive/l;

    return-void
.end method
