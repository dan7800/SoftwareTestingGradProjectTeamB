.class public final Lcom/google/android/gms/clearcut/a;
.super Ljava/lang/Object;


# static fields
.field public static final bBI:Lcom/google/android/gms/common/api/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/h",
            "<",
            "Lcom/google/android/gms/internal/G;",
            ">;"
        }
    .end annotation
.end field

.field public static final bBJ:Lcom/google/android/gms/common/api/g;

.field public static final bBK:Lcom/google/android/gms/common/api/a;

.field public static final bBL:Lcom/google/android/gms/clearcut/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/h;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/a;->bBI:Lcom/google/android/gms/common/api/h;

    new-instance v0, Lcom/google/android/gms/clearcut/b;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/a;->bBJ:Lcom/google/android/gms/common/api/g;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/clearcut/a;->bBJ:Lcom/google/android/gms/common/api/g;

    sget-object v2, Lcom/google/android/gms/clearcut/a;->bBI:Lcom/google/android/gms/common/api/h;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/v;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/h;[Lcom/google/android/gms/common/api/v;)V

    sput-object v0, Lcom/google/android/gms/clearcut/a;->bBK:Lcom/google/android/gms/common/api/a;

    new-instance v0, Lcom/google/android/gms/internal/F;

    invoke-direct {v0}, Lcom/google/android/gms/internal/F;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/a;->bBL:Lcom/google/android/gms/clearcut/d;

    return-void
.end method
