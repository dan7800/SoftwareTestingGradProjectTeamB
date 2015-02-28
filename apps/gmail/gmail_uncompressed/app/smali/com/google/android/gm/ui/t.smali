.class final Lcom/google/android/gm/ui/t;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final bqh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/ui/C;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic bql:Lcom/google/android/gm/ui/GmailDrawerFragment;

.field private final bqo:Lcom/google/android/gm/ui/x;

.field private final bqp:Lcom/google/android/gm/ui/v;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/ui/GmailDrawerFragment;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 548
    iput-object p1, p0, Lcom/google/android/gm/ui/t;->bql:Lcom/google/android/gm/ui/GmailDrawerFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 549
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gm/ui/t;->bqh:Ljava/util/List;

    .line 550
    new-instance v0, Lcom/google/android/gm/ui/x;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gm/ui/x;-><init>(Lcom/google/android/gm/ui/t;B)V

    iput-object v0, p0, Lcom/google/android/gm/ui/t;->bqo:Lcom/google/android/gm/ui/x;

    .line 552
    new-instance v0, Lcom/google/android/gm/ui/v;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gm/ui/v;-><init>(Lcom/google/android/gm/ui/t;B)V

    iput-object v0, p0, Lcom/google/android/gm/ui/t;->bqp:Lcom/google/android/gm/ui/v;

    .line 646
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/ui/GmailDrawerFragment;B)V
    .locals 0

    .prologue
    .line 548
    invoke-direct {p0, p1}, Lcom/google/android/gm/ui/t;-><init>(Lcom/google/android/gm/ui/GmailDrawerFragment;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gm/ui/C;Lcom/google/android/gm/ui/C;Lcom/google/android/gm/ui/C;)V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/android/gm/ui/t;->bqh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 556
    if-nez p1, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/google/android/gm/ui/t;->notifyDataSetChanged()V

    .line 568
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ui/t;->bqh:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    if-eqz p2, :cond_1

    .line 562
    iget-object v0, p0, Lcom/google/android/gm/ui/t;->bqh:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_1
    if-eqz p3, :cond_2

    .line 565
    iget-object v0, p0, Lcom/google/android/gm/ui/t;->bqh:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gm/ui/t;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/google/android/gm/ui/t;->bqh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/android/gm/ui/t;->bqh:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/android/gm/ui/t;->bqh:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ui/C;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 587
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, p2

    :goto_0
    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 592
    iget-object v0, p0, Lcom/google/android/gm/ui/t;->bqh:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/ui/C;

    .line 594
    iget-object v0, p0, Lcom/google/android/gm/ui/t;->bql:Lcom/google/android/gm/ui/GmailDrawerFragment;

    invoke-static {v0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->c(Lcom/google/android/gm/ui/GmailDrawerFragment;)Lcom/google/android/gms/people/accountswitcherview/r;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gm/ui/t;->bql:Lcom/google/android/gm/ui/GmailDrawerFragment;

    invoke-static {v3}, Lcom/google/android/gm/ui/GmailDrawerFragment;->b(Lcom/google/android/gm/ui/GmailDrawerFragment;)Lcom/google/android/gms/people/accountswitcherview/i;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/ui/t;->bqo:Lcom/google/android/gm/ui/x;

    iget-object v5, p0, Lcom/google/android/gm/ui/t;->bqp:Lcom/google/android/gm/ui/v;

    if-nez p1, :cond_1

    move v6, v8

    :goto_1
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/people/accountswitcherview/r;->a(Landroid/view/View;Lcom/google/android/gms/people/model/d;Lcom/google/android/gms/people/accountswitcherview/i;Lcom/google/android/gms/people/accountswitcherview/v;Lcom/google/android/gms/people/accountswitcherview/t;ZI)Landroid/view/View;

    .line 597
    iget-object v0, p0, Lcom/google/android/gm/ui/t;->bql:Lcom/google/android/gm/ui/GmailDrawerFragment;

    const v3, 0x7f0903d7

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gm/ui/C;->FP()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2}, Lcom/google/android/gm/ui/C;->It()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gm/ui/GmailDrawerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 601
    new-instance v0, Lcom/google/android/gm/ui/u;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gm/ui/u;-><init>(Lcom/google/android/gm/ui/t;Lcom/google/android/gms/people/model/d;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    return-object v1

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/ui/t;->bql:Lcom/google/android/gm/ui/GmailDrawerFragment;

    invoke-virtual {v0}, Lcom/google/android/gm/ui/GmailDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040083

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v6, v7

    .line 594
    goto :goto_1
.end method
