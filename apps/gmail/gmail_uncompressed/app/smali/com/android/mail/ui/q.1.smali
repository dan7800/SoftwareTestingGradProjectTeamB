.class final Lcom/android/mail/ui/q;
.super Lcom/android/mail/utils/e;
.source "SourceFile"


# instance fields
.field final synthetic aEa:Lcom/android/mail/ui/a;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/a;)V
    .locals 0

    .prologue
    .line 1852
    iput-object p1, p0, Lcom/android/mail/ui/q;->aEa:Lcom/android/mail/ui/a;

    invoke-direct {p0}, Lcom/android/mail/utils/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1852
    check-cast p1, Lcom/android/mail/utils/f;

    iget-object v0, p1, Lcom/android/mail/utils/f;->aOZ:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/mail/utils/f;->aOZ:Ljava/lang/Exception;

    const-string v2, "ContentProviderTask() ERROR."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/mail/ui/a;->mW:Ljava/lang/String;

    const-string v1, "ContentProviderTask(): success %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/android/mail/utils/f;->aPa:[Landroid/content/ContentProviderResult;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
