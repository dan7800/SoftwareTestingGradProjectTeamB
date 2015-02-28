.class public final Landroid/support/v4/app/V;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final cU:Landroid/support/v4/app/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 815
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 816
    new-instance v0, Landroid/support/v4/app/ag;

    invoke-direct {v0}, Landroid/support/v4/app/ag;-><init>()V

    sput-object v0, Landroid/support/v4/app/V;->cU:Landroid/support/v4/app/ae;

    .line 832
    :goto_0
    return-void

    .line 817
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 818
    new-instance v0, Landroid/support/v4/app/af;

    invoke-direct {v0}, Landroid/support/v4/app/af;-><init>()V

    sput-object v0, Landroid/support/v4/app/V;->cU:Landroid/support/v4/app/ae;

    goto :goto_0

    .line 819
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 820
    new-instance v0, Landroid/support/v4/app/am;

    invoke-direct {v0}, Landroid/support/v4/app/am;-><init>()V

    sput-object v0, Landroid/support/v4/app/V;->cU:Landroid/support/v4/app/ae;

    goto :goto_0

    .line 821
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 822
    new-instance v0, Landroid/support/v4/app/al;

    invoke-direct {v0}, Landroid/support/v4/app/al;-><init>()V

    sput-object v0, Landroid/support/v4/app/V;->cU:Landroid/support/v4/app/ae;

    goto :goto_0

    .line 823
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 824
    new-instance v0, Landroid/support/v4/app/ak;

    invoke-direct {v0}, Landroid/support/v4/app/ak;-><init>()V

    sput-object v0, Landroid/support/v4/app/V;->cU:Landroid/support/v4/app/ae;

    goto :goto_0

    .line 825
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 826
    new-instance v0, Landroid/support/v4/app/aj;

    invoke-direct {v0}, Landroid/support/v4/app/aj;-><init>()V

    sput-object v0, Landroid/support/v4/app/V;->cU:Landroid/support/v4/app/ae;

    goto :goto_0

    .line 827
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_6

    .line 828
    new-instance v0, Landroid/support/v4/app/ai;

    invoke-direct {v0}, Landroid/support/v4/app/ai;-><init>()V

    sput-object v0, Landroid/support/v4/app/V;->cU:Landroid/support/v4/app/ae;

    goto :goto_0

    .line 830
    :cond_6
    new-instance v0, Landroid/support/v4/app/ah;

    invoke-direct {v0}, Landroid/support/v4/app/ah;-><init>()V

    sput-object v0, Landroid/support/v4/app/V;->cU:Landroid/support/v4/app/ae;

    goto :goto_0
.end method

.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 3186
    sget-object v0, Landroid/support/v4/app/V;->cU:Landroid/support/v4/app/ae;

    invoke-interface {v0, p0}, Landroid/support/v4/app/ae;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/app/T;Ljava/util/ArrayList;)V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/W;

    invoke-interface {p0, v0}, Landroid/support/v4/app/T;->a(Landroid/support/v4/app/au;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/U;Landroid/support/v4/app/an;)V
    .locals 7

    .prologue
    .line 41
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/support/v4/app/aa;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/support/v4/app/aa;

    iget-object v0, p1, Landroid/support/v4/app/aa;->dJ:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/aa;->dL:Z

    iget-object v2, p1, Landroid/support/v4/app/aa;->dK:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/aa;->df:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/aw;->a(Landroid/support/v4/app/U;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Landroid/support/v4/app/ad;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/support/v4/app/ad;

    iget-object v0, p1, Landroid/support/v4/app/ad;->dJ:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/ad;->dL:Z

    iget-object v2, p1, Landroid/support/v4/app/ad;->dK:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/ad;->dH:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/aw;->a(Landroid/support/v4/app/U;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/support/v4/app/Z;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/app/Z;

    iget-object v1, p1, Landroid/support/v4/app/Z;->dJ:Ljava/lang/CharSequence;

    iget-boolean v2, p1, Landroid/support/v4/app/Z;->dL:Z

    iget-object v3, p1, Landroid/support/v4/app/Z;->dK:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/Z;->dc:Landroid/graphics/Bitmap;

    iget-object v5, p1, Landroid/support/v4/app/Z;->dd:Landroid/graphics/Bitmap;

    iget-boolean v6, p1, Landroid/support/v4/app/Z;->de:Z

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v4/app/aw;->a(Landroid/support/v4/app/U;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method

.method static synthetic ai()Landroid/support/v4/app/ae;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/support/v4/app/V;->cU:Landroid/support/v4/app/ae;

    return-object v0
.end method
