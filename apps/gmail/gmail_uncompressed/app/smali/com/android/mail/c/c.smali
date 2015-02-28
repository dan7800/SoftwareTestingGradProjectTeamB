.class public Lcom/android/mail/c/c;
.super Landroid/content/AsyncTaskLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/mail/c/b",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field protected static final mW:Ljava/lang/String;


# instance fields
.field final Nx:Landroid/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/Loader",
            "<",
            "Lcom/android/mail/c/b",
            "<TT;>;>.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field private final awV:Lcom/android/mail/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/c/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field awW:Lcom/android/mail/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/c/b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private awX:I

.field private eM:Landroid/net/Uri;

.field final eN:[Ljava/lang/String;

.field final eO:Ljava/lang/String;

.field final eP:[Ljava/lang/String;

.field final eQ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/c/c;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Lcom/android/mail/c/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Lcom/android/mail/c/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object v0, p0, Lcom/android/mail/c/c;->eO:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/android/mail/c/c;->eP:[Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/android/mail/c/c;->eQ:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mail/c/c;->awX:I

    .line 63
    if-nez p4, :cond_0

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The factory cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    new-instance v0, Landroid/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    iput-object v0, p0, Lcom/android/mail/c/c;->Nx:Landroid/content/Loader$ForceLoadContentObserver;

    .line 68
    invoke-virtual {p0, p2}, Lcom/android/mail/c/c;->setUri(Landroid/net/Uri;)V

    .line 69
    iput-object p3, p0, Lcom/android/mail/c/c;->eN:[Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/android/mail/c/c;->awV:Lcom/android/mail/c/a;

    .line 71
    return-void
.end method

.method private sY()Lcom/android/mail/c/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/mail/c/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/mail/c/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/c/c;->eM:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mail/c/c;->eN:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mail/c/c;->eO:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mail/c/c;->eP:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mail/c/c;->eQ:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 78
    if-nez v0, :cond_1

    .line 80
    const/4 v0, 0x0

    .line 96
    :cond_0
    :goto_0
    return-object v0

    .line 83
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 84
    iget-object v1, p0, Lcom/android/mail/c/c;->Nx:Landroid/content/Loader$ForceLoadContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/mail/c/c;->i(Landroid/database/Cursor;)Lcom/android/mail/c/b;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/android/mail/c/b;->sX()V

    .line 91
    :try_start_0
    iget v1, p0, Lcom/android/mail/c/c;->awX:I

    if-lez v1, :cond_0

    .line 92
    iget v1, p0, Lcom/android/mail/c/c;->awX:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/mail/c/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mail/c/b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/mail/c/c;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/android/mail/c/b;->close()V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/mail/c/c;->awW:Lcom/android/mail/c/b;

    .line 114
    iput-object p1, p0, Lcom/android/mail/c/c;->awW:Lcom/android/mail/c/b;

    .line 116
    invoke-virtual {p0}, Lcom/android/mail/c/c;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 120
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Lcom/android/mail/c/b;

    invoke-virtual {p0, p1}, Lcom/android/mail/c/c;->a(Lcom/android/mail/c/b;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 174
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mail/c/c;->eM:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 175
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/android/mail/c/c;->eN:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mail/c/c;->eO:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/mail/c/c;->eP:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mail/c/c;->eQ:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mail/c/c;->awW:Lcom/android/mail/c/b;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/mail/c/c;->eM:Landroid/net/Uri;

    return-object v0
.end method

.method protected i(Landroid/database/Cursor;)Lcom/android/mail/c/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lcom/android/mail/c/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lcom/android/mail/c/b;

    iget-object v1, p0, Lcom/android/mail/c/c;->awV:Lcom/android/mail/c/a;

    invoke-direct {v0, p1, v1}, Lcom/android/mail/c/b;-><init>(Landroid/database/Cursor;Lcom/android/mail/c/a;)V

    return-object v0
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/mail/c/c;->sY()Lcom/android/mail/c/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onCanceled(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 35
    check-cast p1, Lcom/android/mail/c/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mail/c/b;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mail/c/b;->close()V

    :cond_0
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 163
    invoke-virtual {p0}, Lcom/android/mail/c/c;->onStopLoading()V

    .line 165
    iget-object v0, p0, Lcom/android/mail/c/c;->awW:Lcom/android/mail/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/c/c;->awW:Lcom/android/mail/c/b;

    invoke-virtual {v0}, Lcom/android/mail/c/b;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/mail/c/c;->awW:Lcom/android/mail/c/b;

    invoke-virtual {v0}, Lcom/android/mail/c/b;->close()V

    .line 168
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/c/c;->awW:Lcom/android/mail/c/b;

    .line 169
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/mail/c/c;->awW:Lcom/android/mail/c/b;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/mail/c/c;->awW:Lcom/android/mail/c/b;

    invoke-virtual {p0, v0}, Lcom/android/mail/c/c;->a(Lcom/android/mail/c/b;)V

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/c/c;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mail/c/c;->awW:Lcom/android/mail/c/b;

    if-nez v0, :cond_2

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/android/mail/c/c;->forceLoad()V

    .line 140
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/mail/c/c;->cancelLoad()Z

    .line 149
    return-void
.end method

.method public final setUri(Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 202
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The uri cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    iput-object p1, p0, Lcom/android/mail/c/c;->eM:Landroid/net/Uri;

    .line 205
    return-void
.end method
