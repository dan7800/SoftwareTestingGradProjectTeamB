.class public abstract Lcom/android/email/mail/store/imap/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final QY:Lcom/android/email/mail/store/imap/b;


# instance fields
.field private bQ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/android/email/mail/store/imap/c;

    invoke-direct {v0}, Lcom/android/email/mail/store/imap/c;-><init>()V

    sput-object v0, Lcom/android/email/mail/store/imap/b;->QY:Lcom/android/email/mail/store/imap/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/mail/store/imap/b;->bQ:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/mail/store/imap/b;->bQ:Z

    .line 90
    return-void
.end method

.method protected final isDestroyed()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/email/mail/store/imap/b;->bQ:Z

    return v0
.end method

.method public abstract js()Z
.end method

.method public abstract jt()Z
.end method

.method protected final ju()V
    .locals 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/email/mail/store/imap/b;->bQ:Z

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    return-void
.end method
