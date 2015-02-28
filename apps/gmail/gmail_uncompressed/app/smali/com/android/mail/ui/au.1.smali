.class public final Lcom/android/mail/ui/au;
.super Landroid/content/AsyncTaskLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/mail/browse/u;",
        ">;"
    }
.end annotation


# static fields
.field private static final aGG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/ui/au;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aGC:Lcom/android/mail/browse/u;

.field private aGD:Z

.field private aGE:Z

.field private aGF:Z

.field private final eM:Landroid/net/Uri;

.field private mClosed:Z

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mail/ui/au;->aGG:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/mail/providers/Account;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 35
    iput-boolean v0, p0, Lcom/android/mail/ui/au;->aGD:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/mail/ui/au;->mClosed:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/mail/ui/au;->aGE:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/mail/ui/au;->aGF:Z

    .line 49
    iput-object p3, p0, Lcom/android/mail/ui/au;->eM:Landroid/net/Uri;

    .line 50
    iput-object p4, p0, Lcom/android/mail/ui/au;->mName:Ljava/lang/String;

    .line 51
    if-eqz p5, :cond_0

    .line 54
    :goto_0
    new-instance v1, Lcom/android/mail/browse/u;

    iget-object v2, p0, Lcom/android/mail/ui/au;->eM:Landroid/net/Uri;

    invoke-direct {v1, p1, v2, v0, p4}, Lcom/android/mail/browse/u;-><init>(Landroid/app/Activity;Landroid/net/Uri;ZLjava/lang/String;)V

    iput-object v1, p0, Lcom/android/mail/ui/au;->aGC:Lcom/android/mail/browse/u;

    .line 56
    return-void

    .line 51
    :cond_0
    const/high16 v0, 0x40000

    invoke-virtual {p2, v0}, Lcom/android/mail/providers/Account;->cy(I)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/mail/ui/au;->aGD:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/au;->aGC:Lcom/android/mail/browse/u;

    invoke-virtual {v0}, Lcom/android/mail/browse/u;->oV()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/au;->aGD:Z

    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/au;->aGC:Lcom/android/mail/browse/u;

    return-object v0
.end method

.method public final onReset()V
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/mail/ui/au;->aGE:Z

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/mail/ui/au;->aGC:Lcom/android/mail/browse/u;

    invoke-virtual {v0}, Lcom/android/mail/browse/u;->disable()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/ui/au;->mClosed:Z

    .line 105
    :cond_0
    return-void
.end method

.method protected final onStartLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-boolean v0, p0, Lcom/android/mail/ui/au;->mClosed:Z

    if-eqz v0, :cond_1

    .line 119
    iput-boolean v1, p0, Lcom/android/mail/ui/au;->mClosed:Z

    .line 120
    iget-object v0, p0, Lcom/android/mail/ui/au;->aGC:Lcom/android/mail/browse/u;

    invoke-virtual {v0}, Lcom/android/mail/browse/u;->oV()V

    .line 131
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/mail/ui/au;->forceLoad()V

    .line 132
    iget-object v0, p0, Lcom/android/mail/ui/au;->aGC:Lcom/android/mail/browse/u;

    invoke-virtual {v0}, Lcom/android/mail/browse/u;->resume()V

    .line 133
    return-void

    .line 125
    :cond_1
    iget-boolean v0, p0, Lcom/android/mail/ui/au;->aGF:Z

    if-eqz v0, :cond_0

    .line 126
    iput-boolean v1, p0, Lcom/android/mail/ui/au;->aGF:Z

    goto :goto_0
.end method

.method protected final onStopLoading()V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/mail/ui/au;->cancelLoad()Z

    .line 138
    iget-object v0, p0, Lcom/android/mail/ui/au;->aGC:Lcom/android/mail/browse/u;

    invoke-virtual {v0}, Lcom/android/mail/browse/u;->pause()V

    .line 139
    return-void
.end method
