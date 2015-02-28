.class final Lcom/android/mail/browse/D;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic amq:Lcom/android/mail/browse/u;


# direct methods
.method public constructor <init>(Lcom/android/mail/browse/u;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1405
    iput-object p1, p0, Lcom/android/mail/browse/D;->amq:Lcom/android/mail/browse/u;

    .line 1406
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1407
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/android/mail/browse/D;->amq:Lcom/android/mail/browse/u;

    invoke-static {v0}, Lcom/android/mail/browse/u;->h(Lcom/android/mail/browse/u;)V

    .line 1414
    return-void
.end method
