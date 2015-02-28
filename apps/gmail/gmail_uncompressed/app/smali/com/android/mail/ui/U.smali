.class final Lcom/android/mail/ui/U;
.super Lcom/android/mail/providers/o;
.source "SourceFile"


# instance fields
.field final synthetic aFj:Lcom/android/mail/ui/S;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/S;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/mail/ui/U;->aFj:Lcom/android/mail/ui/S;

    invoke-direct {p0}, Lcom/android/mail/providers/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(Lcom/android/mail/providers/Folder;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/mail/ui/U;->aFj:Lcom/android/mail/ui/S;

    invoke-virtual {v0, p1}, Lcom/android/mail/ui/S;->c(Lcom/android/mail/providers/Folder;)V

    .line 145
    return-void
.end method
