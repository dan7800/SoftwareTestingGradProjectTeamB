.class public final Lcom/android/mail/widget/e;
.super Lcom/android/mail/ui/bz;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/mail/ui/bz;-><init>(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method private static dt(I)I
    .locals 1

    .prologue
    .line 73
    packed-switch p0, :pswitch_data_0

    .line 81
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 75
    :pswitch_0
    const v0, 0x7f0d0266

    goto :goto_0

    .line 77
    :pswitch_1
    const v0, 0x7f0d0267

    goto :goto_0

    .line 79
    :pswitch_2
    const v0, 0x7f0d0268

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/android/mail/providers/Conversation;Lcom/android/mail/utils/p;I)V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/android/mail/ui/bz;->a(Lcom/android/mail/providers/Conversation;Lcom/android/mail/utils/p;I)V

    .line 70
    return-void
.end method

.method public final b(Landroid/widget/RemoteViews;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/mail/widget/e;->aIZ:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 90
    invoke-static {v1}, Lcom/android/mail/widget/e;->dt(I)I

    move-result v4

    .line 91
    if-eqz v4, :cond_0

    .line 92
    invoke-virtual {p1, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 95
    new-array v5, v7, [I

    iget-object v6, p0, Lcom/android/mail/widget/e;->aJa:Lcom/android/mail/ui/bA;

    iget v6, v6, Lcom/android/mail/ui/bA;->aJc:I

    invoke-virtual {v0, v6}, Lcom/android/mail/providers/Folder;->cz(I)I

    move-result v0

    aput v0, v5, v2

    .line 97
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v7, v7, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 100
    add-int/lit8 v0, v1, 0x1

    if-ne v0, v8, :cond_2

    .line 101
    :goto_1
    if-ge v0, v8, :cond_1

    .line 106
    invoke-static {v0}, Lcom/android/mail/widget/e;->dt(I)I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    :cond_1
    return-void

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
