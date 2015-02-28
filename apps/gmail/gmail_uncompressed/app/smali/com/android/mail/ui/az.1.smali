.class final Lcom/android/mail/ui/az;
.super Lcom/android/mail/ui/ca;
.source "SourceFile"


# instance fields
.field final synthetic aHn:Lcom/android/mail/ui/aw;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/aw;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/mail/ui/az;->aHn:Lcom/android/mail/ui/aw;

    invoke-direct {p0, p2, p3}, Lcom/android/mail/ui/ca;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public final xe()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/mail/ui/az;->aHn:Lcom/android/mail/ui/aw;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mail/ui/aw;->a(Lcom/android/mail/ui/aw;Z)Z

    .line 241
    iget-object v0, p0, Lcom/android/mail/ui/az;->aHn:Lcom/android/mail/ui/aw;

    invoke-static {v0}, Lcom/android/mail/ui/aw;->b(Lcom/android/mail/ui/aw;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/mail/ui/az;->aHn:Lcom/android/mail/ui/aw;

    invoke-static {v0}, Lcom/android/mail/ui/aw;->g(Lcom/android/mail/ui/aw;)V

    .line 244
    :cond_0
    return-void
.end method
