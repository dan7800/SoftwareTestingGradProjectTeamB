.class final Lcom/android/mail/ui/bg;
.super Lcom/android/mail/ui/ca;
.source "SourceFile"


# instance fields
.field final synthetic aIE:Lcom/android/mail/ui/be;

.field final synthetic aIF:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/be;Ljava/lang/String;Landroid/app/Fragment;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/mail/ui/bg;->aIE:Lcom/android/mail/ui/be;

    iput-object p4, p0, Lcom/android/mail/ui/bg;->aIF:Ljava/lang/Runnable;

    invoke-direct {p0, p2, p3}, Lcom/android/mail/ui/ca;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public final xe()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/mail/ui/bg;->aIE:Lcom/android/mail/ui/be;

    iget-object v1, p0, Lcom/android/mail/ui/bg;->aIF:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/mail/ui/be;->a(Lcom/android/mail/ui/be;Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method
