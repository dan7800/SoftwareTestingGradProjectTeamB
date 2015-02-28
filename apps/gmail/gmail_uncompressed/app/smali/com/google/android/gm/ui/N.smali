.class final Lcom/google/android/gm/ui/N;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aMz:Landroid/view/View;

.field private final aoc:Landroid/widget/TextView;

.field private aqp:Lcom/android/mail/providers/Folder;

.field private final bqK:Landroid/widget/TextView;

.field private bqL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->Zr()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ui/N;->bqL:Ljava/util/List;

    .line 125
    iput-object p1, p0, Lcom/google/android/gm/ui/N;->aMz:Landroid/view/View;

    .line 126
    iput-object p2, p0, Lcom/google/android/gm/ui/N;->aoc:Landroid/widget/TextView;

    .line 127
    iput-object p3, p0, Lcom/google/android/gm/ui/N;->bqK:Landroid/widget/TextView;

    .line 128
    return-void
.end method

.method static synthetic b(Lcom/google/android/gm/ui/N;)Lcom/android/mail/providers/Folder;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/gm/ui/N;->aqp:Lcom/android/mail/providers/Folder;

    return-object v0
.end method


# virtual methods
.method public final IA()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/gm/ui/N;->bqL:Ljava/util/List;

    return-object v0
.end method

.method public final Iz()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/gm/ui/N;->bqK:Landroid/widget/TextView;

    return-object v0
.end method

.method public final M(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/android/gm/ui/N;->bqL:Ljava/util/List;

    .line 159
    return-void
.end method

.method public final d(Lcom/android/mail/providers/Folder;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/gm/ui/N;->aqp:Lcom/android/mail/providers/Folder;

    .line 132
    return-void
.end method

.method public final vT()Lcom/android/mail/providers/Folder;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/gm/ui/N;->aqp:Lcom/android/mail/providers/Folder;

    return-object v0
.end method

.method public final zQ()Landroid/view/View;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/gm/ui/N;->aMz:Landroid/view/View;

    return-object v0
.end method

.method public final zR()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/gm/ui/N;->aoc:Landroid/widget/TextView;

    return-object v0
.end method
