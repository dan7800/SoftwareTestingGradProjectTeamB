.class Landroid/support/v4/app/aE;
.super Landroid/support/v4/app/aD;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/support/v4/app/aD;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/NotificationManager;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 147
    return-void
.end method

.method public final a(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3, p4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 154
    return-void
.end method
