.class final Lcom/android/mail/compose/j;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/mail/providers/Message;",
        ">;"
    }
.end annotation


# instance fields
.field private awj:Landroid/content/Intent;

.field final synthetic awk:Lcom/android/mail/compose/g;

.field final synthetic awl:Landroid/net/Uri;

.field final synthetic awm:[Ljava/lang/String;

.field final synthetic awn:I

.field final synthetic awo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mail/compose/g;Landroid/net/Uri;[Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 728
    iput-object p1, p0, Lcom/android/mail/compose/j;->awk:Lcom/android/mail/compose/g;

    iput-object p2, p0, Lcom/android/mail/compose/j;->awl:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mail/compose/j;->awm:[Ljava/lang/String;

    iput p4, p0, Lcom/android/mail/compose/j;->awn:I

    iput-object p5, p0, Lcom/android/mail/compose/j;->awo:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 729
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mail/compose/j;->awk:Lcom/android/mail/compose/g;

    const-class v2, Lcom/android/mail/compose/EmptyService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/mail/compose/j;->awj:Landroid/content/Intent;

    return-void
.end method

.method private varargs sK()Lcom/android/mail/providers/Message;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 739
    iget-object v0, p0, Lcom/android/mail/compose/j;->awk:Lcom/android/mail/compose/g;

    invoke-virtual {v0}, Lcom/android/mail/compose/g;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/compose/j;->awl:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mail/compose/j;->awm:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    .line 741
    if-eqz v1, :cond_0

    .line 743
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 744
    new-instance v3, Lcom/android/mail/providers/Message;

    invoke-direct {v3, v1}, Lcom/android/mail/providers/Message;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 749
    :cond_0
    return-object v3

    .line 746
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 728
    invoke-direct {p0}, Lcom/android/mail/compose/j;->sK()Lcom/android/mail/providers/Message;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 728
    check-cast p1, Lcom/android/mail/providers/Message;

    iget-object v0, p0, Lcom/android/mail/compose/j;->awk:Lcom/android/mail/compose/g;

    iget-object v1, p0, Lcom/android/mail/compose/j;->awj:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/mail/compose/g;->stopService(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/android/mail/compose/j;->awk:Lcom/android/mail/compose/g;

    iput-object p1, v0, Lcom/android/mail/compose/g;->avP:Lcom/android/mail/providers/Message;

    iget-object v0, p0, Lcom/android/mail/compose/j;->awk:Lcom/android/mail/compose/g;

    iget v1, p0, Lcom/android/mail/compose/j;->awn:I

    invoke-static {v0, v1}, Lcom/android/mail/compose/g;->a(Lcom/android/mail/compose/g;I)V

    iget-object v0, p0, Lcom/android/mail/compose/j;->awk:Lcom/android/mail/compose/g;

    iget-object v1, p0, Lcom/android/mail/compose/j;->awo:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/android/mail/compose/g;->b(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/android/mail/compose/j;->awk:Lcom/android/mail/compose/g;

    iget v1, p0, Lcom/android/mail/compose/j;->awn:I

    iget-object v2, p0, Lcom/android/mail/compose/j;->awk:Lcom/android/mail/compose/g;

    invoke-virtual {v2}, Lcom/android/mail/compose/g;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mail/compose/g;->a(ILandroid/content/Intent;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/mail/compose/j;->awk:Lcom/android/mail/compose/g;

    invoke-virtual {v0, v4, v5, v5}, Lcom/android/mail/compose/g;->c(ZZZ)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/mail/compose/j;->awk:Lcom/android/mail/compose/g;

    iget-object v1, p0, Lcom/android/mail/compose/j;->awj:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/mail/compose/g;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 735
    return-void
.end method
