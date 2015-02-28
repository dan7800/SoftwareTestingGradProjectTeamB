.class final Lcom/android/email/provider/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/email/provider/F;


# instance fields
.field final synthetic Tm:Lcom/android/email/provider/EmailProvider;

.field final synthetic Tn:Lcom/android/emailcommon/provider/Mailbox;


# direct methods
.method constructor <init>(Lcom/android/email/provider/EmailProvider;Lcom/android/emailcommon/provider/Mailbox;)V
    .locals 0

    .prologue
    .line 5870
    iput-object p1, p0, Lcom/android/email/provider/o;->Tm:Lcom/android/email/provider/EmailProvider;

    iput-object p2, p0, Lcom/android/email/provider/o;->Tn:Lcom/android/emailcommon/provider/Mailbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(JI)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 5874
    invoke-static {v4, p3}, Lcom/android/mail/providers/E;->P(II)I

    move-result v0

    .line 5876
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 5877
    const-string v2, "uiSyncStatus"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5878
    const-string v2, "uiLastSyncResult"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5879
    iget-object v0, p0, Lcom/android/email/provider/o;->Tm:Lcom/android/email/provider/EmailProvider;

    invoke-static {v0}, Lcom/android/email/provider/EmailProvider;->b(Lcom/android/email/provider/EmailProvider;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "Mailbox"

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5881
    iget-object v0, p0, Lcom/android/email/provider/o;->Tm:Lcom/android/email/provider/EmailProvider;

    iget-object v1, p0, Lcom/android/email/provider/o;->Tn:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v2, v1, Lcom/android/emailcommon/provider/Mailbox;->Ln:J

    iget-object v1, p0, Lcom/android/email/provider/o;->Tn:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v4, v1, Lcom/android/emailcommon/provider/Mailbox;->Lq:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/email/provider/EmailProvider;JJ)V

    .line 5882
    return-void
.end method
