.class public final Lcom/google/android/gms/internal/ao;
.super Ljava/lang/Object;


# static fields
.field public static final bUj:Lcom/google/android/gms/drive/metadata/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final bUk:Lcom/google/android/gms/drive/metadata/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/metadata/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/g;

    const-string v1, "contentAvailability"

    invoke-direct {v0, v1}, Lcom/google/android/gms/drive/metadata/internal/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ao;->bUj:Lcom/google/android/gms/drive/metadata/a;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/c;

    const-string v1, "isPinnable"

    const v2, 0x419ce0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ao;->bUk:Lcom/google/android/gms/drive/metadata/a;

    return-void
.end method
