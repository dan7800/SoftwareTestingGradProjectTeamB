.class final Lcom/android/mail/browse/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic PG:Landroid/content/Context;

.field final synthetic amp:Landroid/net/Uri;

.field final synthetic amq:Lcom/android/mail/browse/u;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/u;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 2172
    iput-object p1, p0, Lcom/android/mail/browse/v;->amq:Lcom/android/mail/browse/u;

    iput-object p2, p0, Lcom/android/mail/browse/v;->PG:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/mail/browse/v;->amp:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2175
    iget-object v0, p0, Lcom/android/mail/browse/v;->PG:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/browse/v;->amp:Landroid/net/Uri;

    sget-object v2, Lcom/android/mail/providers/E;->aCC:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2177
    if-eqz v0, :cond_0

    .line 2178
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2180
    :cond_0
    return-void
.end method
