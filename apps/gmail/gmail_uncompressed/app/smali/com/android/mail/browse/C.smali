.class final Lcom/android/mail/browse/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final Hb:Landroid/content/ContentResolver;

.field final amD:I

.field final ams:Landroid/content/ContentValues;

.field final eM:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1

    .prologue
    .line 1484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1485
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mail/browse/C;->amD:I

    .line 1486
    invoke-static {p2}, Lcom/android/mail/browse/u;->l(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/C;->eM:Landroid/net/Uri;

    .line 1487
    iput-object p3, p0, Lcom/android/mail/browse/C;->ams:Landroid/content/ContentValues;

    .line 1488
    iput-object p1, p0, Lcom/android/mail/browse/C;->Hb:Landroid/content/ContentResolver;

    .line 1489
    return-void
.end method

.method static a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 1492
    new-instance v0, Lcom/android/mail/browse/C;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mail/browse/C;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 1493
    invoke-static {}, Lcom/android/mail/browse/u;->oY()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {v0}, Lcom/android/mail/browse/C;->po()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1495
    :goto_0
    return-object v0

    .line 1494
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1495
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private po()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1504
    iget v1, p0, Lcom/android/mail/browse/C;->amD:I

    packed-switch v1, :pswitch_data_0

    .line 1512
    :goto_0
    return-object v0

    .line 1506
    :pswitch_0
    iget-object v1, p0, Lcom/android/mail/browse/C;->Hb:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mail/browse/C;->eM:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1508
    :pswitch_1
    iget-object v0, p0, Lcom/android/mail/browse/C;->Hb:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/mail/browse/C;->eM:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mail/browse/C;->ams:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 1510
    :pswitch_2
    iget-object v1, p0, Lcom/android/mail/browse/C;->Hb:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mail/browse/C;->eM:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mail/browse/C;->ams:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1504
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 1500
    invoke-direct {p0}, Lcom/android/mail/browse/C;->po()Ljava/lang/Object;

    .line 1501
    return-void
.end method
