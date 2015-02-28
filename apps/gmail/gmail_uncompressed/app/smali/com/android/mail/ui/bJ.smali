.class final Lcom/android/mail/ui/bJ;
.super Lcom/android/mail/providers/y;
.source "SourceFile"


# instance fields
.field final synthetic aKa:Lcom/android/mail/ui/bI;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/bI;)V
    .locals 0

    .prologue
    .line 865
    iput-object p1, p0, Lcom/android/mail/ui/bJ;->aKa:Lcom/android/mail/ui/bI;

    invoke-direct {p0}, Lcom/android/mail/providers/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/mail/ui/bJ;->aKa:Lcom/android/mail/ui/bI;

    invoke-static {v0}, Lcom/android/mail/ui/bI;->a(Lcom/android/mail/ui/bI;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/android/mail/ui/bJ;->aKa:Lcom/android/mail/ui/bI;

    invoke-static {v0}, Lcom/android/mail/ui/bI;->b(Lcom/android/mail/ui/bI;)V

    .line 871
    :cond_0
    return-void
.end method
