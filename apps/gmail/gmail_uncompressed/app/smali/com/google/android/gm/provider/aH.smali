.class final Lcom/google/android/gm/provider/aH;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final bkm:J

.field final synthetic bkn:Lcom/google/android/gm/provider/aG;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/aG;J)V
    .locals 0

    .prologue
    .line 7887
    iput-object p1, p0, Lcom/google/android/gm/provider/aH;->bkn:Lcom/google/android/gm/provider/aG;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 7888
    iput-wide p2, p0, Lcom/google/android/gm/provider/aH;->bkm:J

    .line 7889
    return-void
.end method

.method private varargs ko()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 7893
    iget-object v0, p0, Lcom/google/android/gm/provider/aH;->bkn:Lcom/google/android/gm/provider/aG;

    iget-object v0, v0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->beginTransactionNonExclusive()V

    .line 7895
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gm/provider/aH;->bkm:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 7896
    iget-object v1, p0, Lcom/google/android/gm/provider/aH;->bkn:Lcom/google/android/gm/provider/aG;

    iget-object v1, v1, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "conversations"

    const-string v3, "queryId != 0 AND queryId != ?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7897
    iget-object v1, p0, Lcom/google/android/gm/provider/aH;->bkn:Lcom/google/android/gm/provider/aG;

    iget-object v1, v1, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->bcJ:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "conversation_labels"

    const-string v3, "queryId != 0 AND queryId != ?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7898
    iget-object v0, p0, Lcom/google/android/gm/provider/aH;->bkn:Lcom/google/android/gm/provider/aG;

    iget-object v0, v0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7900
    iget-object v0, p0, Lcom/google/android/gm/provider/aH;->bkn:Lcom/google/android/gm/provider/aG;

    iget-object v0, v0, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    .line 7902
    const/4 v0, 0x0

    return-object v0

    .line 7900
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/aH;->bkn:Lcom/google/android/gm/provider/aG;

    iget-object v1, v1, Lcom/google/android/gm/provider/aG;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->biw:Lcom/google/android/gm/provider/bB;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/bB;->endTransaction()V

    throw v0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7884
    invoke-direct {p0}, Lcom/google/android/gm/provider/aH;->ko()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
