.class final Lcom/android/mail/compose/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/mail/common/html/parser/t;


# instance fields
.field final synthetic awi:Lcom/android/mail/compose/g;


# direct methods
.method constructor <init>(Lcom/android/mail/compose/g;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/mail/compose/i;->awi:Lcom/android/mail/compose/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final sJ()Lcom/google/android/mail/common/html/parser/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/mail/common/html/parser/s",
            "<",
            "Landroid/text/Spanned;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/mail/compose/i;->awi:Lcom/android/mail/compose/g;

    invoke-virtual {v0}, Lcom/android/mail/compose/g;->ss()Lcom/google/android/mail/common/html/parser/s;

    move-result-object v0

    return-object v0
.end method
