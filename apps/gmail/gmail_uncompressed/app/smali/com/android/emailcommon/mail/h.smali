.class public abstract Lcom/android/emailcommon/mail/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/emailcommon/mail/c;


# instance fields
.field protected Lp:Ljava/lang/String;

.field protected Xs:Lcom/android/emailcommon/mail/j;

.field protected Xt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/mail/h;->Xt:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/emailcommon/mail/d;)V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/emailcommon/mail/h;->Xt:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public final bg(I)Lcom/android/emailcommon/mail/d;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/emailcommon/mail/h;->Xt:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/d;

    return-object v0
.end method

.method public final c(Lcom/android/emailcommon/mail/j;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/emailcommon/mail/h;->Xs:Lcom/android/emailcommon/mail/j;

    .line 62
    return-void
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/emailcommon/mail/h;->Lp:Ljava/lang/String;

    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/emailcommon/mail/h;->Xt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
