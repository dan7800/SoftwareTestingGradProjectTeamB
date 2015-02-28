.class final Lcom/android/mail/ui/V;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/Bundle;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final Hb:Landroid/content/ContentResolver;

.field final synthetic aFj:Lcom/android/mail/ui/S;

.field final aFk:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/S;Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/mail/ui/V;->aFj:Lcom/android/mail/ui/S;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 84
    iput-object p2, p0, Lcom/android/mail/ui/V;->aFk:Landroid/net/Uri;

    .line 85
    iput-object p3, p0, Lcom/android/mail/ui/V;->Hb:Landroid/content/ContentResolver;

    .line 86
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 80
    check-cast p1, [Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/mail/ui/V;->Hb:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/mail/ui/V;->aFk:Landroid/net/Uri;

    const-string v2, "set_current_account"

    iget-object v3, p0, Lcom/android/mail/ui/V;->aFk:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    const/4 v0, 0x0

    return-object v0
.end method
