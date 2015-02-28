.class final Lcom/android/mail/browse/H;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic amO:Lcom/android/mail/browse/F;


# direct methods
.method public constructor <init>(Lcom/android/mail/browse/F;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/android/mail/browse/H;->amO:Lcom/android/mail/browse/F;

    .line 337
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 338
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/mail/browse/H;->amO:Lcom/android/mail/browse/F;

    invoke-static {v0}, Lcom/android/mail/browse/F;->f(Lcom/android/mail/browse/F;)Z

    .line 346
    return-void
.end method
