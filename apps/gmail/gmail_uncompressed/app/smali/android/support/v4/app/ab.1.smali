.class public final Landroid/support/v4/app/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cV:Landroid/os/Bundle;

.field dA:Z

.field dB:Ljava/lang/String;

.field dC:I

.field dD:I

.field dE:Landroid/app/Notification;

.field dF:Landroid/app/Notification;

.field public dG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field dg:Ljava/lang/CharSequence;

.field dh:Ljava/lang/CharSequence;

.field di:Landroid/app/PendingIntent;

.field dj:Landroid/app/PendingIntent;

.field dk:Landroid/widget/RemoteViews;

.field dl:Landroid/graphics/Bitmap;

.field dm:Ljava/lang/CharSequence;

.field dn:I

.field do:I

.field dp:Z

.field dq:Z

.field dr:Landroid/support/v4/app/an;

.field ds:Ljava/lang/CharSequence;

.field dt:I

.field du:I

.field dv:Z

.field dw:Ljava/lang/String;

.field dx:Z

.field dy:Ljava/lang/String;

.field dz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/W;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 874
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/ab;->dp:Z

    .line 884
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ab;->dz:Ljava/util/ArrayList;

    .line 885
    iput-boolean v4, p0, Landroid/support/v4/app/ab;->dA:Z

    .line 888
    iput v4, p0, Landroid/support/v4/app/ab;->dC:I

    .line 889
    iput v4, p0, Landroid/support/v4/app/ab;->dD:I

    .line 892
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ab;->dF:Landroid/app/Notification;

    .line 907
    iput-object p1, p0, Landroid/support/v4/app/ab;->mContext:Landroid/content/Context;

    .line 910
    iget-object v0, p0, Landroid/support/v4/app/ab;->dF:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 911
    iget-object v0, p0, Landroid/support/v4/app/ab;->dF:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 912
    iput v4, p0, Landroid/support/v4/app/ab;->do:I

    .line 913
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ab;->dG:Ljava/util/ArrayList;

    .line 914
    return-void
.end method

.method private a(IZ)V
    .locals 3

    .prologue
    .line 1262
    if-eqz p2, :cond_0

    .line 1263
    iget-object v0, p0, Landroid/support/v4/app/ab;->dF:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1267
    :goto_0
    return-void

    .line 1265
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ab;->dF:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method

.method protected static f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/16 v1, 0x1400

    .line 1536
    if-nez p0, :cond_1

    .line 1540
    :cond_0
    :goto_0
    return-object p0

    .line 1537
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1538
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public final a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/ab;
    .locals 2

    .prologue
    .line 1432
    iget-object v0, p0, Landroid/support/v4/app/ab;->dz:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/v4/app/W;

    invoke-direct {v1, p1, p2, p3}, Landroid/support/v4/app/W;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1433
    return-object p0
.end method

.method public final a(J)Landroid/support/v4/app/ab;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Landroid/support/v4/app/ab;->dF:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 922
    return-object p0
.end method

.method public final a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ab;
    .locals 0

    .prologue
    .line 1054
    iput-object p1, p0, Landroid/support/v4/app/ab;->di:Landroid/app/PendingIntent;

    .line 1055
    return-object p0
.end method

.method public final a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/ab;
    .locals 0

    .prologue
    .line 1118
    iput-object p1, p0, Landroid/support/v4/app/ab;->dl:Landroid/graphics/Bitmap;

    .line 1119
    return-object p0
.end method

.method public final a(Landroid/net/Uri;)Landroid/support/v4/app/ab;
    .locals 2

    .prologue
    .line 1131
    iget-object v0, p0, Landroid/support/v4/app/ab;->dF:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1132
    iget-object v0, p0, Landroid/support/v4/app/ab;->dF:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1133
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/ac;)Landroid/support/v4/app/ab;
    .locals 0

    .prologue
    .line 1515
    invoke-interface {p1, p0}, Landroid/support/v4/app/ac;->a(Landroid/support/v4/app/ab;)Landroid/support/v4/app/ab;

    .line 1516
    return-object p0
.end method

.method public final a(Landroid/widget/RemoteViews;)Landroid/support/v4/app/ab;
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Landroid/support/v4/app/ab;->dF:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1042
    return-object p0
.end method

.method public final am()Landroid/support/v4/app/ab;
    .locals 2

    .prologue
    .line 1205
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/ab;->a(IZ)V

    .line 1206
    return-object p0
.end method

.method public final an()Landroid/support/v4/app/ab;
    .locals 2

    .prologue
    .line 1216
    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/ab;->a(IZ)V

    .line 1217
    return-object p0
.end method

.method public final ao()Landroid/support/v4/app/ab;
    .locals 1

    .prologue
    .line 1342
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/ab;->dx:Z

    .line 1343
    return-object p0
.end method

.method public final b(Landroid/app/Notification;)Landroid/support/v4/app/ab;
    .locals 0

    .prologue
    .line 1506
    iput-object p1, p0, Landroid/support/v4/app/ab;->dE:Landroid/app/Notification;

    .line 1507
    return-object p0
.end method

.method public final b(Landroid/app/PendingIntent;)Landroid/support/v4/app/ab;
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Landroid/support/v4/app/ab;->dF:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1067
    return-object p0
.end method

.method public final b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;
    .locals 1

    .prologue
    .line 982
    invoke-static {p1}, Landroid/support/v4/app/ab;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ab;->dg:Ljava/lang/CharSequence;

    .line 983
    return-object p0
.end method

.method public final build()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 1532
    invoke-static {}, Landroid/support/v4/app/V;->ai()Landroid/support/v4/app/ae;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/support/v4/app/ae;->b(Landroid/support/v4/app/ab;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;
    .locals 1

    .prologue
    .line 990
    invoke-static {p1}, Landroid/support/v4/app/ab;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ab;->dh:Ljava/lang/CharSequence;

    .line 991
    return-object p0
.end method

.method public final c(Z)Landroid/support/v4/app/ab;
    .locals 1

    .prologue
    .line 1196
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/ab;->a(IZ)V

    .line 1197
    return-object p0
.end method

.method public final d(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;
    .locals 1

    .prologue
    .line 1004
    invoke-static {p1}, Landroid/support/v4/app/ab;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ab;->ds:Ljava/lang/CharSequence;

    .line 1005
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Landroid/support/v4/app/ab;
    .locals 0

    .prologue
    .line 1239
    iput-object p1, p0, Landroid/support/v4/app/ab;->dB:Ljava/lang/String;

    .line 1240
    return-object p0
.end method

.method public final e(Ljava/lang/CharSequence;)Landroid/support/v4/app/ab;
    .locals 2

    .prologue
    .line 1099
    iget-object v0, p0, Landroid/support/v4/app/ab;->dF:Landroid/app/Notification;

    invoke-static {p1}, Landroid/support/v4/app/ab;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1100
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Landroid/support/v4/app/ab;
    .locals 0

    .prologue
    .line 1330
    iput-object p1, p0, Landroid/support/v4/app/ab;->dw:Ljava/lang/String;

    .line 1331
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Landroid/support/v4/app/ab;
    .locals 0

    .prologue
    .line 1359
    iput-object p1, p0, Landroid/support/v4/app/ab;->dy:Ljava/lang/String;

    .line 1360
    return-object p0
.end method

.method public final h(I)Landroid/support/v4/app/ab;
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Landroid/support/v4/app/ab;->dF:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 959
    return-object p0
.end method

.method public final i(I)Landroid/support/v4/app/ab;
    .locals 0

    .prologue
    .line 1014
    iput p1, p0, Landroid/support/v4/app/ab;->dn:I

    .line 1015
    return-object p0
.end method

.method public final j(I)Landroid/support/v4/app/ab;
    .locals 2

    .prologue
    .line 1254
    iget-object v0, p0, Landroid/support/v4/app/ab;->dF:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 1255
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Landroid/support/v4/app/ab;->dF:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1258
    :cond_0
    return-object p0
.end method

.method public final k(I)Landroid/support/v4/app/ab;
    .locals 0

    .prologue
    .line 1481
    iput p1, p0, Landroid/support/v4/app/ab;->dC:I

    .line 1482
    return-object p0
.end method

.method public final l(I)Landroid/support/v4/app/ab;
    .locals 0

    .prologue
    .line 1493
    iput p1, p0, Landroid/support/v4/app/ab;->dD:I

    .line 1494
    return-object p0
.end method
