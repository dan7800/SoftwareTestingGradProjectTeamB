.class public final Lcom/google/android/gms/d/a;
.super Ljava/lang/Object;


# static fields
.field private static cgd:Z

.field private static final cge:Lcom/google/android/gms/common/api/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/d/a;->cgd:Z

    new-instance v0, Lcom/google/android/gms/d/b;

    invoke-direct {v0}, Lcom/google/android/gms/d/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/d/a;->cge:Lcom/google/android/gms/common/api/q;

    return-void
.end method

.method static synthetic UI()Z
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/d/a;->cgd:Z

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Long;Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x0

    sget-boolean v0, Lcom/google/android/gms/d/a;->cgd:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/o;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/o;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/d/a;->cge:Lcom/google/android/gms/common/api/q;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/o;->c(Lcom/google/android/gms/common/api/q;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ay;->bBK:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/o;->Ky()Lcom/google/android/gms/common/api/n;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/api/n;->connect()V

    sget-object v0, Lcom/google/android/gms/internal/ay;->bUn:Lcom/google/android/gms/internal/aA;

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/aA;->a(Lcom/google/android/gms/common/api/n;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/os/Bundle;)Lcom/google/android/gms/common/api/r;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/d/c;

    invoke-direct {v2, v1}, Lcom/google/android/gms/d/c;-><init>(Lcom/google/android/gms/common/api/n;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/r;->a(Lcom/google/android/gms/common/api/u;)V

    goto :goto_0
.end method
