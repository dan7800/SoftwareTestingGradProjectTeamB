.class final Lcom/google/android/gm/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/browse/as;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/mail/providers/Account;J)Lcom/android/mail/browse/ar;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/google/android/gm/browse/j;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gm/browse/j;-><init>(Lcom/android/mail/providers/Account;J)V

    return-object v0
.end method
