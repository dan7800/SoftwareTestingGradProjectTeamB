.class final Lcom/android/email/activity/setup/aB;
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
    .line 106
    iput-object p1, p0, Lcom/android/email/activity/setup/aB;->Ph:Lcom/android/email/activity/setup/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 109
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 110
    return-void
.end method
