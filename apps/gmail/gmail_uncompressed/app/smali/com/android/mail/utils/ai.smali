.class final Lcom/android/mail/utils/ai;
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
.field private final aQT:Z

.field private final arq:Z

.field private final eR:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ZZ)V
    .locals 0

    .prologue
    .line 888
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 889
    iput-object p1, p0, Lcom/android/mail/utils/ai;->eR:Landroid/database/Cursor;

    .line 890
    iput-boolean p2, p0, Lcom/android/mail/utils/ai;->arq:Z

    .line 891
    iput-boolean p3, p0, Lcom/android/mail/utils/ai;->aQT:Z

    .line 892
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 874
    iget-object v0, p0, Lcom/android/mail/utils/ai;->eR:Landroid/database/Cursor;

    if-nez v0, :cond_0

    :goto_0
    return-object v3

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-boolean v1, p0, Lcom/android/mail/utils/ai;->aQT:Z

    if-eqz v1, :cond_1

    const-string v1, "enteredFolder"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    const-string v1, "setVisibility"

    iget-boolean v2, p0, Lcom/android/mail/utils/ai;->arq:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/mail/utils/ai;->eR:Landroid/database/Cursor;

    const-string v2, "setVisibility"

    invoke-static {v1, v0, v2}, Lcom/android/mail/utils/ag;->b(Landroid/database/Cursor;Landroid/os/Bundle;Ljava/lang/String;)Z

    goto :goto_0
.end method
