.class final Lcom/android/mail/ui/aA;
.super Lcom/android/mail/providers/o;
.source "SourceFile"


# instance fields
.field final synthetic aHn:Lcom/android/mail/ui/aw;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/aw;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/mail/ui/aA;->aHn:Lcom/android/mail/ui/aw;

    invoke-direct {p0}, Lcom/android/mail/providers/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(Lcom/android/mail/providers/Folder;)V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/mail/ui/aA;->aHn:Lcom/android/mail/ui/aw;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/aw;->c(Lcom/android/mail/providers/Folder;)V

    .line 382
    return-void
.end method
