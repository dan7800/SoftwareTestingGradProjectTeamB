.class final Lcom/android/mail/browse/X;
.super Lcom/android/mail/providers/o;
.source "SourceFile"


# instance fields
.field final synthetic aqB:Lcom/android/mail/browse/W;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/W;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/mail/browse/X;->aqB:Lcom/android/mail/browse/W;

    invoke-direct {p0}, Lcom/android/mail/providers/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(Lcom/android/mail/providers/Folder;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/mail/browse/X;->aqB:Lcom/android/mail/browse/W;

    invoke-virtual {v0}, Lcom/android/mail/browse/W;->notifyDataSetChanged()V

    .line 54
    return-void
.end method
