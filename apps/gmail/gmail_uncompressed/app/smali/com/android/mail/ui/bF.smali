.class public final Lcom/android/mail/ui/bF;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private awE:Ljava/util/List;
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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1308
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mail/ui/bF;->awE:Ljava/util/List;

    .line 1310
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/android/mail/ui/bF;->awE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/android/mail/ui/bF;->awE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1326
    const/4 v0, 0x0

    .line 1328
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/bF;->awE:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 1334
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/bF;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1339
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/bF;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/d/d;

    .line 1340
    invoke-virtual {v0, p2, p3}, Lcom/android/mail/d/d;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final u(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mail/d/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/android/mail/ui/bF;->awE:Ljava/util/List;

    .line 1314
    invoke-virtual {p0}, Lcom/android/mail/ui/bF;->notifyDataSetChanged()V

    .line 1315
    return-void
.end method
