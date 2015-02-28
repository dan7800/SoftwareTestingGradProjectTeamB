.class final Lcom/google/android/gm/provider/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gm/provider/aL;


# instance fields
.field final synthetic bjA:Lcom/google/android/gm/provider/MailEngine;

.field final synthetic bjB:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;Landroid/os/ConditionVariable;)V
    .locals 0

    .prologue
    .line 2790
    iput-object p1, p0, Lcom/google/android/gm/provider/an;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iput-object p2, p0, Lcom/google/android/gm/provider/an;->bjB:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final GF()V
    .locals 1

    .prologue
    .line 2793
    iget-object v0, p0, Lcom/google/android/gm/provider/an;->bjB:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 2794
    return-void
.end method
