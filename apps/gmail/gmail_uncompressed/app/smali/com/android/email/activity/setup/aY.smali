.class final Lcom/android/email/activity/setup/aY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic PQ:Lcom/android/email/activity/setup/aX;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/aX;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/email/activity/setup/aY;->PQ:Lcom/android/email/activity/setup/aX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 93
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 94
    return-void
.end method
