.class final Lcom/android/email/provider/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/utils/ab;


# instance fields
.field final synthetic TL:Lcom/android/email/provider/D;


# direct methods
.method constructor <init>(Lcom/android/email/provider/D;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/email/provider/E;->TL:Lcom/android/email/provider/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ks()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/email/provider/E;->TL:Lcom/android/email/provider/D;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/email/provider/D;->a(Lcom/android/email/provider/D;Z)Z

    .line 56
    return-void
.end method

.method public final kt()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/email/provider/E;->TL:Lcom/android/email/provider/D;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/provider/D;->a(Lcom/android/email/provider/D;Z)Z

    .line 61
    return-void
.end method
