.class final Lcom/android/email/activity/setup/aN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Pm:Lcom/android/email/activity/setup/aK;

.field final synthetic Po:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/aK;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/email/activity/setup/aN;->Pm:Lcom/android/email/activity/setup/aK;

    iput-object p2, p0, Lcom/android/email/activity/setup/aN;->Po:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lcom/android/email/activity/setup/aN;->Pm:Lcom/android/email/activity/setup/aK;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/aK;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/aN;->Po:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    return-void
.end method
