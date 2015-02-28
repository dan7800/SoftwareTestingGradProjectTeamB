.class final Lcom/android/email/activity/setup/ag;
.super Lcom/android/mail/ui/cp;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mail/ui/cp",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final MR:Z

.field private final Mk:Lcom/android/email/activity/setup/SetupDataFragment;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/email/activity/setup/SetupDataFragment;Z)V
    .locals 0

    .prologue
    .line 478
    invoke-direct {p0, p1}, Lcom/android/mail/ui/cp;-><init>(Landroid/content/Context;)V

    .line 479
    iput-object p2, p0, Lcom/android/email/activity/setup/ag;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    .line 480
    iput-boolean p3, p0, Lcom/android/email/activity/setup/ag;->MR:Z

    .line 481
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/email/activity/setup/SetupDataFragment;ZB)V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/setup/ag;-><init>(Landroid/content/Context;Lcom/android/email/activity/setup/SetupDataFragment;Z)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic O(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 472
    return-void
.end method

.method public final synthetic loadInBackground()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/android/email/activity/setup/ag;->MR:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/ag;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/ad;->a(Landroid/content/Context;Lcom/android/email/activity/setup/SetupDataFragment;)V

    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/ag;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/ag;->Mk:Lcom/android/email/activity/setup/SetupDataFragment;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/ad;->b(Landroid/content/Context;Lcom/android/email/activity/setup/SetupDataFragment;)V

    goto :goto_0
.end method
