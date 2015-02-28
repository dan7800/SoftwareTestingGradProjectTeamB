.class final Lcom/android/email/activity/setup/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic OG:Lcom/android/email/activity/setup/ak;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/ak;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/email/activity/setup/al;->OG:Lcom/android/email/activity/setup/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 79
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 80
    return-void
.end method
