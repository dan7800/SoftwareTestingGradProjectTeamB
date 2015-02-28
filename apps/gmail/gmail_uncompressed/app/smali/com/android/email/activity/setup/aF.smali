.class final Lcom/android/email/activity/setup/aF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Pj:Lcom/android/email/activity/setup/aE;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/aE;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/email/activity/setup/aF;->Pj:Lcom/android/email/activity/setup/aE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 100
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 101
    return-void
.end method
