.class final Lcom/android/email/activity/setup/aS;
.super Lcom/android/emailcommon/b/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/b/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic PA:Lcom/android/email/activity/setup/aQ;

.field final synthetic PB:Z

.field final synthetic PC:I

.field final synthetic PD:Z

.field final synthetic PE:I

.field final synthetic PF:J

.field final synthetic PG:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/aQ;ZIZIJLandroid/content/Context;)V
    .locals 2

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/email/activity/setup/aS;->PA:Lcom/android/email/activity/setup/aQ;

    iput-boolean p2, p0, Lcom/android/email/activity/setup/aS;->PB:Z

    iput p3, p0, Lcom/android/email/activity/setup/aS;->PC:I

    iput-boolean p4, p0, Lcom/android/email/activity/setup/aS;->PD:Z

    iput p5, p0, Lcom/android/email/activity/setup/aS;->PE:I

    iput-wide p6, p0, Lcom/android/email/activity/setup/aS;->PF:J

    iput-object p8, p0, Lcom/android/email/activity/setup/aS;->PG:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/b/g;-><init>(Lcom/android/emailcommon/b/j;)V

    return-void
.end method


# virtual methods
.method protected final synthetic au()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 457
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    iget-boolean v1, p0, Lcom/android/email/activity/setup/aS;->PB:Z

    if-eqz v1, :cond_0

    const-string v1, "syncInterval"

    iget v2, p0, Lcom/android/email/activity/setup/aS;->PC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/email/activity/setup/aS;->PD:Z

    if-eqz v1, :cond_1

    const-string v1, "syncLookback"

    iget v2, p0, Lcom/android/email/activity/setup/aS;->PE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/email/activity/setup/aS;->PF:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/aS;->PG:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v0, Lcom/android/emailcommon/b;->mW:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Saved: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v4
.end method
