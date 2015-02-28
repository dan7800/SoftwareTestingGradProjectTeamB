.class public final Lcom/android/mail/ui/bO;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic aJT:Lcom/android/mail/ui/bB;

.field private awE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/providers/Account;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/android/mail/ui/bB;)V
    .locals 1

    .prologue
    .line 1625
    iput-object p1, p0, Lcom/android/mail/ui/bO;->aJT:Lcom/android/mail/ui/bB;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1627
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/bO;->awE:Ljava/util/List;

    .line 1677
    return-void
.end method


# virtual methods
.method public final a([Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Account;)V
    .locals 5

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/android/mail/ui/bO;->awE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1631
    if-nez p2, :cond_0

    .line 1632
    invoke-virtual {p0}, Lcom/android/mail/ui/bO;->notifyDataSetChanged()V

    .line 1643
    :goto_0
    return-void

    .line 1635
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/bO;->awE:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1637
    array-length v1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    .line 1638
    invoke-virtual {v2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1639
    iget-object v3, p0, Lcom/android/mail/ui/bO;->awE:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1637
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1642
    :cond_2
    invoke-virtual {p0}, Lcom/android/mail/ui/bO;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/android/mail/ui/bO;->awE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/android/mail/ui/bO;->awE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1654
    const/4 v0, 0x0

    .line 1656
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/bO;->awE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 1662
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/bO;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 1667
    if-eqz p2, :cond_0

    check-cast p2, Landroid/widget/ImageView;

    .line 1670
    :goto_0
    new-instance v1, Lcom/android/mail/ui/bP;

    invoke-direct {v1, p0, p2}, Lcom/android/mail/ui/bP;-><init>(Lcom/android/mail/ui/bO;Landroid/widget/ImageView;)V

    .line 1671
    invoke-virtual {v1}, Lcom/android/mail/ui/bP;->zv()V

    .line 1672
    iget-object v0, p0, Lcom/android/mail/ui/bO;->awE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Account;

    invoke-virtual {v1, v0}, Lcom/android/mail/ui/bP;->d(Lcom/android/mail/providers/Account;)V

    .line 1673
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1674
    return-object p2

    .line 1667
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/bO;->aJT:Lcom/android/mail/ui/bB;

    invoke-virtual {v0}, Lcom/android/mail/ui/bB;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040098

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object p2, v0

    goto :goto_0
.end method
