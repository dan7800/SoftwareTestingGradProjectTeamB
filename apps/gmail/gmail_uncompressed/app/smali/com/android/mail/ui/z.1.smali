.class final Lcom/android/mail/ui/z;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aEA:Lcom/android/mail/ui/y;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/y;)V
    .locals 0

    .prologue
    .line 3562
    iput-object p1, p0, Lcom/android/mail/ui/z;->aEA:Lcom/android/mail/ui/y;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3562
    check-cast p1, [Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/mail/ui/z;->aEA:Lcom/android/mail/ui/y;

    iget-object v0, v0, Lcom/android/mail/ui/y;->aEa:Lcom/android/mail/ui/a;

    iget-object v0, v0, Lcom/android/mail/ui/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-object v2
.end method
