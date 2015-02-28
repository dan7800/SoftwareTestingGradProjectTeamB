.class final Lcom/android/mail/ui/bM;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic aJT:Lcom/android/mail/ui/bB;

.field private final aKb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/d/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/mail/ui/bB;)V
    .locals 1

    .prologue
    .line 1383
    iput-object p1, p0, Lcom/android/mail/ui/bM;->aJT:Lcom/android/mail/ui/bB;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/bM;->aKb:Ljava/util/List;

    .line 1384
    invoke-direct {p0}, Lcom/android/mail/ui/bM;->update()V

    .line 1385
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/bB;B)V
    .locals 0

    .prologue
    .line 1379
    invoke-direct {p0, p1}, Lcom/android/mail/ui/bM;-><init>(Lcom/android/mail/ui/bB;)V

    return-void
.end method

.method static synthetic a(Lcom/android/mail/ui/bM;)V
    .locals 0

    .prologue
    .line 1379
    invoke-direct {p0}, Lcom/android/mail/ui/bM;->update()V

    return-void
.end method

.method private da(I)Lcom/android/mail/d/d;
    .locals 1

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/mail/ui/bM;->aKb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/d/d;

    return-object v0
.end method

.method private update()V
    .locals 4

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/mail/ui/bM;->aJT:Lcom/android/mail/ui/bB;

    iget-boolean v0, v0, Lcom/android/mail/ui/bB;->aJq:Z

    if-eqz v0, :cond_0

    .line 1452
    :goto_0
    return-void

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/bM;->aKb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1436
    iget-object v0, p0, Lcom/android/mail/ui/bM;->aJT:Lcom/android/mail/ui/bB;

    iget-object v0, v0, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_1

    .line 1437
    iget-object v0, p0, Lcom/android/mail/ui/bM;->aKb:Ljava/util/List;

    iget-object v1, p0, Lcom/android/mail/ui/bM;->aJT:Lcom/android/mail/ui/bB;

    iget-object v1, v1, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    iget-object v2, p0, Lcom/android/mail/ui/bM;->aJT:Lcom/android/mail/ui/bB;

    iget-object v2, v2, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    iget-object v3, p0, Lcom/android/mail/ui/bM;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v3}, Lcom/android/mail/ui/bB;->m(Lcom/android/mail/ui/bB;)Lcom/android/mail/ui/bG;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/mail/d/d;->b(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Account;Lcom/android/mail/ui/bG;)Lcom/android/mail/d/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1441
    :cond_1
    iget-object v0, p0, Lcom/android/mail/ui/bM;->aJT:Lcom/android/mail/ui/bB;

    iget-object v0, v0, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mail/ui/bM;->aJT:Lcom/android/mail/ui/bB;

    iget-object v0, v0, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    iget-object v0, v0, Lcom/android/mail/providers/Account;->ayp:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/mail/utils/ag;->D(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1442
    iget-object v0, p0, Lcom/android/mail/ui/bM;->aKb:Ljava/util/List;

    iget-object v1, p0, Lcom/android/mail/ui/bM;->aJT:Lcom/android/mail/ui/bB;

    iget-object v1, v1, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    iget-object v2, p0, Lcom/android/mail/ui/bM;->aJT:Lcom/android/mail/ui/bB;

    iget-object v2, v2, Lcom/android/mail/ui/bB;->aJG:Lcom/android/mail/providers/Account;

    iget-object v3, p0, Lcom/android/mail/ui/bM;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v3}, Lcom/android/mail/ui/bB;->m(Lcom/android/mail/ui/bB;)Lcom/android/mail/ui/bG;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/mail/d/d;->a(Lcom/android/mail/ui/as;Lcom/android/mail/providers/Account;Lcom/android/mail/ui/bG;)Lcom/android/mail/d/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1446
    :cond_2
    iget-object v0, p0, Lcom/android/mail/ui/bM;->aKb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1447
    iget-object v0, p0, Lcom/android/mail/ui/bM;->aKb:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mail/ui/bM;->aJT:Lcom/android/mail/ui/bB;

    iget-object v2, v2, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    invoke-static {v2}, Lcom/android/mail/d/d;->a(Lcom/android/mail/ui/as;)Lcom/android/mail/d/d;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1448
    iget-object v0, p0, Lcom/android/mail/ui/bM;->aKb:Ljava/util/List;

    iget-object v1, p0, Lcom/android/mail/ui/bM;->aJT:Lcom/android/mail/ui/bB;

    iget-object v1, v1, Lcom/android/mail/ui/bB;->aob:Lcom/android/mail/ui/as;

    invoke-static {v1}, Lcom/android/mail/d/d;->b(Lcom/android/mail/ui/as;)Lcom/android/mail/d/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1451
    :cond_3
    invoke-virtual {p0}, Lcom/android/mail/ui/bM;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/android/mail/ui/bM;->aKb:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1379
    invoke-direct {p0, p1}, Lcom/android/mail/ui/bM;->da(I)Lcom/android/mail/d/d;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 1399
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 1410
    invoke-direct {p0, p1}, Lcom/android/mail/ui/bM;->da(I)Lcom/android/mail/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/d/d;->getType()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1420
    invoke-direct {p0, p1}, Lcom/android/mail/ui/bM;->da(I)Lcom/android/mail/d/d;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/mail/d/d;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 1405
    const/16 v0, 0x8

    return v0
.end method
