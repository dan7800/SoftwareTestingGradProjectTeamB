.class final Lcom/android/mail/ui/settings/b;
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
.field final synthetic PG:Landroid/content/Context;

.field final synthetic aOR:Lcom/android/mail/ui/settings/GeneralPrefsFragment;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/settings/GeneralPrefsFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/mail/ui/settings/b;->aOR:Lcom/android/mail/ui/settings/GeneralPrefsFragment;

    iput-object p2, p0, Lcom/android/mail/ui/settings/b;->PG:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Lcom/android/mail/providers/C;

    iget-object v1, p0, Lcom/android/mail/ui/settings/b;->PG:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/mail/providers/C;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/mail/providers/C;->clearHistory()V

    invoke-virtual {v0}, Lcom/android/mail/providers/C;->qD()V

    const/4 v0, 0x0

    return-object v0
.end method
