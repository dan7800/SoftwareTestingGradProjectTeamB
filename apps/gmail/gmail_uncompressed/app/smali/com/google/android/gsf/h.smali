.class public final Lcom/google/android/gsf/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DELETED_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 233
    const-string v0, "content://subscribedfeeds/feeds"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/h;->CONTENT_URI:Landroid/net/Uri;

    .line 239
    const-string v0, "content://subscribedfeeds/deleted_feeds"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/h;->DELETED_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
