.class final Lcom/android/email/provider/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# instance fields
.field final synthetic Tl:Landroid/content/res/Configuration;

.field final synthetic Tm:Lcom/android/email/provider/EmailProvider;


# direct methods
.method constructor <init>(Lcom/android/email/provider/EmailProvider;Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/android/email/provider/l;->Tm:Lcom/android/email/provider/EmailProvider;

    iput-object p2, p0, Lcom/android/email/provider/l;->Tl:Landroid/content/res/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/email/provider/l;->Tl:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 1057
    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/android/email/provider/l;->Tm:Lcom/android/email/provider/EmailProvider;

    invoke-static {v0}, Lcom/android/email/provider/EmailProvider;->a(Lcom/android/email/provider/EmailProvider;)V

    .line 1060
    :cond_0
    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    .prologue
    .line 1063
    return-void
.end method
