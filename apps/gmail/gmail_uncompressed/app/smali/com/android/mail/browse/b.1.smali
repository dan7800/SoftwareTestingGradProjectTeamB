.class final Lcom/android/mail/browse/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic alj:Lcom/android/mail/browse/g;

.field final synthetic alk:Lcom/android/mail/browse/a;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/a;Lcom/android/mail/browse/g;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/mail/browse/b;->alk:Lcom/android/mail/browse/a;

    iput-object p2, p0, Lcom/android/mail/browse/b;->alj:Lcom/android/mail/browse/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/mail/browse/b;->alj:Lcom/android/mail/browse/g;

    invoke-virtual {v0}, Lcom/android/mail/browse/g;->dismiss()V

    .line 195
    return-void
.end method
