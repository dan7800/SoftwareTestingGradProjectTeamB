.class public final Lcom/google/android/gm/provider/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bcX:[Ljava/lang/String;

.field private static final mW:Ljava/lang/String;


# instance fields
.field private final aPP:J

.field private final bbE:Lcom/google/android/gm/provider/MailEngine;

.field private final bcY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/uiprovider/GmailAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private final bcZ:Landroid/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final bda:Lcom/google/android/gm/provider/r;

.field private final bdb:Lcom/google/android/gm/provider/g;

.field private bdc:Lcom/google/android/gm/provider/m;

.field private cF:Z

.field private final mAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/k;->mW:Ljava/lang/String;

    .line 42
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "messages_messageId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "messages_partId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "downloadId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "saveToSd"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "filename"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "desiredRendition"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "originExtras"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/provider/k;->bcX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JLcom/google/android/gm/provider/MailEngine;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/google/android/gm/provider/k;->mW:Ljava/lang/String;

    const-string v1, "ASL constructor for conversation %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 61
    iput-object p2, p0, Lcom/google/android/gm/provider/k;->mAccount:Ljava/lang/String;

    .line 62
    iput-wide p3, p0, Lcom/google/android/gm/provider/k;->aPP:J

    .line 63
    invoke-static {}, Lcom/google/common/collect/Maps;->aan()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/k;->bcY:Ljava/util/Map;

    .line 66
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/google/android/gm/provider/k;->mAccount:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gm/provider/k;->aPP:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/Gmail;->g(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/gm/provider/k;->bcX:[Ljava/lang/String;

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/k;->bcZ:Landroid/content/Loader;

    .line 69
    iget-object v0, p0, Lcom/google/android/gm/provider/k;->bcZ:Landroid/content/Loader;

    iget-object v1, p0, Lcom/google/android/gm/provider/k;->bcZ:Landroid/content/Loader;

    invoke-virtual {v1}, Landroid/content/Loader;->getId()I

    move-result v1

    new-instance v2, Lcom/google/android/gm/provider/l;

    invoke-direct {v2, p0, v7}, Lcom/google/android/gm/provider/l;-><init>(Lcom/google/android/gm/provider/k;B)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Loader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 72
    new-instance v0, Lcom/google/android/gm/provider/r;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gm/provider/r;-><init>(Lcom/google/android/gm/provider/k;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/k;->bda:Lcom/google/android/gm/provider/r;

    .line 73
    iget-object v0, p0, Lcom/google/android/gm/provider/k;->bda:Lcom/google/android/gm/provider/r;

    iget-object v1, p0, Lcom/google/android/gm/provider/k;->bcZ:Landroid/content/Loader;

    invoke-virtual {v1}, Landroid/content/Loader;->getId()I

    move-result v1

    new-instance v2, Lcom/google/android/gm/provider/o;

    invoke-direct {v2, p0, v7}, Lcom/google/android/gm/provider/o;-><init>(Lcom/google/android/gm/provider/k;B)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/r;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 74
    iput-object p5, p0, Lcom/google/android/gm/provider/k;->bbE:Lcom/google/android/gm/provider/MailEngine;

    .line 75
    invoke-virtual {p5}, Lcom/google/android/gm/provider/MailEngine;->FX()Lcom/google/android/gm/provider/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/k;->bdb:Lcom/google/android/gm/provider/g;

    .line 77
    iput-object v4, p0, Lcom/google/android/gm/provider/k;->bdc:Lcom/google/android/gm/provider/m;

    .line 78
    iput-boolean v7, p0, Lcom/google/android/gm/provider/k;->cF:Z

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/provider/k;)Lcom/google/android/gm/provider/g;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gm/provider/k;->bdb:Lcom/google/android/gm/provider/g;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gm/provider/k;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gm/provider/k;->bcY:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gm/provider/k;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gm/provider/k;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gm/provider/k;)J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/google/android/gm/provider/k;->aPP:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/gm/provider/k;)V
    .locals 6

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gm/provider/k;->bdc:Lcom/google/android/gm/provider/m;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gm/provider/k;->mW:Ljava/lang/String;

    const-string v1, "ASL deliver results for conversation %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/android/gm/provider/k;->aPP:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/gm/provider/k;->bdc:Lcom/google/android/gm/provider/m;

    invoke-interface {v0}, Lcom/google/android/gm/provider/m;->DT()V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/google/android/gm/provider/k;)Lcom/google/android/gm/provider/r;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gm/provider/k;->bda:Lcom/google/android/gm/provider/r;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gm/provider/k;)Lcom/google/android/gm/provider/MailEngine;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gm/provider/k;->bbE:Lcom/google/android/gm/provider/MailEngine;

    return-object v0
.end method

.method static synthetic km()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/gm/provider/k;->mW:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gm/provider/m;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 82
    iput-object p1, p0, Lcom/google/android/gm/provider/k;->bdc:Lcom/google/android/gm/provider/m;

    .line 83
    iget-boolean v0, p0, Lcom/google/android/gm/provider/k;->cF:Z

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    sget-object v0, Lcom/google/android/gm/provider/k;->mW:Ljava/lang/String;

    const-string v1, "ASL start for conversation %d"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/android/gm/provider/k;->aPP:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 85
    iget-object v0, p0, Lcom/google/android/gm/provider/k;->bcZ:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->startLoading()V

    .line 86
    iput-boolean v6, p0, Lcom/google/android/gm/provider/k;->cF:Z

    goto :goto_0
.end method

.method public final stop()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 90
    iget-boolean v0, p0, Lcom/google/android/gm/provider/k;->cF:Z

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 91
    :cond_0
    sget-object v0, Lcom/google/android/gm/provider/k;->mW:Ljava/lang/String;

    const-string v1, "ASL stop for conversation %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/gm/provider/k;->aPP:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/ad;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 92
    iput-boolean v6, p0, Lcom/google/android/gm/provider/k;->cF:Z

    .line 93
    iget-object v0, p0, Lcom/google/android/gm/provider/k;->bcZ:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->stopLoading()V

    .line 94
    iget-object v0, p0, Lcom/google/android/gm/provider/k;->bcZ:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->reset()V

    .line 95
    iget-object v0, p0, Lcom/google/android/gm/provider/k;->bda:Lcom/google/android/gm/provider/r;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/r;->stopLoading()V

    .line 96
    iget-object v0, p0, Lcom/google/android/gm/provider/k;->bda:Lcom/google/android/gm/provider/r;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/r;->reset()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/k;->bdc:Lcom/google/android/gm/provider/m;

    goto :goto_0
.end method
