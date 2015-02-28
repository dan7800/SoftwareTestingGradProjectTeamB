.class final Lcom/android/email/service/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/emailcommon/mail/g;


# instance fields
.field final synthetic PG:Landroid/content/Context;

.field final synthetic Vq:Lcom/android/emailcommon/provider/g;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/g;)V
    .locals 0

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/android/email/service/s;->PG:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/email/service/s;->Vq:Lcom/android/emailcommon/provider/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final S(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1149
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1150
    const-string v1, "syncServerId"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-object v1, p0, Lcom/android/email/service/s;->PG:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/g;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/email/service/s;->Vq:Lcom/android/emailcommon/provider/g;

    iget-wide v4, v3, Lcom/android/emailcommon/provider/g;->Ln:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1155
    return-void
.end method
