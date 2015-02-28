.class public final Lcom/google/android/gms/internal/ay;
.super Ljava/lang/Object;


# static fields
.field static final bBI:Lcom/google/android/gms/common/api/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/h",
            "<",
            "Lcom/google/android/gms/internal/aB;",
            ">;"
        }
    .end annotation
.end field

.field static final bBJ:Lcom/google/android/gms/common/api/g;

.field public static final bBK:Lcom/google/android/gms/common/api/a;

.field public static final bUn:Lcom/google/android/gms/internal/aA;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/h;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ay;->bBI:Lcom/google/android/gms/common/api/h;

    new-instance v0, Lcom/google/android/gms/internal/az;

    invoke-direct {v0}, Lcom/google/android/gms/internal/az;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ay;->bBJ:Lcom/google/android/gms/common/api/g;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/internal/ay;->bBJ:Lcom/google/android/gms/common/api/g;

    sget-object v2, Lcom/google/android/gms/internal/ay;->bBI:Lcom/google/android/gms/common/api/h;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/v;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/h;[Lcom/google/android/gms/common/api/v;)V

    sput-object v0, Lcom/google/android/gms/internal/ay;->bBK:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/internal/aC;

    sget-object v1, Lcom/google/android/gms/internal/ay;->bBI:Lcom/google/android/gms/common/api/h;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/aC;-><init>(Lcom/google/android/gms/common/api/h;)V

    sput-object v0, Lcom/google/android/gms/internal/ay;->bUn:Lcom/google/android/gms/internal/aA;

    return-void
.end method
