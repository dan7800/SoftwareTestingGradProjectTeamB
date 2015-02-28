.class final Lcom/android/mail/ui/cz;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aMc:Lcom/android/mail/ui/cx;


# direct methods
.method private constructor <init>(Lcom/android/mail/ui/cx;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/mail/ui/cz;->aMc:Lcom/android/mail/ui/cx;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/cx;B)V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/android/mail/ui/cz;-><init>(Lcom/android/mail/ui/cx;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 309
    check-cast p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mail/ui/cz;->aMc:Lcom/android/mail/ui/cx;

    invoke-static {v0}, Lcom/android/mail/ui/cx;->a(Lcom/android/mail/ui/cx;)Lcom/android/mail/providers/z;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/mail/providers/z;->cd(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/mail/ui/cz;->aMc:Lcom/android/mail/ui/cx;

    invoke-static {v0}, Lcom/android/mail/ui/cx;->b(Lcom/android/mail/ui/cx;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/ui/cz;->aMc:Lcom/android/mail/ui/cx;

    invoke-static {v0}, Lcom/android/mail/ui/cx;->a(Lcom/android/mail/ui/cx;)Lcom/android/mail/providers/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mail/providers/z;->qD()V

    iget-object v0, p0, Lcom/android/mail/ui/cz;->aMc:Lcom/android/mail/ui/cx;

    invoke-static {v0}, Lcom/android/mail/ui/cx;->c(Lcom/android/mail/ui/cx;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/mail/ui/cz;->aMc:Lcom/android/mail/ui/cx;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mail/ui/cx;->a(Lcom/android/mail/ui/cx;Z)Z

    return-void
.end method

.method protected final onPreExecute()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/mail/ui/cz;->aMc:Lcom/android/mail/ui/cx;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mail/ui/cx;->a(Lcom/android/mail/ui/cx;Z)Z

    .line 314
    return-void
.end method
