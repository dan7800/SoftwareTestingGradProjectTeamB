.class public Lcom/android/mail/browse/EmailConversationProvider;
.super Lcom/android/mail/browse/A;
.source "SourceFile"


# static fields
.field private static ary:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/mail/browse/A;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getAuthority()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/android/mail/browse/EmailConversationProvider;->ary:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/android/mail/browse/EmailConversationProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0902e3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/browse/EmailConversationProvider;->ary:Ljava/lang/String;

    .line 34
    :cond_0
    sget-object v0, Lcom/android/mail/browse/EmailConversationProvider;->ary:Ljava/lang/String;

    return-object v0
.end method
