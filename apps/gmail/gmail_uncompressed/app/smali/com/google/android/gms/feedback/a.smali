.class public final Lcom/google/android/gms/feedback/a;
.super Ljava/lang/Object;


# static fields
.field private static final bBI:Lcom/google/android/gms/common/api/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/h",
            "<",
            "Lcom/google/android/gms/internal/aq;",
            ">;"
        }
    .end annotation
.end field

.field private static final bBJ:Lcom/google/android/gms/common/api/g;

.field public static final bBK:Lcom/google/android/gms/common/api/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/h;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/feedback/a;->bBI:Lcom/google/android/gms/common/api/h;

    new-instance v0, Lcom/google/android/gms/feedback/b;

    invoke-direct {v0}, Lcom/google/android/gms/feedback/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/feedback/a;->bBJ:Lcom/google/android/gms/common/api/g;

    new-instance v0, Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/feedback/a;->bBJ:Lcom/google/android/gms/common/api/g;

    sget-object v2, Lcom/google/android/gms/feedback/a;->bBI:Lcom/google/android/gms/common/api/h;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/v;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/a;-><init>(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/h;[Lcom/google/android/gms/common/api/v;)V

    sput-object v0, Lcom/google/android/gms/feedback/a;->bBK:Lcom/google/android/gms/common/api/a;

    return-void
.end method

.method static synthetic Mg()Lcom/google/android/gms/common/api/h;
    .locals 1

    sget-object v0, Lcom/google/android/gms/feedback/a;->bBI:Lcom/google/android/gms/common/api/h;

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/feedback/e;)Lcom/google/android/gms/common/api/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/n;",
            "Lcom/google/android/gms/feedback/e;",
            ")",
            "Lcom/google/android/gms/common/api/r",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/feedback/c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/feedback/c;-><init>(Lcom/google/android/gms/feedback/e;)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/n;->a(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/l;

    move-result-object v0

    return-object v0
.end method
