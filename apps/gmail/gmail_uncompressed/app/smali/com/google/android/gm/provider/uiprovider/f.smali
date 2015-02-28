.class public final Lcom/google/android/gm/provider/uiprovider/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private final aPP:J

.field private final aPQ:J

.field private final bot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/uiprovider/GmailAttachment;",
            ">;"
        }
    .end annotation
.end field

.field bou:Z

.field private final mAccount:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mMessageId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/uiprovider/f;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JJJ)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/uiprovider/f;->bot:Ljava/util/List;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/uiprovider/f;->bou:Z

    .line 38
    iput-object p1, p0, Lcom/google/android/gm/provider/uiprovider/f;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/google/android/gm/provider/uiprovider/f;->mAccount:Ljava/lang/String;

    .line 40
    iput-wide p3, p0, Lcom/google/android/gm/provider/uiprovider/f;->aPP:J

    .line 41
    iput-wide p5, p0, Lcom/google/android/gm/provider/uiprovider/f;->mMessageId:J

    .line 42
    iput-wide p7, p0, Lcom/google/android/gm/provider/uiprovider/f;->aPQ:J

    .line 43
    return-void
.end method


# virtual methods
.method public final Ic()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/uiprovider/GmailAttachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/f;->bot:Ljava/util/List;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/f;->bot:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->J(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final Id()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/google/android/gm/provider/uiprovider/f;->bou:Z

    return v0
.end method

.method public final Ie()V
    .locals 9

    .prologue
    .line 111
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gm/provider/uiprovider/f;->Ic()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    .line 113
    iget-object v0, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_0
    sget-object v0, Lcom/google/android/gm/provider/uiprovider/f;->mW:Ljava/lang/String;

    const-string v1, "Notifying about attachment change conversation message %d/%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/android/gm/provider/uiprovider/f;->aPP:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/android/gm/provider/uiprovider/f;->mMessageId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 117
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/f;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/f;->mAccount:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gm/provider/uiprovider/f;->aPP:J

    iget-wide v4, p0, Lcom/google/android/gm/provider/uiprovider/f;->mMessageId:J

    iget-wide v6, p0, Lcom/google/android/gm/provider/uiprovider/f;->aPQ:J

    invoke-static/range {v0 .. v8}, Lcom/google/android/gm/provider/GmailProvider;->a(Landroid/content/Context;Ljava/lang/String;JJJLjava/util/Set;)V

    .line 119
    return-void
.end method

.method public final L(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/uiprovider/GmailAttachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 70
    iget-object v12, p0, Lcom/google/android/gm/provider/uiprovider/f;->bot:Ljava/util/List;

    monitor-enter v12

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/f;->bot:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    .line 73
    iget-object v1, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->uri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/f;->mAccount:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gm/provider/uiprovider/f;->aPP:J

    iget-wide v4, p0, Lcom/google/android/gm/provider/uiprovider/f;->mMessageId:J

    iget-wide v6, p0, Lcom/google/android/gm/provider/uiprovider/f;->aPQ:J

    iget-object v8, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getContentType()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v1 .. v9}, Lcom/google/android/gm/provider/GmailProvider;->a(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->uri:Landroid/net/Uri;

    .line 79
    :cond_0
    iget-object v1, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayP:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/f;->mAccount:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gm/provider/uiprovider/f;->aPQ:J

    iget-object v4, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    const/4 v5, 0x1

    iget v6, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayN:I

    if-ne v6, v10, :cond_3

    move v6, v10

    :goto_1
    invoke-static/range {v1 .. v6}, Lcom/google/android/gm/provider/Gmail;->a(Ljava/lang/String;JLjava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayP:Landroid/net/Uri;

    .line 84
    :cond_1
    iget-object v1, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayQ:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/f;->mAccount:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gm/provider/uiprovider/f;->aPQ:J

    iget-object v4, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayN:I

    if-ne v6, v10, :cond_4

    move v6, v10

    :goto_2
    invoke-static/range {v1 .. v6}, Lcom/google/android/gm/provider/Gmail;->a(Ljava/lang/String;JLjava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->ayQ:Landroid/net/Uri;

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/f;->bot:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0

    :cond_3
    move v6, v11

    .line 80
    goto :goto_1

    :cond_4
    move v6, v11

    .line 85
    goto :goto_2

    .line 91
    :cond_5
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    iput-boolean v10, p0, Lcom/google/android/gm/provider/uiprovider/f;->bou:Z

    .line 93
    return-void
.end method

.method final b(Lcom/google/android/gm/provider/bm;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p1, Lcom/google/android/gm/provider/bm;->blT:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/uiprovider/f;->L(Ljava/util/List;)V

    .line 67
    return-void
.end method

.method final c(Lcom/google/android/gm/provider/bm;)V
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/android/gm/provider/uiprovider/f;->bou:Z

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/uiprovider/f;->b(Lcom/google/android/gm/provider/bm;)V

    .line 100
    :cond_0
    return-void
.end method

.method public final fq(Ljava/lang/String;)Lcom/google/android/gm/provider/uiprovider/GmailAttachment;
    .locals 4

    .prologue
    .line 53
    if-eqz p1, :cond_2

    .line 54
    iget-object v1, p0, Lcom/google/android/gm/provider/uiprovider/f;->bot:Ljava/util/List;

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/uiprovider/f;->bot:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    .line 56
    iget-object v3, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :goto_0
    return-object v0

    .line 60
    :cond_1
    monitor-exit v1

    .line 62
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
