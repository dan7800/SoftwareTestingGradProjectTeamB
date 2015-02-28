.class public final Lcom/android/email/service/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/emailcommon/mail/f;


# instance fields
.field private final Ul:J

.field private final Ux:Lcom/android/emailcommon/service/u;

.field final synthetic Uy:Lcom/android/email/service/l;

.field private final mMessageId:J


# direct methods
.method public constructor <init>(Lcom/android/email/service/l;JJLcom/android/emailcommon/service/u;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/email/service/m;->Uy:Lcom/android/email/service/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-wide p2, p0, Lcom/android/email/service/m;->mMessageId:J

    .line 265
    iput-wide p4, p0, Lcom/android/email/service/m;->Ul:J

    .line 266
    iput-object p6, p0, Lcom/android/email/service/m;->Ux:Lcom/android/emailcommon/service/u;

    .line 267
    return-void
.end method


# virtual methods
.method public final b(Lcom/android/emailcommon/mail/Message;)V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public final be(I)V
    .locals 8

    .prologue
    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/android/email/service/m;->Ux:Lcom/android/emailcommon/service/u;

    iget-wide v2, p0, Lcom/android/email/service/m;->mMessageId:J

    iget-wide v4, p0, Lcom/android/email/service/m;->Ul:J

    const/4 v6, 0x1

    move v7, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/emailcommon/service/u;->a(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
