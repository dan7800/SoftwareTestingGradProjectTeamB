.class final Lcom/google/android/gm/ui/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/people/accountswitcherview/v;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/google/android/gm/ui/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final aK(Landroid/view/View;)Lcom/google/android/gms/people/accountswitcherview/u;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 667
    new-instance v2, Lcom/google/android/gm/ui/q;

    invoke-direct {v2, v4}, Lcom/google/android/gm/ui/q;-><init>(B)V

    .line 668
    const v0, 0x7f0d0096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/google/android/gm/ui/q;->chV:Landroid/widget/TextView;

    .line 669
    const v0, 0x7f0d0091

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/google/android/gm/ui/q;->chW:Landroid/widget/ImageView;

    .line 670
    const v0, 0x7f0d0092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/google/android/gm/ui/q;->chU:Landroid/widget/TextView;

    .line 671
    const v0, 0x7f0d0097

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/google/android/gm/ui/q;->bqm:Landroid/widget/ImageView;

    move-object v0, p1

    .line 674
    check-cast v0, Landroid/view/ViewGroup;

    .line 675
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f040030

    invoke-virtual {v1, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 677
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 678
    iput-object v1, v2, Lcom/google/android/gm/ui/q;->bqn:Landroid/widget/TextView;

    .line 680
    return-object v2
.end method
