.class final Lcom/android/mail/ui/dx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aOG:Lcom/android/mail/ui/TwoPaneLayout;

.field final synthetic aOH:Z

.field final synthetic aOI:Z

.field final synthetic aOJ:Z


# direct methods
.method constructor <init>(Lcom/android/mail/ui/TwoPaneLayout;ZZZ)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/mail/ui/dx;->aOG:Lcom/android/mail/ui/TwoPaneLayout;

    iput-boolean p2, p0, Lcom/android/mail/ui/dx;->aOH:Z

    iput-boolean p3, p0, Lcom/android/mail/ui/dx;->aOI:Z

    iput-boolean p4, p0, Lcom/android/mail/ui/dx;->aOJ:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 429
    iget-object v4, p0, Lcom/android/mail/ui/dx;->aOG:Lcom/android/mail/ui/TwoPaneLayout;

    iget-boolean v0, p0, Lcom/android/mail/ui/dx;->aOH:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/mail/ui/dx;->aOI:Z

    if-nez v3, :cond_1

    move v3, v1

    :goto_1
    iget-boolean v5, p0, Lcom/android/mail/ui/dx;->aOJ:Z

    if-nez v5, :cond_2

    :goto_2
    invoke-static {v4, v0, v3, v1}, Lcom/android/mail/ui/TwoPaneLayout;->a(Lcom/android/mail/ui/TwoPaneLayout;ZZZ)V

    .line 430
    return-void

    :cond_0
    move v0, v2

    .line 429
    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
