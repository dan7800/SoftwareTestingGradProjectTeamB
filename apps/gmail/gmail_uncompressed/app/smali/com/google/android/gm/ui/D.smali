.class public final Lcom/google/android/gm/ui/D;
.super Lcom/google/android/gms/people/accountswitcherview/i;
.source "SourceFile"


# instance fields
.field private atg:Lcom/android/mail/h/a;

.field private bqA:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final bqc:Landroid/support/v4/f/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/f/n",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/ui/C;",
            ">;"
        }
    .end annotation
.end field

.field private bqv:I

.field private bqw:I

.field private bqx:I

.field private bqy:I

.field private bqz:Lcom/android/mail/h/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/n;Landroid/support/v4/f/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/n;",
            "Landroid/support/v4/f/n",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/ui/C;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/people/accountswitcherview/i;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/n;)V

    .line 46
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gm/ui/D;->bqA:Landroid/util/LruCache;

    .line 52
    iput-object p3, p0, Lcom/google/android/gm/ui/D;->bqc:Landroid/support/v4/f/n;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    const v1, 0x7f0c00cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/ui/D;->bqx:I

    .line 57
    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/ui/D;->bqy:I

    .line 59
    const v1, 0x7f0c006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/ui/D;->bqv:I

    .line 60
    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gm/ui/D;->bqw:I

    .line 61
    new-instance v1, Lcom/android/mail/h/a;

    new-instance v2, Lcom/android/mail/b/n;

    invoke-direct {v2, v0}, Lcom/android/mail/b/n;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v1, v0, v2}, Lcom/android/mail/h/a;-><init>(Landroid/content/res/Resources;Lcom/android/mail/b/e;)V

    iput-object v1, p0, Lcom/google/android/gm/ui/D;->atg:Lcom/android/mail/h/a;

    .line 62
    new-instance v1, Lcom/android/mail/h/a;

    new-instance v2, Lcom/google/android/gm/ui/E;

    invoke-direct {v2, v0}, Lcom/google/android/gm/ui/E;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v1, v0, v2}, Lcom/android/mail/h/a;-><init>(Landroid/content/res/Resources;Lcom/android/mail/b/e;)V

    iput-object v1, p0, Lcom/google/android/gm/ui/D;->bqz:Lcom/android/mail/h/a;

    .line 63
    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 70
    new-instance v2, Landroid/util/Pair;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/google/android/gm/ui/D;->bqA:Landroid/util/LruCache;

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 72
    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/android/gm/ui/D;->bqc:Landroid/support/v4/f/n;

    invoke-virtual {v0, p2}, Landroid/support/v4/f/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ui/C;

    .line 74
    if-nez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/google/android/gm/ui/D;->mContext:Landroid/content/Context;

    invoke-super {p0, v0, p2, p3, p4}, Lcom/google/android/gms/people/accountswitcherview/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/google/android/gm/ui/D;->bqA:Landroid/util/LruCache;

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
    return-object v0

    .line 77
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gm/ui/C;->oN()Lcom/android/mail/providers/Account;

    move-result-object v3

    .line 79
    if-nez v3, :cond_2

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/people/accountswitcherview/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_2
    const-string v0, "com.google"

    invoke-virtual {v3}, Lcom/android/mail/providers/Account;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 86
    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/google/android/gm/ui/D;->bqz:Lcom/android/mail/h/a;

    move-object v1, v0

    .line 89
    :goto_1
    packed-switch p4, :pswitch_data_0

    iget v0, p0, Lcom/google/android/gm/ui/D;->bqw:I

    int-to-float v0, v0

    :goto_2
    float-to-int v5, v0

    .line 91
    new-instance v6, Lcom/android/mail/ui/cj;

    const/high16 v7, 0x3f800000    # 1.0f

    packed-switch p4, :pswitch_data_1

    iget v0, p0, Lcom/google/android/gm/ui/D;->bqy:I

    int-to-float v0, v0

    :goto_3
    invoke-direct {v6, v5, v5, v7, v0}, Lcom/android/mail/ui/cj;-><init>(IIFF)V

    .line 94
    if-eqz v4, :cond_4

    const-string v0, "&"

    :goto_4
    invoke-virtual {v3}, Lcom/android/mail/providers/Account;->lw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v0, v3}, Lcom/android/mail/h/a;->a(Lcom/android/mail/ui/cj;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/c;->f(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/ui/D;->atg:Lcom/android/mail/h/a;

    move-object v1, v0

    goto :goto_1

    .line 89
    :pswitch_0
    iget v0, p0, Lcom/google/android/gm/ui/D;->bqv:I

    int-to-float v0, v0

    goto :goto_2

    .line 91
    :pswitch_1
    iget v0, p0, Lcom/google/android/gm/ui/D;->bqx:I

    int-to-float v0, v0

    goto :goto_3

    .line 94
    :cond_4
    invoke-virtual {v3}, Lcom/android/mail/providers/Account;->ik()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 91
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
