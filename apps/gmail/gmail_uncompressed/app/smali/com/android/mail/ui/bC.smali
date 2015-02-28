.class final Lcom/android/mail/ui/bC;
.super Lcom/android/mail/providers/o;
.source "SourceFile"


# instance fields
.field final synthetic aJT:Lcom/android/mail/ui/bB;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/bB;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/mail/ui/bC;->aJT:Lcom/android/mail/ui/bB;

    invoke-direct {p0}, Lcom/android/mail/providers/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(Lcom/android/mail/providers/Folder;)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/mail/ui/bC;->aJT:Lcom/android/mail/ui/bB;

    invoke-static {v0, p1}, Lcom/android/mail/ui/bB;->a(Lcom/android/mail/ui/bB;Lcom/android/mail/providers/Folder;)V

    .line 344
    return-void
.end method
