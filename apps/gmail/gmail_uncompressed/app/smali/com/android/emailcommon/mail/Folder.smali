.class public abstract Lcom/android/emailcommon/mail/Folder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    return-void
.end method


# virtual methods
.method public abstract A(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
.end method

.method public abstract C(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
.end method

.method public abstract a(Landroid/content/Context;Lcom/android/emailcommon/mail/Message;Z)V
.end method

.method public abstract a(Lcom/android/emailcommon/mail/Folder$OpenMode;)V
.end method

.method public abstract a([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/f;)V
.end method

.method public abstract a([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/g;)V
.end method

.method public abstract a([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V
.end method

.method public abstract a(JJ)[Lcom/android/emailcommon/mail/Message;
.end method

.method public abstract a(Lcom/android/emailcommon/service/SearchParams;)[Lcom/android/emailcommon/mail/Message;
.end method

.method public abstract exists()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract iX()Lcom/android/emailcommon/mail/Folder$OpenMode;
.end method

.method public abstract iY()V
.end method

.method public abstract iZ()Z
.end method

.method public abstract ja()I
.end method

.method public abstract jb()[Lcom/android/emailcommon/mail/Flag;
.end method

.method public abstract jc()[Lcom/android/emailcommon/mail/Message;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
