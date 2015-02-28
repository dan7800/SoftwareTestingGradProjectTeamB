.class public final Lcom/google/android/mail/common/html/parser/e;
.super Lcom/google/android/mail/common/html/parser/i;
.source "SourceFile"


# instance fields
.field private final content:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/google/android/mail/common/html/parser/i;-><init>()V

    .line 283
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/e;->content:Ljava/lang/String;

    .line 284
    return-void
.end method


# virtual methods
.method public final We()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/e;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/google/android/mail/common/html/parser/m;)V
    .locals 0

    .prologue
    .line 288
    invoke-interface {p1, p0}, Lcom/google/android/mail/common/html/parser/m;->a(Lcom/google/android/mail/common/html/parser/e;)V

    .line 289
    return-void
.end method
