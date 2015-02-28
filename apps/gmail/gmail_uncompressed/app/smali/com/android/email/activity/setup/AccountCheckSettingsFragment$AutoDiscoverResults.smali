.class public Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;
.super Lcom/android/emailcommon/mail/MessagingException;
.source "SourceFile"


# instance fields
.field public final mHostAuth:Lcom/android/emailcommon/provider/HostAuth;


# direct methods
.method public constructor <init>(ZLcom/android/emailcommon/provider/HostAuth;)V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 295
    if-eqz p1, :cond_0

    .line 296
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;->mExceptionType:I

    .line 300
    :goto_0
    iput-object p2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 301
    return-void

    .line 298
    :cond_0
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;->mExceptionType:I

    goto :goto_0
.end method
