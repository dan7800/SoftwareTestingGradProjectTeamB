.class public Lcom/android/mail/browse/GmailConversationProvider;
.super Lcom/android/mail/browse/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/mail/browse/A;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "com.google.android.gm2.conversation.provider"

    return-object v0
.end method
