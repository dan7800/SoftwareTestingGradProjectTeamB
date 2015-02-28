.class final Lcom/google/android/gms/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final acn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/ae;",
            ">;"
        }
    .end annotation
.end field

.field public final acq:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final acr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/g;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic bBF:Lcom/google/android/gms/b/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/d;Ljava/util/List;Ljava/util/Set;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/ae;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/android/gms/b/f;->bBF:Lcom/google/android/gms/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p2, p0, Lcom/google/android/gms/b/f;->acn:Ljava/util/List;

    .line 204
    iput-object p3, p0, Lcom/google/android/gms/b/f;->acq:Ljava/util/Set;

    .line 205
    iput-object p4, p0, Lcom/google/android/gms/b/f;->acr:Ljava/util/List;

    .line 206
    return-void
.end method
