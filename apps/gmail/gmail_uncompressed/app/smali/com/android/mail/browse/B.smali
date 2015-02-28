.class final Lcom/android/mail/browse/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic amA:Ljava/lang/String;

.field final synthetic amB:Ljava/util/ArrayList;

.field final synthetic amC:Lcom/android/mail/browse/A;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/A;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1644
    iput-object p1, p0, Lcom/android/mail/browse/B;->amC:Lcom/android/mail/browse/A;

    iput-object p2, p0, Lcom/android/mail/browse/B;->amA:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mail/browse/B;->amB:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1648
    :try_start_0
    iget-object v0, p0, Lcom/android/mail/browse/B;->amC:Lcom/android/mail/browse/A;

    invoke-static {v0}, Lcom/android/mail/browse/A;->a(Lcom/android/mail/browse/A;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/browse/B;->amA:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mail/browse/B;->amB:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1652
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 1651
    :catch_1
    move-exception v0

    goto :goto_0
.end method
