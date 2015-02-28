.class public final Lcom/android/mail/utils/H;
.super Lcom/android/mail/utils/G;
.source "SourceFile"


# instance fields
.field private final cV:Landroid/os/Bundle;


# direct methods
.method public constructor <init>([Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/mail/utils/G;-><init>([Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/android/mail/utils/H;->cV:Landroid/os/Bundle;

    .line 27
    return-void
.end method


# virtual methods
.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/mail/utils/H;->cV:Landroid/os/Bundle;

    return-object v0
.end method
