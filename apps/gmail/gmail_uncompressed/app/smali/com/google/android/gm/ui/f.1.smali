.class final Lcom/google/android/gm/ui/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bpF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/ui/e;",
            ">;"
        }
    .end annotation
.end field

.field private final bpG:Lcom/google/android/gm/ui/i;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/ui/i;)V
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/ui/f;->bpF:Ljava/util/List;

    .line 229
    iput-object p1, p0, Lcom/google/android/gm/ui/f;->bpG:Lcom/google/android/gm/ui/i;

    .line 230
    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/ui/f;)Ljava/util/List;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/gm/ui/f;->bpF:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gm/ui/f;)Lcom/google/android/gm/ui/i;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/gm/ui/f;->bpG:Lcom/google/android/gm/ui/i;

    return-object v0
.end method
