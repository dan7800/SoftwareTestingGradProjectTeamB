.class final Lcom/android/email/activity/setup/aC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Ph:Lcom/android/email/activity/setup/az;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/az;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/email/activity/setup/aC;->Ph:Lcom/android/email/activity/setup/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 120
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 121
    return-void
.end method
