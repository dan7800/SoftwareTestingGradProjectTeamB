.class public final Lcom/android/mail/ui/cX;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final aMY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/ui/bW;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/cX;->aMY:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final Aa()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/mail/ui/cX;->aMY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 39
    return-void
.end method

.method public final a(Lcom/android/mail/ui/bW;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/mail/ui/cX;->aMY:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public final getCount()I
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lcom/android/mail/ui/cX;->aMY:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/bW;

    .line 61
    invoke-virtual {v0}, Lcom/android/mail/ui/bW;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    return v1
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mail/ui/cX;->aMY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/bW;

    .line 44
    invoke-virtual {v0}, Lcom/android/mail/ui/bW;->getCount()I

    move-result v2

    .line 47
    if-ge p1, v2, :cond_0

    .line 48
    invoke-virtual {v0, p1}, Lcom/android/mail/ui/bW;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 53
    :goto_1
    return-object v0

    .line 51
    :cond_0
    sub-int/2addr p1, v2

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 108
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 4

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    iget-object v1, p0, Lcom/android/mail/ui/cX;->aMY:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/bW;

    .line 79
    invoke-virtual {v0}, Lcom/android/mail/ui/bW;->getCount()I

    move-result v3

    .line 81
    if-ge p1, v3, :cond_0

    .line 82
    invoke-virtual {v0, p1}, Lcom/android/mail/ui/bW;->getItemViewType(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 89
    :goto_1
    return v0

    .line 86
    :cond_0
    sub-int/2addr p1, v3

    .line 87
    invoke-virtual {v0}, Lcom/android/mail/ui/bW;->getViewTypeCount()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mail/ui/cX;->aMY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/bW;

    .line 96
    invoke-virtual {v0}, Lcom/android/mail/ui/bW;->getCount()I

    move-result v2

    .line 97
    if-ge p1, v2, :cond_0

    .line 98
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mail/ui/bW;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 103
    :goto_1
    return-object v0

    .line 101
    :cond_0
    sub-int/2addr p1, v2

    .line 102
    goto :goto_0

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final getViewTypeCount()I
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    iget-object v1, p0, Lcom/android/mail/ui/cX;->aMY:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 71
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 72
    :cond_0
    if-nez v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
