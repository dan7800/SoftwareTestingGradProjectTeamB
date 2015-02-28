.class final Lcom/android/mail/ui/cI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final aMD:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/mail/ui/cI;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aMA:Landroid/widget/TextView;

.field private final aMB:Landroid/widget/ImageView;

.field private aMC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aMz:Landroid/view/View;

.field private final aoc:Landroid/widget/TextView;

.field private aqp:Lcom/android/mail/providers/Folder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Lcom/android/mail/ui/cJ;

    invoke-direct {v0}, Lcom/android/mail/ui/cJ;-><init>()V

    sput-object v0, Lcom/android/mail/ui/cI;->aMD:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->Zr()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/cI;->aMC:Ljava/util/List;

    .line 124
    iput-object p1, p0, Lcom/android/mail/ui/cI;->aMz:Landroid/view/View;

    .line 125
    iput-object p2, p0, Lcom/android/mail/ui/cI;->aoc:Landroid/widget/TextView;

    .line 126
    iput-object p3, p0, Lcom/android/mail/ui/cI;->aMA:Landroid/widget/TextView;

    .line 127
    iput-object p4, p0, Lcom/android/mail/ui/cI;->aMB:Landroid/widget/ImageView;

    .line 128
    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/cI;)Lcom/android/mail/providers/Folder;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mail/ui/cI;->aqp:Lcom/android/mail/providers/Folder;

    return-object v0
.end method


# virtual methods
.method public final d(Lcom/android/mail/providers/Folder;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/mail/ui/cI;->aqp:Lcom/android/mail/providers/Folder;

    .line 132
    return-void
.end method

.method public final vT()Lcom/android/mail/providers/Folder;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/mail/ui/cI;->aqp:Lcom/android/mail/providers/Folder;

    return-object v0
.end method

.method public final z(Ljava/util/List;)V
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
    .line 160
    iput-object p1, p0, Lcom/android/mail/ui/cI;->aMC:Ljava/util/List;

    .line 161
    return-void
.end method

.method public final zQ()Landroid/view/View;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/mail/ui/cI;->aMz:Landroid/view/View;

    return-object v0
.end method

.method public final zR()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/mail/ui/cI;->aoc:Landroid/widget/TextView;

    return-object v0
.end method

.method public final zS()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/mail/ui/cI;->aMA:Landroid/widget/TextView;

    return-object v0
.end method

.method public final zT()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/mail/ui/cI;->aMB:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final zU()Ljava/util/List;
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
    .line 156
    iget-object v0, p0, Lcom/android/mail/ui/cI;->aMC:Ljava/util/List;

    return-object v0
.end method
