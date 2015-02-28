.class public final Lcom/android/emailcommon/provider/o;
.super Lcom/android/emailcommon/provider/m;
.source "SourceFile"


# static fields
.field public static CONTENT_URI:Landroid/net/Uri;


# direct methods
.method public static lT()V
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "messageChange"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/o;->CONTENT_URI:Landroid/net/Uri;

    .line 100
    return-void
.end method
