.class public final Lcom/android/mail/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final aOX:Lcom/android/mail/utils/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/android/mail/utils/d;

    invoke-direct {v0}, Lcom/android/mail/utils/d;-><init>()V

    sput-object v0, Lcom/android/mail/utils/d;->aOX:Lcom/android/mail/utils/d;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getTime()J
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
