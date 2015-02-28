.class final Lcom/google/android/gm/provider/R;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic bgA:Lcom/google/android/gm/provider/P;

.field public final bgB:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final bgC:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public bgD:Z

.field public bgE:Z

.field private final bgF:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private bgG:I


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/P;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    iput-object p1, p0, Lcom/google/android/gm/provider/R;->bgA:Lcom/google/android/gm/provider/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/R;->bgB:Ljava/util/Set;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/R;->bgC:Ljava/util/Set;

    .line 74
    iput-boolean v1, p0, Lcom/google/android/gm/provider/R;->bgD:Z

    .line 80
    iput-boolean v1, p0, Lcom/google/android/gm/provider/R;->bgE:Z

    .line 95
    iput v1, p0, Lcom/google/android/gm/provider/R;->bgG:I

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/R;->bgF:Ljava/util/Stack;

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/provider/R;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/google/android/gm/provider/R;->bgG:I

    return v0
.end method

.method static synthetic a(Lcom/google/android/gm/provider/R;I)I
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/google/android/gm/provider/R;->bgG:I

    return p1
.end method
