.class public Lcom/android/mail/ui/MaterialSearchSuggestionsList;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private aLB:Lcom/android/mail/ui/cx;

.field private aLK:Lcom/android/mail/providers/z;

.field private aLL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/ui/cw;",
            ">;"
        }
    .end annotation
.end field

.field private aLM:Ljava/lang/String;

.field private aLN:Lcom/android/mail/ui/cu;

.field private aLO:Lcom/android/mail/ui/cv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->aLL:Ljava/util/List;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->aLL:Ljava/util/List;

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/MaterialSearchSuggestionsList;)Lcom/android/mail/providers/z;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->aLK:Lcom/android/mail/providers/z;

    return-object v0
.end method

.method static synthetic b(Lcom/android/mail/ui/MaterialSearchSuggestionsList;)Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->aLL:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/android/mail/ui/MaterialSearchSuggestionsList;)Lcom/android/mail/ui/cu;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->aLN:Lcom/android/mail/ui/cu;

    return-object v0
.end method

.method static synthetic km()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->mW:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/mail/ui/cx;Lcom/android/mail/providers/z;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->aLB:Lcom/android/mail/ui/cx;

    .line 71
    iput-object p2, p0, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->aLK:Lcom/android/mail/providers/z;

    .line 72
    return-void
.end method

.method public final cr(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    iput-object p1, p0, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->aLM:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->aLO:Lcom/android/mail/ui/cv;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->aLO:Lcom/android/mail/ui/cv;

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/cv;->cancel(Z)Z

    .line 79
    :cond_0
    new-instance v0, Lcom/android/mail/ui/cv;

    invoke-direct {v0, p0, v2}, Lcom/android/mail/ui/cv;-><init>(Lcom/android/mail/ui/MaterialSearchSuggestionsList;B)V

    iput-object v0, p0, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->aLO:Lcom/android/mail/ui/cv;

    .line 80
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->aLO:Lcom/android/mail/ui/cv;

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/cv;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->aLB:Lcom/android/mail/ui/cx;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/mail/ui/cx;->de(I)V

    .line 116
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 88
    const v0, 0x7f0d01c9

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 89
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    const v1, 0x7f0d01f6

    invoke-virtual {p0, v1}, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 91
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    new-instance v1, Lcom/android/mail/ui/cu;

    invoke-virtual {p0}, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mail/ui/cu;-><init>(Lcom/android/mail/ui/MaterialSearchSuggestionsList;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->aLN:Lcom/android/mail/ui/cu;

    .line 95
    iget-object v1, p0, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->aLN:Lcom/android/mail/ui/cu;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->aLB:Lcom/android/mail/ui/cx;

    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->aLL:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/cw;

    iget-object v0, v0, Lcom/android/mail/ui/cw;->aLR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/mail/ui/cx;->ct(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->aLM:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/MaterialSearchSuggestionsList;->cr(Ljava/lang/String;)V

    .line 104
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    return-void
.end method
