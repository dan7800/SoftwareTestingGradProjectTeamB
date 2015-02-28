.class abstract Lcom/google/android/gms/feedback/d;
.super Lcom/google/android/gms/common/api/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/l",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        "Lcom/google/android/gms/internal/aq;",
        ">;"
    }
.end annotation


# static fields
.field private static final bKi:Lcom/google/android/gms/common/api/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/feedback/d;->bKi:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/feedback/a;->Mg()Lcom/google/android/gms/common/api/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/l;-><init>(Lcom/google/android/gms/common/api/h;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/t;
    .locals 0

    return-object p1
.end method

.method public final cg(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->bCB:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/feedback/d;->c(Lcom/google/android/gms/common/api/t;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/feedback/d;->bKi:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/feedback/d;->c(Lcom/google/android/gms/common/api/t;)V

    goto :goto_0
.end method
